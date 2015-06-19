.class public Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;
.super Ljava/lang/Object;
.source "Cryptor.java"


# static fields
.field public static final QUOTIENT:I = 0x4c11db7

.field public static final SALT_LEN:I = 0x2

.field public static final ZERO_LEN:I = 0x7


# instance fields
.field private contextStart:I

.field private crypt:I

.field private header:Z

.field private key:[B

.field private out:[B

.field private padding:I

.field private plain:[B

.field private pos:I

.field private preCrypt:I

.field private prePlain:[B

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->header:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->random:Ljava/util/Random;

    return-void
.end method

.method public static CRC32Hash([B)I
    .registers 9

    array-length v3, p0

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v3, :cond_9

    xor-int/lit8 v6, v5, -0x1

    return v6

    :cond_9
    aget-byte v4, p0, v0

    const/4 v2, 0x0

    :goto_c
    const/16 v6, 0x8

    if-lt v2, v6, :cond_13

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_13
    xor-int v6, v4, v5

    ushr-int/lit8 v6, v6, 0x1f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_27

    shl-int/lit8 v6, v5, 0x1

    const v7, 0x4c11db7

    xor-int v5, v6, v7

    :goto_21
    shl-int/lit8 v6, v4, 0x1

    int-to-byte v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_27
    shl-int/lit8 v5, v5, 0x1

    goto :goto_21
.end method

.method public static MD5Hash([BI)[B
    .registers 4

    const/4 v1, 0x2

    new-array v0, v1, [B

    return-object v0
.end method

.method public static _4bytesDecryptAFrame(J[B)I
    .registers 15

    const/4 v9, 0x2

    new-array v6, v9, [S

    const/4 v9, 0x0

    const-wide/32 v10, 0xffff

    and-long/2addr v10, p0

    long-to-int v10, v10

    int-to-short v10, v10

    aput-short v10, v6, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    shr-long v10, p0, v10

    long-to-int v10, v10

    int-to-short v10, v10

    aput-short v10, v6, v9

    const/4 v9, 0x4

    new-array v0, v9, [S

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    aget-byte v11, p2, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x2

    aget-byte v11, p2, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x2

    const/4 v10, 0x5

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x4

    aget-byte v11, p2, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x3

    const/4 v10, 0x7

    aget-byte v10, p2, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x6

    aget-byte v11, p2, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/16 v1, 0x325f

    const/16 v2, 0x20

    const/4 v9, 0x0

    aget-short v7, v6, v9

    const/4 v9, 0x1

    aget-short v8, v6, v9

    const v9, 0x64be0

    int-to-short v5, v9

    move v3, v2

    :goto_5b
    add-int/lit8 v9, v3, -0x1

    int-to-short v2, v9

    if-gtz v3, :cond_75

    const/4 v9, 0x0

    aput-short v7, v6, v9

    const/4 v9, 0x1

    aput-short v8, v6, v9

    const/4 v9, 0x1

    aget-short v9, v6, v9

    shl-int/lit8 v9, v9, 0x10

    const/4 v10, 0x0

    aget-short v10, v6, v10

    const v11, 0xffff

    and-int/2addr v10, v11

    or-int v4, v9, v10

    return v4

    :cond_75
    shl-int/lit8 v9, v7, 0x4

    const/4 v10, 0x2

    aget-short v10, v0, v10

    add-int/2addr v9, v10

    add-int v10, v7, v5

    xor-int/2addr v9, v10

    shr-int/lit8 v10, v7, 0x5

    const/4 v11, 0x3

    aget-short v11, v0, v11

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int v9, v8, v9

    int-to-short v8, v9

    shl-int/lit8 v9, v8, 0x4

    const/4 v10, 0x0

    aget-short v10, v0, v10

    add-int/2addr v9, v10

    add-int v10, v8, v5

    xor-int/2addr v9, v10

    shr-int/lit8 v10, v8, 0x5

    const/4 v11, 0x1

    aget-short v11, v0, v11

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int v9, v7, v9

    int-to-short v7, v9

    sub-int v9, v5, v1

    int-to-short v5, v9

    move v3, v2

    goto :goto_5b
.end method

.method public static _4bytesEncryptAFrame(I[B)[B
    .registers 14

    const/4 v9, 0x2

    new-array v6, v9, [S

    const/4 v9, 0x0

    const v10, 0xffff

    and-int/2addr v10, p0

    int-to-short v10, v10

    aput-short v10, v6, v9

    const/4 v9, 0x1

    ushr-int/lit8 v10, p0, 0x10

    int-to-short v10, v10

    aput-short v10, v6, v9

    const/4 v9, 0x4

    new-array v0, v9, [S

    const/4 v9, 0x0

    const/4 v10, 0x1

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x0

    aget-byte v11, p1, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x1

    const/4 v10, 0x3

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x2

    aget-byte v11, p1, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x2

    const/4 v10, 0x5

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x4

    aget-byte v11, p1, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/4 v9, 0x3

    const/4 v10, 0x7

    aget-byte v10, p1, v10

    shl-int/lit8 v10, v10, 0x8

    const/4 v11, 0x6

    aget-byte v11, p1, v11

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v0, v9

    const/16 v1, 0x325f

    const/4 v9, 0x0

    aget-short v7, v6, v9

    const/4 v9, 0x1

    aget-short v8, v6, v9

    const/4 v5, 0x0

    const/16 v2, 0x20

    move v3, v2

    :goto_54
    add-int/lit8 v9, v3, -0x1

    int-to-short v2, v9

    if-gtz v3, :cond_75

    const/4 v9, 0x4

    new-array v4, v9, [B

    const/4 v9, 0x0

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x1

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x2

    shr-int/lit8 v10, v7, 0x8

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    const/4 v9, 0x3

    and-int/lit16 v10, v7, 0xff

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    return-object v4

    :cond_75
    add-int v9, v5, v1

    int-to-short v5, v9

    shl-int/lit8 v9, v8, 0x4

    const/4 v10, 0x0

    aget-short v10, v0, v10

    add-int/2addr v9, v10

    add-int v10, v8, v5

    xor-int/2addr v9, v10

    shr-int/lit8 v10, v8, 0x5

    const/4 v11, 0x1

    aget-short v11, v0, v11

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    add-int/2addr v9, v7

    int-to-short v7, v9

    shl-int/lit8 v9, v7, 0x4

    const/4 v10, 0x2

    aget-short v10, v0, v10

    add-int/2addr v9, v10

    add-int v10, v7, v5

    xor-int/2addr v9, v10

    shr-int/lit8 v10, v7, 0x5

    const/4 v11, 0x3

    aget-short v11, v0, v11

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    add-int/2addr v9, v8

    int-to-short v8, v9

    move v3, v2

    goto :goto_54
.end method

.method private decipher([B)[B
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decipher([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private decipher([BI)[B
    .registers 31

    const/16 v16, 0x10

    const/16 v24, 0x4

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v20

    add-int/lit8 v24, p2, 0x4

    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x8

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v10

    const-wide/32 v18, -0x1c886470

    const-wide v24, 0xffffffffL

    and-long v18, v18, v24

    const-wide/32 v12, -0x61c88647

    const-wide v24, 0xffffffffL

    and-long v12, v12, v24

    move/from16 v17, v16

    :goto_6a
    add-int/lit8 v16, v17, -0x1

    if-gtz v17, :cond_98

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_96} :catch_da

    move-result-object v24

    :goto_97
    return-object v24

    :cond_98
    const/16 v24, 0x4

    shl-long v24, v20, v24

    add-long v24, v24, v8

    add-long v26, v20, v18

    xor-long v24, v24, v26

    const/16 v26, 0x5

    ushr-long v26, v20, v26

    add-long v26, v26, v10

    xor-long v24, v24, v26

    sub-long v22, v22, v24

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    const/16 v24, 0x4

    shl-long v24, v22, v24

    add-long v24, v24, v3

    add-long v26, v22, v18

    xor-long v24, v24, v26

    const/16 v26, 0x5

    ushr-long v26, v22, v26

    add-long v26, v26, v5

    xor-long v24, v24, v26

    sub-long v20, v20, v24

    const-wide v24, 0xffffffffL

    and-long v20, v20, v24

    sub-long v18, v18, v12

    const-wide v24, 0xffffffffL

    and-long v18, v18, v24

    move/from16 v17, v16

    goto :goto_6a

    :catch_da
    move-exception v15

    const/16 v24, 0x0

    goto :goto_97
.end method

.method private decrypt8Bytes([BII)Z
    .registers 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :goto_4
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_18

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    invoke-direct {p0, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decipher([B)[B

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    if-nez v2, :cond_38

    move v0, v1

    :cond_17
    :goto_17
    return v0

    :cond_18
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->contextStart:I

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v2, v3

    if-ge v2, p3, :cond_17

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v4, v2, v3

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    goto :goto_4

    :cond_38
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->contextStart:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->contextStart:I

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    goto :goto_17
.end method

.method private encipher([B)[B
    .registers 30

    const/16 v16, 0x10

    const/16 v24, 0x0

    const/16 v25, 0x4

    :try_start_6
    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v20

    const/16 v24, 0x4

    const/16 v25, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x4

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0x8

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    move-object/from16 v24, v0

    const/16 v25, 0xc

    const/16 v26, 0x4

    invoke-static/range {v24 .. v26}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getUnsignedInt([BII)J

    move-result-wide v10

    const-wide/16 v18, 0x0

    const-wide/32 v12, -0x61c88647

    const-wide v24, 0xffffffffL

    and-long v12, v12, v24

    move/from16 v17, v16

    :goto_64
    add-int/lit8 v16, v17, -0x1

    if-gtz v17, :cond_92

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_90} :catch_d4

    move-result-object v24

    :goto_91
    return-object v24

    :cond_92
    add-long v18, v18, v12

    const-wide v24, 0xffffffffL

    and-long v18, v18, v24

    const/16 v24, 0x4

    shl-long v24, v22, v24

    add-long v24, v24, v3

    add-long v26, v22, v18

    xor-long v24, v24, v26

    const/16 v26, 0x5

    ushr-long v26, v22, v26

    add-long v26, v26, v5

    xor-long v24, v24, v26

    add-long v20, v20, v24

    const-wide v24, 0xffffffffL

    and-long v20, v20, v24

    const/16 v24, 0x4

    shl-long v24, v20, v24

    add-long v24, v24, v8

    add-long v26, v20, v18

    xor-long v24, v24, v26

    const/16 v26, 0x5

    ushr-long v26, v20, v26

    add-long v26, v26, v10

    xor-long v24, v24, v26

    add-long v22, v22, v24

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    move/from16 v17, v16

    goto :goto_64

    :catch_d4
    move-exception v15

    const/16 v24, 0x0

    goto :goto_91
.end method

.method private encrypt8Bytes()V
    .registers 10

    const/16 v8, 0x8

    const/4 v7, 0x0

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :goto_5
    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-lt v1, v8, :cond_32

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    invoke-direct {p0, v1}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encipher([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    invoke-static {v0, v7, v1, v2, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :goto_18
    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-lt v1, v8, :cond_61

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    invoke-static {v1, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    add-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iput-boolean v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->header:Z

    return-void

    :cond_32
    iget-boolean v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->header:Z

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :goto_46
    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    goto :goto_5

    :cond_4d
    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    iget v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v5, v6

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    goto :goto_46

    :cond_61
    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v2, v3

    aget-byte v3, v1, v2

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    goto :goto_18
.end method

.method private getRandomByte(I)[B
    .registers 4

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->random:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    return-object v0
.end method

.method public static getUnsignedInt([BII)J
    .registers 11

    const/16 v6, 0x8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    if-le p2, v6, :cond_18

    add-int/lit8 v0, p1, 0x8

    :goto_9
    move v1, p1

    :goto_a
    if-lt v1, v0, :cond_1b

    const-wide v4, 0xffffffffL

    and-long/2addr v4, v2

    const/16 v6, 0x20

    ushr-long v6, v2, v6

    or-long/2addr v4, v6

    return-wide v4

    :cond_18
    add-int v0, p1, p2

    goto :goto_9

    :cond_1b
    shl-long/2addr v2, v6

    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method private rand()I
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method


# virtual methods
.method public decrypt([BII[B)[B
    .registers 15

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/16 v8, 0x8

    iput v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    iput v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput-object p4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    add-int/lit8 v4, p2, 0x8

    new-array v2, v4, [B

    rem-int/lit8 v4, p3, 0x8

    if-nez v4, :cond_17

    const/16 v4, 0x10

    if-ge p3, v4, :cond_18

    :cond_17
    :goto_17
    return-object v3

    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decipher([BI)[B

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    sub-int v4, p3, v4

    add-int/lit8 v0, v4, -0xa

    if-ltz v0, :cond_17

    move v1, p2

    :goto_2f
    array-length v4, v2

    if-lt v1, v4, :cond_55

    new-array v4, v0, [B

    iput-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iput v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    iput v8, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput v8, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->contextStart:I

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iput v9, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_44
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    const/4 v5, 0x2

    if-le v4, v5, :cond_5a

    const/4 v1, 0x0

    :cond_4a
    if-nez v0, :cond_76

    iput v9, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :goto_4e
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    if-lt v4, v8, :cond_ab

    iget-object v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    goto :goto_17

    :cond_55
    aput-byte v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_5a
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v4, v8, :cond_6a

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_6a
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v4, v8, :cond_44

    move-object v2, p1

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_44

    goto :goto_17

    :cond_76
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v4, v8, :cond_98

    iget-object v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    add-int/2addr v5, p2

    iget v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v5, v6

    aget-byte v5, v2, v5

    iget-object v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v6, v6, v7

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :cond_98
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v4, v8, :cond_4a

    move-object v2, p1

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    add-int/lit8 v4, v4, -0x8

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt8Bytes([BII)Z

    move-result v4

    if-nez v4, :cond_4a

    goto/16 :goto_17

    :cond_ab
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v4, v8, :cond_c6

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v4, v5

    aget-byte v4, v2, v4

    iget-object v5, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iget v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aget-byte v5, v5, v6

    xor-int/2addr v4, v5

    if-nez v4, :cond_17

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :cond_c6
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v4, v8, :cond_d5

    move-object v2, p1

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt8Bytes([BII)Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_d5
    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    goto/16 :goto_4e
.end method

.method public decrypt([B[B)[B
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt([BII[B)[B

    move-result-object v0

    return-object v0
.end method

.method public decrypt([B[BI)[B
    .registers 7

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->decrypt([BII[B)[B

    move-result-object v0

    if-nez v0, :cond_c

    invoke-direct {p0, p3}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->getRandomByte(I)[B

    move-result-object v0

    :cond_c
    return-object v0
.end method

.method public encrypt([BII[B)[B
    .registers 13

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x8

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    new-array v2, v5, [B

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iput v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    iput v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->preCrypt:I

    iput v6, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->crypt:I

    iput-object p4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->key:[B

    iput-boolean v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->header:Z

    add-int/lit8 v2, p3, 0xa

    rem-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-eqz v2, :cond_28

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    rsub-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    :cond_28
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xf8

    iget v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    const/4 v0, 0x1

    :goto_40
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-le v0, v2, :cond_62

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    const/4 v0, 0x0

    :goto_4b
    if-lt v0, v5, :cond_70

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_4f
    :goto_4f
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    const/4 v3, 0x2

    if-le v2, v3, :cond_77

    move v0, p2

    move v1, v0

    :goto_56
    if-gtz p3, :cond_9a

    iput v7, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_5a
    :goto_5a
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    const/4 v3, 0x7

    if-le v2, v3, :cond_b7

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->out:[B

    return-object v2

    :cond_62
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->rand()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_70
    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->prePlain:[B

    aput-byte v6, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4b

    :cond_77
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v2, v5, :cond_92

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->rand()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_92
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v2, v5, :cond_4f

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encrypt8Bytes()V

    goto :goto_4f

    :cond_9a
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v2, v5, :cond_d3

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v0, v1, 0x1

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    add-int/lit8 p3, p3, -0x1

    :goto_ae
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v2, v5, :cond_b5

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encrypt8Bytes()V

    :cond_b5
    move v1, v0

    goto :goto_56

    :cond_b7
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ge v2, v5, :cond_cb

    iget-object v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->plain:[B

    iget v3, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    aput-byte v6, v2, v3

    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->padding:I

    :cond_cb
    iget v2, p0, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->pos:I

    if-ne v2, v5, :cond_5a

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encrypt8Bytes()V

    goto :goto_5a

    :cond_d3
    move v0, v1

    goto :goto_ae
.end method

.method public encrypt([B[B)[B
    .registers 5

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/tencent/weibo/sdk/android/component/sso/tools/Cryptor;->encrypt([BII[B)[B

    move-result-object v0

    return-object v0
.end method
