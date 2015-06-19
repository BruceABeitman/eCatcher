.class public Lcom/pinguo/lib/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFileMD5(Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/4 v7, 0x0

    const/16 v9, 0x400

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_a

    :goto_9
    return-object v7

    :cond_a
    const/4 v2, 0x0

    const/4 v4, 0x0

    new-array v1, v9, [B

    :try_start_e
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_43

    :goto_1a
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1d
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    const/4 v8, -0x1

    if-ne v6, v8, :cond_38

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_27} :catch_3d

    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_38
    const/4 v8, 0x0

    :try_start_39
    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_1a

    :catch_3d
    move-exception v3

    move-object v4, v5

    :goto_3f
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catch_43
    move-exception v3

    goto :goto_3f
.end method

.method public static password_md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/4 v7, 0x0

    const-string/jumbo v6, ""

    :try_start_4
    const-string/jumbo v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    const-string/jumbo v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v3, 0x0

    :goto_1f
    array-length v8, v0

    if-lt v3, v8, :cond_43

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/security/MessageDigest;->update([B)V

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const/4 v3, 0x0

    :goto_3a
    array-length v8, v1

    if-lt v3, v8, :cond_5c

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_42
    return-object v7

    :cond_43
    const-string/jumbo v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, v0, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_5c
    const-string/jumbo v8, "%02x"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aget-byte v11, v1, v3

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_72
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_72} :catch_75
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_72} :catch_7a

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :catch_75
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_42

    :catch_7a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_42
.end method
