.class public Lcom/igexin/a/a/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a([III)V
    .registers 5

    aget v0, p0, p1

    aget v1, p0, p2

    aput v1, p0, p1

    aput v0, p0, p2

    return-void
.end method

.method public static a([B)Z
    .registers 7

    const/4 v1, 0x0

    array-length v3, p0

    if-lez v3, :cond_20

    const/16 v0, 0x100

    if-gt v3, v0, :cond_20

    move v2, v1

    move v0, v1

    :goto_a
    if-ge v2, v3, :cond_1e

    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xe

    if-ne v4, v5, :cond_1b

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x3

    if-le v0, v4, :cond_1b

    move v0, v1

    :goto_1a
    return v0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    const/4 v0, 0x1

    goto :goto_1a

    :cond_20
    move v0, v1

    goto :goto_1a
.end method

.method public static a([BLjava/lang/String;)[B
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/igexin/a/a/a/a;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([B[B)[B
    .registers 9

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/igexin/a/a/a/a;->a([B)Z

    move-result v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key is fail!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    array-length v0, p0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "data is fail!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/16 v0, 0x100

    new-array v3, v0, [I

    move v0, v1

    :goto_22
    array-length v2, v3

    if-ge v0, v2, :cond_2a

    aput v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2a
    move v0, v1

    move v2, v1

    :goto_2c
    array-length v4, v3

    if-ge v0, v4, :cond_42

    aget v4, v3, v0

    add-int/2addr v2, v4

    array-length v4, p1

    rem-int v4, v0, v4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    rem-int/lit16 v2, v2, 0x100

    invoke-static {v3, v0, v2}, Lcom/igexin/a/a/a/a;->a([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2c

    :cond_42
    array-length v0, p0

    new-array v4, v0, [B

    move v0, v1

    move v2, v1

    :goto_47
    array-length v5, v4

    if-ge v1, v5, :cond_68

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v0, v0, 0x100

    aget v5, v3, v0

    add-int/2addr v2, v5

    rem-int/lit16 v2, v2, 0x100

    invoke-static {v3, v0, v2}, Lcom/igexin/a/a/a/a;->a([III)V

    aget v5, v3, v0

    aget v6, v3, v2

    add-int/2addr v5, v6

    rem-int/lit16 v5, v5, 0x100

    aget v5, v3, v5

    aget-byte v6, p0, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_47

    :cond_68
    return-object v4
.end method

.method public static b([BLjava/lang/String;)[B
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/igexin/a/a/a/a;->a([B[B)[B

    move-result-object v0

    return-object v0
.end method
