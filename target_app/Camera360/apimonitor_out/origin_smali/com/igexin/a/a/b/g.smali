.class public final Lcom/igexin/a/a/b/g;
.super Ljava/lang/Object;


# direct methods
.method public static final a(I[BI)I
    .registers 5

    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x4

    return v0
.end method

.method public static final a(J[BI)I
    .registers 10

    const/16 v5, 0x8

    const-wide/16 v3, 0xff

    const/16 v0, 0x38

    shr-long v0, p0, v0

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v1, p0, v1

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    shr-long v1, p0, v5

    and-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    and-long v1, v3, p0

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    return v5
.end method

.method public static final a([BI)I
    .registers 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static final a([BI[BII)I
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return p4
.end method

.method public static final a([Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    aget-object v1, p0, v4

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    aget-object v1, p0, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_21
    aget-object v1, p0, v5

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_31
    aget-object v1, p0, v6

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_47

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    aget-object v2, p0, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_47
    aget-object v1, p0, v3

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    aget-object v1, p0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v1, p0, v3

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_67

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_67
    aget-object v1, p0, v7

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_77

    aget-object v1, p0, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_77
    const/4 v1, 0x5

    aget-object v1, p0, v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8f

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x5

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 5

    const/16 v0, 0x400

    new-array v0, v0, [B

    :goto_4
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_4

    :cond_10
    return-void
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    .registers 4

    new-instance v0, Lcom/igexin/a/a/b/a;

    invoke-direct {v0, p1, p2}, Lcom/igexin/a/a/b/a;-><init>(Ljava/io/OutputStream;I)V

    invoke-static {p0, v0}, Lcom/igexin/a/a/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lcom/igexin/a/a/b/a;->a()V

    return-void
.end method

.method public static final a(I)[B
    .registers 7

    const/4 v1, 0x0

    move v2, v1

    move v3, v1

    :cond_3
    and-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    ushr-int/lit8 p0, p0, 0x7

    add-int/lit8 v3, v3, 0x1

    if-lez p0, :cond_27

    ushr-int/lit8 v0, v0, 0x8

    const/high16 v2, -0x8000

    or-int/2addr v0, v2

    move v2, v0

    :goto_14
    if-gtz p0, :cond_3

    new-array v4, v3, [B

    const/16 v0, 0x18

    :goto_1a
    if-ge v1, v3, :cond_26

    ushr-int v5, v2, v0

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_26
    return-object v4

    :cond_27
    move v2, v0

    goto :goto_14
.end method

.method public static a([B)[B
    .registers 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_18} :catch_19

    :goto_18
    return-object v0

    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method public static final a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 12

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/16 v7, 0x2f

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x6

    new-array v2, v0, [Ljava/lang/String;

    move v0, v3

    :goto_13
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1e

    const-string/jumbo v1, ""

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_1e
    const-string/jumbo v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_6e

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v3, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_32
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lt v0, v8, :cond_92

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_92

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    if-ne v0, v7, :cond_92

    invoke-virtual {v4, v3, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_55

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    :cond_55
    if-eqz v1, :cond_92

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_f5

    if-le v0, v1, :cond_79

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url format error - port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6e
    if-nez v0, :cond_32

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url format error - protocol"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_79
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v5, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v8

    :goto_85
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v10

    invoke-virtual {v4, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_92
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_ef

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_d4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    :cond_a8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_d2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_eb

    const/4 v4, 0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x5

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    :cond_d2
    :goto_d2
    move-object v0, v2

    :goto_d3
    return-object v0

    :cond_d4
    if-nez v1, :cond_a8

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_e7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "url format error - path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e7
    aput-object v0, v2, v9

    move-object v0, v2

    goto :goto_d3

    :cond_eb
    const/4 v1, 0x4

    aput-object v0, v2, v1

    goto :goto_d2

    :cond_ef
    const-string/jumbo v0, "/"

    aput-object v0, v2, v9

    goto :goto_d2

    :cond_f5
    move v0, v1

    goto :goto_85
.end method

.method public static final b(I[BI)I
    .registers 5

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/4 v0, 0x2

    return v0
.end method

.method public static final b([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static b([B)[B
    .registers 6

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    :try_start_6
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_10
    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1d

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_10

    :catch_1b
    move-exception v1

    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v2}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_27} :catch_1b

    goto :goto_1c
.end method

.method public static final c(I[BI)I
    .registers 4

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    const/4 v0, 0x1

    return v0
.end method

.method public static final c([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final d([BI)J
    .registers 9

    const-wide/16 v5, 0xff

    aget-byte v0, p0, p1

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v5

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static e([BI)[B
    .registers 7

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_a
    invoke-static {v1, v2, p1}, Lcom/igexin/a/a/b/g;->a(Ljava/io/InputStream;Ljava/io/OutputStream;I)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_22
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_18

    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_10} :catch_2a

    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_13} :catch_2c

    :goto_13
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :catch_18
    move-exception v0

    :try_start_19
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Unexpected I/O error"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    :try_start_23
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_26} :catch_2e

    :goto_26
    :try_start_26
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_30

    :goto_29
    throw v0

    :catch_2a
    move-exception v0

    goto :goto_10

    :catch_2c
    move-exception v0

    goto :goto_13

    :catch_2e
    move-exception v1

    goto :goto_26

    :catch_30
    move-exception v1

    goto :goto_29
.end method
