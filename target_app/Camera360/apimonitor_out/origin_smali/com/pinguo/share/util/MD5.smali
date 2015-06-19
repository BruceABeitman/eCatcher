.class public Lcom/pinguo/share/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PGMD5(Ljava/lang/String;)[B
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    const-string/jumbo v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/MessageDigest;->reset()V

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_15} :catch_1a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_15} :catch_20

    :goto_15
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0

    :catch_1a
    move-exception v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_15

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_15
.end method

.method public static getMD5([BII)Ljava/lang/String;
    .registers 16

    const/16 v12, 0x10

    const/4 v7, 0x0

    new-array v2, v12, [C

    fill-array-data v2, :array_42

    :try_start_8
    const-string/jumbo v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    const/16 v11, 0x20

    new-array v9, v11, [C

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v5, v4

    :goto_1d
    if-lt v3, v12, :cond_26

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    move-object v7, v8

    :goto_25
    return-object v7

    :cond_26
    aget-byte v0, v10, v3

    add-int/lit8 v4, v5, 0x1

    ushr-int/lit8 v11, v0, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v2, v11

    aput-char v11, v9, v5

    add-int/lit8 v5, v4, 0x1

    and-int/lit8 v11, v0, 0xf

    aget-char v11, v2, v11

    aput-char v11, v9, v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3a} :catch_3d

    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    :catch_3d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_25

    :array_42
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x61t 0x0t
        0x62t 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
    .end array-data
.end method

.method public static pinguoMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const-string/jumbo v0, "*jNb29>,1*)4`:\\Bo)023&3MnvQ14Lk@"

    invoke-static {p0, v0}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static pinguoMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_10

    const-string/jumbo v7, "UTF-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :cond_10
    invoke-static {p0}, Lcom/pinguo/share/util/MD5;->PGMD5(Ljava/lang/String;)[B

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    :goto_1a
    array-length v7, v5

    if-lt v4, v7, :cond_22

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_22
    aget-byte v2, v5, v4

    array-length v7, v0

    rem-int v7, v4, v7

    aget-byte v3, v0, v7

    xor-int v7, v2, v3

    int-to-byte v1, v7

    const-string/jumbo v7, "%02x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a
.end method

.method public static pinguoMD5WithKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
