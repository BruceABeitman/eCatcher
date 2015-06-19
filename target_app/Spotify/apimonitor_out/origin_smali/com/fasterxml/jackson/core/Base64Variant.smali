.class public final Lcom/fasterxml/jackson/core/Base64Variant;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient _asciiToBase64:[I

.field private final transient _base64ToAsciiB:[B

.field private final transient _base64ToAsciiC:[C

.field protected final transient _maxLineLength:I

.field protected final _name:Ljava/lang/String;

.field protected final transient _paddingChar:C

.field protected final transient _usesPadding:Z


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;I)V
    .registers 10

    iget-boolean v3, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iget-char v4, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/core/Base64Variant;-><init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/lang/String;ZCI)V
    .registers 10

    const/16 v1, 0x40

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    new-array v0, v1, [C

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    iput-object p2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iget-object v0, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZCI)V
    .registers 11

    const/16 v2, 0x40

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x80

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    new-array v1, v2, [B

    iput-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    iput-object p1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    iput-char p4, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    iput p5, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_3d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Base64Alphabet length must be exactly 64 (was "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    invoke-virtual {p2, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    :goto_48
    if-ge v0, v1, :cond_5a

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    aget-char v2, v2, v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    int-to-byte v4, v2

    aput-byte v4, v3, v0

    iget-object v3, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aput v0, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_48

    :cond_5a
    if-eqz p3, :cond_61

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    const/4 v1, -0x2

    aput v1, v0, p4

    :cond_61
    return-void
.end method


# virtual methods
.method public final decodeBase64Char(C)I
    .registers 3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public final decodeBase64Char(I)I
    .registers 3

    const/16 v0, 0x7f

    if-gt p1, v0, :cond_9

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_asciiToBase64:[I

    aget v0, v0, p1

    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public final encode([BZ)Ljava/lang/String;
    .registers 11

    const/16 v7, 0x22

    array-length v3, p1

    shr-int/lit8 v0, v3, 0x2

    add-int/2addr v0, v3

    shr-int/lit8 v1, v3, 0x3

    add-int/2addr v0, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_13

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v1, v0, 0x2

    const/4 v0, 0x0

    add-int/lit8 v5, v3, -0x3

    move v2, v1

    :goto_1d
    if-gt v0, v5, :cond_4f

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v6, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v0, v6

    invoke-virtual {p0, v4, v0}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Chunk(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v0, v2, -0x1

    if-gtz v0, :cond_4c

    const/16 v0, 0x5c

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x6e

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/Base64Variant;->getMaxLineLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    :cond_4c
    move v2, v0

    move v0, v1

    goto :goto_1d

    :cond_4f
    sub-int v1, v3, v0

    if-lez v1, :cond_66

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x10

    const/4 v3, 0x2

    if-ne v1, v3, :cond_63

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    :cond_63
    invoke-virtual {p0, v4, v0, v1}, Lcom/fasterxml/jackson/core/Base64Variant;->encodeBase64Partial(Ljava/lang/StringBuilder;II)V

    :cond_66
    if-eqz p2, :cond_6b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encodeBase64Chunk(I[BI)I
    .registers 8

    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    and-int/lit8 v3, p1, 0x3f

    aget-byte v2, v2, v3

    aput-byte v2, p2, v0

    return v1
.end method

.method public final encodeBase64Chunk(I[CI)I
    .registers 8

    add-int/lit8 v0, p3, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p2, p3

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v1

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v3, p1, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p2, v0

    return v1
.end method

.method public final encodeBase64Chunk(Ljava/lang/StringBuilder;I)V
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    and-int/lit8 v1, p2, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final encodeBase64Partial(II[BI)I
    .registers 10

    const/4 v4, 0x2

    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-byte v1, v1, v2

    aput-byte v1, p3, p4

    add-int/lit8 v2, v0, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_35

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    int-to-byte v1, v0

    add-int/lit8 v3, v2, 0x1

    if-ne p2, v4, :cond_33

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v4, p1, 0x6

    and-int/lit8 v4, v4, 0x3f

    aget-byte v0, v0, v4

    :goto_2c
    aput-byte v0, p3, v2

    add-int/lit8 v0, v3, 0x1

    aput-byte v1, p3, v3

    :goto_32
    return v0

    :cond_33
    move v0, v1

    goto :goto_2c

    :cond_35
    if-ne p2, v4, :cond_44

    add-int/lit8 v0, v2, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiB:[B

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-byte v1, v1, v3

    aput-byte v1, p3, v2

    goto :goto_32

    :cond_44
    move v0, v2

    goto :goto_32
.end method

.method public final encodeBase64Partial(II[CI)I
    .registers 10

    const/4 v4, 0x2

    add-int/lit8 v0, p4, 0x1

    iget-object v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v2, p1, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    aput-char v1, p3, p4

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0xc

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v0

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_35

    add-int/lit8 v2, v1, 0x1

    if-ne p2, v4, :cond_32

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v0, v0, v3

    :goto_29
    aput-char v0, p3, v1

    add-int/lit8 v0, v2, 0x1

    iget-char v1, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    aput-char v1, p3, v2

    :goto_31
    return v0

    :cond_32
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_29

    :cond_35
    if-ne p2, v4, :cond_44

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v3, p1, 0x6

    and-int/lit8 v3, v3, 0x3f

    aget-char v2, v2, v3

    aput-char v2, p3, v1

    goto :goto_31

    :cond_44
    move v0, v1

    goto :goto_31
.end method

.method public final encodeBase64Partial(Ljava/lang/StringBuilder;II)V
    .registers 7

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x12

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0xc

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    if-eqz v0, :cond_31

    if-ne p3, v2, :cond_2e

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    :goto_25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    goto :goto_25

    :cond_31
    if-ne p3, v2, :cond_2d

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_base64ToAsciiC:[C

    shr-int/lit8 v1, p2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-char v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method

.method public final getMaxLineLength()I
    .registers 2

    iget v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_maxLineLength:I

    return v0
.end method

.method public final getPaddingChar()C
    .registers 2

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    return v0
.end method

.method protected final readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/fasterxml/jackson/core/Base64Variants;->valueOf(Ljava/lang/String;)Lcom/fasterxml/jackson/core/Base64Variant;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public final usesPadding()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_usesPadding:Z

    return v0
.end method

.method public final usesPaddingChar(C)Z
    .registers 3

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final usesPaddingChar(I)Z
    .registers 3

    iget-char v0, p0, Lcom/fasterxml/jackson/core/Base64Variant;->_paddingChar:C

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method