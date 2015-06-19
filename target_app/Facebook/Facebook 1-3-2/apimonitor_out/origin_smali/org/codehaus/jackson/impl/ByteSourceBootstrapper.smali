.class public final Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;
    }
.end annotation


# instance fields
.field _bigEndian:Z

.field private final _bufferRecyclable:Z

.field _bytesPerChar:I

.field final _context:Lorg/codehaus/jackson/io/IOContext;

.field final _in:Ljava/io/InputStream;

.field final _inputBuffer:[B

.field private _inputEnd:I

.field protected _inputProcessed:I

.field private _inputPtr:I


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    invoke-virtual {p1}, Lorg/codehaus/jackson/io/IOContext;->allocReadIOBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/io/IOContext;[BII)V
    .registers 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-object p1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iput p3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int v0, p3, p4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    neg-int v0, p3

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputProcessed:I

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    return-void
.end method

.method private checkUTF16(I)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0xff00

    and-int/2addr v0, p1

    if-nez v0, :cond_f

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    :goto_a
    const/4 v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v2

    :goto_e
    return v0

    :cond_f
    and-int/lit16 v0, p1, 0xff

    if-nez v0, :cond_16

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_a

    :cond_16
    move v0, v1

    goto :goto_e
.end method

.method private checkUTF32(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    shr-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_d

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    :goto_8
    const/4 v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v2

    :goto_c
    return v0

    :cond_d
    const v0, 0xffffff

    and-int/2addr v0, p1

    if-nez v0, :cond_16

    iput-boolean v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    goto :goto_8

    :cond_16
    const v0, -0xff0001

    and-int/2addr v0, p1

    if-nez v0, :cond_22

    const-string v0, "3412"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_8

    :cond_22
    const v0, -0xff01

    and-int/2addr v0, p1

    if-nez v0, :cond_2e

    const-string v0, "2143"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_8

    :cond_2e
    move v0, v1

    goto :goto_c
.end method

.method private handleBOM(I)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_64

    :goto_7
    ushr-int/lit8 v0, p1, 0x10

    const v1, 0xfeff

    if-ne v0, v1, :cond_3d

    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v0, v2

    :goto_19
    return v0

    :sswitch_1a
    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    move v0, v2

    goto :goto_19

    :sswitch_26
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v0, v2

    goto :goto_19

    :sswitch_32
    const-string v0, "2143"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    :sswitch_37
    const-string v0, "3412"

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->reportWeirdUCS4(Ljava/lang/String;)V

    goto :goto_7

    :cond_3d
    const v1, 0xfffe

    if-ne v0, v1, :cond_4e

    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-boolean v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v0, v2

    goto :goto_19

    :cond_4e
    ushr-int/lit8 v0, p1, 0x8

    const v1, 0xefbbbf

    if-ne v0, v1, :cond_61

    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    iput-boolean v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    move v0, v2

    goto :goto_19

    :cond_61
    move v0, v3

    goto :goto_19

    nop

    :sswitch_data_64
    .sparse-switch
        -0x1010000 -> :sswitch_37
        -0x20000 -> :sswitch_26
        0xfeff -> :sswitch_1a
        0xfffe -> :sswitch_32
    .end sparse-switch
.end method

.method private reportWeirdUCS4(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/CharConversionException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported UCS-4 endianness ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") detected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public constructParser(ILorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)Lorg/codehaus/jackson/JsonParser;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->detectEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v0

    sget-object v1, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    if-ne v0, v1, :cond_20

    new-instance v0, Lorg/codehaus/jackson/impl/Utf8StreamParser;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    invoke-virtual {p3}, Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;->makeChild()Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;

    move-result-object v5

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v7, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v8, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-boolean v9, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bufferRecyclable:Z

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v9}, Lorg/codehaus/jackson/impl/Utf8StreamParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/InputStream;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/BytesToNameCanonicalizer;[BIIZ)V

    :goto_1f
    return-object v0

    :cond_20
    new-instance v0, Lorg/codehaus/jackson/impl/ReaderBasedParser;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {p0}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->constructReader()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {p4}, Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;->makeChild()Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;

    move-result-object v5

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/impl/ReaderBasedParser;-><init>(Lorg/codehaus/jackson/io/IOContext;ILjava/io/Reader;Lorg/codehaus/jackson/ObjectCodec;Lorg/codehaus/jackson/sym/CharsToNameCanonicalizer;)V

    goto :goto_1f
.end method

.method public constructReader()Ljava/io/Reader;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v0}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    sget-object v0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper$1;->$SwitchMap$org$codehaus$jackson$JsonEncoding:[I

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_6c

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_19
    new-instance v0, Lorg/codehaus/jackson/io/UTF32Reader;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v6, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v6}, Lorg/codehaus/jackson/io/IOContext;->getEncoding()Lorg/codehaus/jackson/JsonEncoding;

    move-result-object v6

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->isBigEndian()Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lorg/codehaus/jackson/io/UTF32Reader;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BIIZ)V

    :goto_32
    return-object v0

    :pswitch_33
    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v2, :cond_4d

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    :goto_42
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {v6}, Lorg/codehaus/jackson/JsonEncoding;->getJavaName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_32

    :cond_4d
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    if-ge v0, v1, :cond_69

    new-instance v0, Lorg/codehaus/jackson/io/MergedStream;

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    iget-object v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    invoke-direct/range {v0 .. v5}, Lorg/codehaus/jackson/io/MergedStream;-><init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V

    goto :goto_42

    :pswitch_61
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error: should be using Utf8StreamParser directly"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_69
    move-object v0, v2

    goto :goto_42

    nop

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_19
        :pswitch_19
        :pswitch_33
        :pswitch_33
        :pswitch_61
    .end packed-switch
.end method

.method public detectEncoding()Lorg/codehaus/jackson/JsonEncoding;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/codehaus/jackson/JsonParseException;
        }
    .end annotation

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, v6}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_5a

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->handleBOM(I)Z

    move-result v2

    if-eqz v2, :cond_48

    move v0, v4

    :cond_3e
    :goto_3e
    if-nez v0, :cond_7d

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF8:Lorg/codehaus/jackson/JsonEncoding;

    :goto_42
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_context:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->setEncoding(Lorg/codehaus/jackson/JsonEncoding;)V

    return-object v0

    :cond_48
    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF32(I)Z

    move-result v2

    if-eqz v2, :cond_50

    move v0, v4

    goto :goto_3e

    :cond_50
    ushr-int/lit8 v1, v1, 0x10

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v4

    goto :goto_3e

    :cond_5a
    invoke-virtual {p0, v5}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->ensureLoaded(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    invoke-direct {p0, v1}, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->checkUTF16(I)Z

    move-result v1

    if-eqz v1, :cond_3e

    move v0, v4

    goto :goto_3e

    :cond_7d
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v0, v5, :cond_8b

    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v0, :cond_88

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_42

    :cond_88
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF16_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_42

    :cond_8b
    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bytesPerChar:I

    if-ne v0, v6, :cond_99

    iget-boolean v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_bigEndian:Z

    if-eqz v0, :cond_96

    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_BE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_42

    :cond_96
    sget-object v0, Lorg/codehaus/jackson/JsonEncoding;->UTF32_LE:Lorg/codehaus/jackson/JsonEncoding;

    goto :goto_42

    :cond_99
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Internal error"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected ensureLoaded(I)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x1

    iget v0, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputPtr:I

    sub-int/2addr v0, v1

    :goto_6
    if-ge v0, p1, :cond_29

    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    if-nez v1, :cond_11

    const/4 v1, -0x1

    :goto_d
    if-ge v1, v6, :cond_22

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    iget-object v1, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_in:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    iget v3, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    iget-object v4, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputBuffer:[B

    array-length v4, v4

    iget v5, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_d

    :cond_22
    iget v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/codehaus/jackson/impl/ByteSourceBootstrapper;->_inputEnd:I

    add-int/2addr v0, v1

    goto :goto_6

    :cond_29
    move v0, v6

    goto :goto_10
.end method
