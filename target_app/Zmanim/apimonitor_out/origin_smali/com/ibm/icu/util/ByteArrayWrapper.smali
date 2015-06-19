.class public Lcom/ibm/icu/util/ByteArrayWrapper;
.super Ljava/lang/Object;
.source "ByteArrayWrapper.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public bytes:[B

.field public size:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    iget v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    iget-object v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iget v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BI)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    if-nez p2, :cond_c

    :cond_7
    if-ltz p2, :cond_c

    array-length v0, p1

    if-le p2, v0, :cond_25

    :cond_c
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    iput-object p1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    iput p2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    return-void
.end method

.method private static final copyBytes([BI[BII)V
    .registers 8

    const/16 v2, 0x40

    if-ge p4, v2, :cond_13

    move v0, p1

    move v1, p3

    :goto_6
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_16

    aget-byte v2, p0, v0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_13
    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final append([BII)Lcom/ibm/icu/util/ByteArrayWrapper;
    .registers 7

    sub-int v0, p3, p2

    iget v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/ibm/icu/util/ByteArrayWrapper;->ensureCapacity(I)Lcom/ibm/icu/util/ByteArrayWrapper;

    iget-object v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    invoke-static {p1, p2, v1, v2, v0}, Lcom/ibm/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    iget v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    return-object p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 8

    if-ne p0, p1, :cond_4

    const/4 v4, 0x0

    :goto_3
    return v4

    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/ByteArrayWrapper;

    move-object v3, v0

    iget v4, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    iget v5, v3, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    if-ge v4, v5, :cond_2c

    iget v4, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    move v2, v4

    :goto_11
    const/4 v1, 0x0

    :goto_12
    if-ge v1, v2, :cond_33

    iget-object v4, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v4, v4, v1

    iget-object v5, v3, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v5, v5, v1

    if-eq v4, v5, :cond_30

    iget-object v4, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v4, v4, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, v3, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v4, v5

    goto :goto_3

    :cond_2c
    iget v4, v3, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    move v2, v4

    goto :goto_11

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_33
    iget v4, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    iget v5, v3, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    sub-int/2addr v4, v5

    goto :goto_3
.end method

.method public ensureCapacity(I)Lcom/ibm/icu/util/ByteArrayWrapper;
    .registers 6

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v1, v1

    if-ge v1, p1, :cond_15

    :cond_a
    new-array v0, p1, [B

    iget-object v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    iget v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Lcom/ibm/icu/util/ByteArrayWrapper;->copyBytes([BI[BII)V

    iput-object v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    :cond_15
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-ne p0, p1, :cond_6

    move v3, v6

    :goto_5
    return v3

    :cond_6
    if-nez p1, :cond_a

    move v3, v5

    goto :goto_5

    :cond_a
    :try_start_a
    move-object v0, p1

    check-cast v0, Lcom/ibm/icu/util/ByteArrayWrapper;

    move-object v2, v0

    iget v3, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    iget v4, v2, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    if-eq v3, v4, :cond_16

    move v3, v5

    goto :goto_5

    :cond_16
    const/4 v1, 0x0

    :goto_17
    iget v3, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    if-ge v1, v3, :cond_2a

    iget-object v3, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v4, v4, v1
    :try_end_23
    .catch Ljava/lang/ClassCastException; {:try_start_a .. :try_end_23} :catch_2c

    if-eq v3, v4, :cond_27

    move v3, v5

    goto :goto_5

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2a
    move v3, v6

    goto :goto_5

    :catch_2c
    move-exception v3

    move v3, v5

    goto :goto_5
.end method

.method public hashCode()I
    .registers 5

    iget-object v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    array-length v1, v2

    const/4 v0, 0x0

    :goto_4
    iget v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    if-ge v0, v2, :cond_13

    mul-int/lit8 v2, v1, 0x25

    iget-object v3, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v3, v3, v0

    add-int v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    return v1
.end method

.method public final releaseBytes()[B
    .registers 3

    iget-object v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    return-object v0
.end method

.method public final set([BII)Lcom/ibm/icu/util/ByteArrayWrapper;
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    invoke-virtual {p0, p1, p2, p3}, Lcom/ibm/icu/util/ByteArrayWrapper;->append([BII)Lcom/ibm/icu/util/ByteArrayWrapper;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_6
    iget v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->size:I

    if-ge v0, v2, :cond_22

    if-eqz v0, :cond_11

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_11
    iget-object v2, p0, Lcom/ibm/icu/util/ByteArrayWrapper;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/ibm/icu/impl/Utility;->hex(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
