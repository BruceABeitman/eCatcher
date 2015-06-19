.class public final Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
.super Ljava/lang/Object;
.source "JsonStringEncoder.java"


# static fields
.field private static final HEX_BYTES:[B = null

.field private static final HEX_CHARS:[C = null

.field private static final INT_0:I = 0x30

.field private static final INT_BACKSLASH:I = 0x5c

.field private static final INT_U:I = 0x75

.field private static final SURR1_FIRST:I = 0xd800

.field private static final SURR1_LAST:I = 0xdbff

.field private static final SURR2_FIRST:I = 0xdc00

.field private static final SURR2_LAST:I = 0xdfff

.field protected static final _threadEncoder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/fasterxml/jackson/core/io/JsonStringEncoder;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field protected _byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

.field protected final _quoteBuffer:[C

.field protected _textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexChars()[C

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->copyHexBytes()[B

    move-result-object v0

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/16 v3, 0x30

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x0

    const/16 v2, 0x5c

    aput-char v2, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x2

    aput-char v3, v0, v1

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    const/4 v1, 0x3

    aput-char v3, v0, v1

    return-void
.end method

.method private _appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I
    .registers 8

    const/16 v1, 0x30

    invoke-virtual {p3, p4}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->setCurrentSegmentLength(I)V

    const/16 v0, 0x5c

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    if-gez p2, :cond_49

    const/16 v0, 0x75

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    const/16 v0, 0xff

    if-le p1, v0, :cond_42

    shr-int/lit8 v0, p1, 0x8

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v2, v0, 0x4

    aget-byte v1, v1, v2

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v0, v0, 0xf

    aget-byte v0, v1, v0

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    and-int/lit16 p1, p1, 0xff

    :goto_2b
    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    shr-int/lit8 v1, p1, 0x4

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_BYTES:[B

    and-int/lit8 v1, p1, 0xf

    aget-byte v0, v0, v1

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    :goto_3d
    invoke-virtual {p3}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegmentLength()I

    move-result v0

    return v0

    :cond_42
    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_2b

    :cond_49
    int-to-byte v0, p2

    invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->append(I)V

    goto :goto_3d
.end method

.method private _appendNamedEscape(I[C)I
    .registers 5

    const/4 v0, 0x1

    int-to-char v1, p1

    aput-char v1, p2, v0

    const/4 v0, 0x2

    return v0
.end method

.method private _appendNumericEscape(I[C)I
    .registers 6

    const/4 v0, 0x1

    const/16 v1, 0x75

    aput-char v1, p2, v0

    const/4 v0, 0x4

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    const/4 v0, 0x5

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->HEX_CHARS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, p2, v0

    const/4 v0, 0x6

    return v0
.end method

.method protected static _convertSurrogate(II)I
    .registers 5

    const v2, 0xdc00

    if-lt p1, v2, :cond_a

    const v0, 0xdfff

    if-le p1, v0, :cond_3b

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", second 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; illegal combination"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    const/high16 v0, 0x1

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    sub-int v1, p1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected static _illegalSurrogate(I)V
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Lcom/fasterxml/jackson/core/io/UTF8Writer;->illegalSurrogateDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance()Lcom/fasterxml/jackson/core/io/JsonStringEncoder;
    .registers 3

    sget-object v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    :goto_b
    if-nez v0, :cond_1c

    new-instance v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;-><init>()V

    sget-object v1, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_threadEncoder:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;

    goto :goto_b
.end method


# virtual methods
.method public encodeAsUTF8(Ljava/lang/String;)[B
    .registers 13

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    if-nez v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    :cond_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v3

    array-length v2, v3

    move v1, v4

    move v6, v4

    :goto_18
    if-ge v6, v9, :cond_f6

    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v10, v2

    move-object v2, v3

    move v3, v1

    move v1, v10

    :goto_24
    const/16 v5, 0x7f

    if-gt v6, v5, :cond_48

    if-lt v3, v1, :cond_30

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v3, v4

    :cond_30
    add-int/lit8 v5, v3, 0x1

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    if-lt v7, v9, :cond_3f

    move v0, v5

    :goto_38
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v0

    return-object v0

    :cond_3f
    add-int/lit8 v3, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v3

    move v3, v5

    goto :goto_24

    :cond_48
    if-lt v3, v1, :cond_f3

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v5, v4

    :goto_50
    const/16 v3, 0x800

    if-ge v6, v3, :cond_74

    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    move v5, v6

    move v6, v7

    :goto_5f
    if-lt v3, v1, :cond_67

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v3, v4

    :cond_67
    add-int/lit8 v7, v3, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v2, v3

    move-object v3, v2

    move v2, v1

    move v1, v7

    goto :goto_18

    :cond_74
    const v3, 0xd800

    if-lt v6, v3, :cond_7e

    const v3, 0xdfff

    if-le v6, v3, :cond_9e

    :cond_7e
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v8, v6, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v2, v5

    if-lt v3, v1, :cond_8f

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v3, v4

    :cond_8f
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v8, v6, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v2, v3

    move v3, v5

    move v5, v6

    move v6, v7

    goto :goto_5f

    :cond_9e
    const v3, 0xdbff

    if-le v6, v3, :cond_a6

    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_a6
    if-lt v7, v9, :cond_ab

    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_ab
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v6, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v6

    const v3, 0x10ffff

    if-le v6, v3, :cond_bd

    invoke-static {v6}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_bd
    add-int/lit8 v3, v5, 0x1

    shr-int/lit8 v7, v6, 0x12

    or-int/lit16 v7, v7, 0xf0

    int-to-byte v7, v7

    aput-byte v7, v2, v5

    if-lt v3, v1, :cond_ce

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v3, v4

    :cond_ce
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    if-lt v5, v1, :cond_f1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    array-length v1, v2

    move v3, v4

    :goto_e1
    add-int/lit8 v5, v3, 0x1

    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v2, v3

    move v3, v5

    move v5, v6

    move v6, v8

    goto/16 :goto_5f

    :cond_f1
    move v3, v5

    goto :goto_e1

    :cond_f3
    move v5, v3

    goto/16 :goto_50

    :cond_f6
    move v0, v1

    goto/16 :goto_38
.end method

.method public quoteAsString(Ljava/lang/String;)[C
    .registers 13

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    if-nez v0, :cond_d

    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_textBuffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    :cond_d
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->emptyAndGetCurrentSegment()[C

    move-result-object v3

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    array-length v7, v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    move v1, v5

    move v2, v5

    :goto_1c
    if-ge v2, v8, :cond_63

    :cond_1e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v7, :cond_53

    aget v4, v6, v9

    if-eqz v4, :cond_53

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget v9, v6, v2

    if-gez v9, :cond_6b

    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v2, v9}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNumericEscape(I[C)I

    move-result v2

    :goto_38
    add-int v9, v1, v2

    array-length v10, v3

    if-le v9, v10, :cond_72

    array-length v9, v3

    sub-int/2addr v9, v1

    if-lez v9, :cond_46

    iget-object v10, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v10, v5, v3, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_46
    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    sub-int v1, v2, v9

    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v2, v9, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_51
    move v2, v4

    goto :goto_1c

    :cond_53
    array-length v4, v3

    if-lt v1, v4, :cond_79

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->finishCurrentSegment()[C

    move-result-object v3

    move v4, v5

    :goto_5b
    add-int/lit8 v1, v4, 0x1

    aput-char v9, v3, v4

    add-int/lit8 v2, v2, 0x1

    if-lt v2, v8, :cond_1e

    :cond_63
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->setCurrentLength(I)V

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsArray()[C

    move-result-object v0

    return-object v0

    :cond_6b
    iget-object v2, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-direct {p0, v9, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendNamedEscape(I[C)I

    move-result v2

    goto :goto_38

    :cond_72
    iget-object v9, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_quoteBuffer:[C

    invoke-static {v9, v5, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    goto :goto_51

    :cond_79
    move v4, v1

    goto :goto_5b
.end method

.method public quoteAsUTF8(Ljava/lang/String;)[B
    .registers 13

    const/16 v9, 0x7f

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    if-nez v0, :cond_f

    new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    :cond_f
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->resetAndGetFirstSegment()[B

    move-result-object v1

    move v2, v5

    move v3, v5

    :goto_19
    if-ge v3, v7, :cond_56

    invoke-static {}, Lcom/fasterxml/jackson/core/io/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v6

    :cond_1f
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v9, :cond_29

    aget v4, v6, v8

    if-eqz v4, :cond_45

    :cond_29
    array-length v4, v1

    if-lt v2, v4, :cond_31

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    :cond_31
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-gt v8, v9, :cond_5d

    aget v1, v6, v8

    invoke-direct {p0, v8, v1, v0, v2}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_appendByteEscape(IILcom/fasterxml/jackson/core/util/ByteArrayBuilder;I)I

    move-result v2

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->getCurrentSegment()[B

    move-result-object v1

    move v3, v4

    goto :goto_19

    :cond_45
    array-length v4, v1

    if-lt v2, v4, :cond_10e

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v4, v5

    :goto_4d
    add-int/lit8 v2, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v1, v4

    add-int/lit8 v3, v3, 0x1

    if-lt v3, v7, :cond_1f

    :cond_56
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->completeAndCoalesce(I)[B

    move-result-object v0

    return-object v0

    :cond_5d
    const/16 v3, 0x7ff

    if-gt v8, v3, :cond_82

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    :goto_71
    array-length v6, v2

    if-lt v3, v6, :cond_79

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v2

    move v3, v5

    :cond_79
    add-int/lit8 v6, v3, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    move-object v1, v2

    move v3, v4

    move v2, v6

    goto :goto_19

    :cond_82
    const v3, 0xd800

    if-lt v8, v3, :cond_8c

    const v3, 0xdfff

    if-le v8, v3, :cond_b0

    :cond_8c
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0xc

    or-int/lit16 v6, v6, 0xe0

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    array-length v2, v1

    if-lt v3, v2, :cond_10c

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    :goto_9d
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v6, v8, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/lit16 v6, v6, 0x80

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    and-int/lit8 v2, v8, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v10, v2

    move-object v2, v1

    move v1, v10

    goto :goto_71

    :cond_b0
    const v3, 0xdbff

    if-le v8, v3, :cond_b8

    invoke-static {v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_b8
    if-lt v4, v7, :cond_bd

    invoke-static {v8}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_bd
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v8, v3}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_convertSurrogate(II)I

    move-result v4

    const v3, 0x10ffff

    if-le v4, v3, :cond_cf

    invoke-static {v4}, Lcom/fasterxml/jackson/core/io/JsonStringEncoder;->_illegalSurrogate(I)V

    :cond_cf
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    array-length v2, v1

    if-lt v3, v2, :cond_10a

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    :goto_e0
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    array-length v2, v1

    if-lt v3, v2, :cond_108

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->finishCurrentSegment()[B

    move-result-object v1

    move v2, v5

    :goto_f3
    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v2

    and-int/lit8 v2, v4, 0x3f

    or-int/lit16 v2, v2, 0x80

    move v4, v6

    move-object v10, v1

    move v1, v2

    move-object v2, v10

    goto/16 :goto_71

    :cond_108
    move v2, v3

    goto :goto_f3

    :cond_10a
    move v2, v3

    goto :goto_e0

    :cond_10c
    move v2, v3

    goto :goto_9d

    :cond_10e
    move v4, v2

    goto/16 :goto_4d
.end method
