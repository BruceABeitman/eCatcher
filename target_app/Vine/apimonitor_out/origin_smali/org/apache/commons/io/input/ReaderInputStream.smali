.class public Lorg/apache/commons/io/input/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x400


# instance fields
.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final encoderIn:Ljava/nio/CharBuffer;

.field private final encoderOut:Ljava/nio/ByteBuffer;

.field private endOfInput:Z

.field private lastCoderResult:Ljava/nio/charset/CoderResult;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .registers 3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .registers 6

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;)V
    .registers 4

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/io/input/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iput-object p2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method private fillBuffer()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-nez v2, :cond_38

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    invoke-virtual {v2}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v2

    if-eqz v2, :cond_38

    :cond_10
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->remaining()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_51

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    :goto_33
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    :cond_38
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    iget-object v4, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    iget-boolean v5, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->lastCoderResult:Ljava/nio/charset/CoderResult;

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void

    :cond_51
    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderIn:Ljava/nio/CharBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_33
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    :goto_10
    return v0

    :cond_11
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    iget-boolean v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/io/input/ReaderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_a

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Byte array must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    if-ltz p3, :cond_13

    if-ltz p2, :cond_13

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_41

    :cond_13
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Array Size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", offset="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_41
    const/4 v1, 0x0

    if-nez p3, :cond_46

    const/4 v2, 0x0

    :goto_45
    return v2

    :cond_46
    :goto_46
    if-lez p3, :cond_72

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    add-int/2addr v1, v0

    goto :goto_46

    :cond_63
    invoke-direct {p0}, Lorg/apache/commons/io/input/ReaderInputStream;->fillBuffer()V

    iget-boolean v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v2, :cond_46

    iget-object v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->encoderOut:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_46

    :cond_72
    if-nez v1, :cond_7a

    iget-boolean v2, p0, Lorg/apache/commons/io/input/ReaderInputStream;->endOfInput:Z

    if-eqz v2, :cond_7a

    const/4 v2, -0x1

    goto :goto_45

    :cond_7a
    move v2, v1

    goto :goto_45
.end method
