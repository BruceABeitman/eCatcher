.class public Lcom/pinguo/share/util/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static final encodingTable:[B

.field private static iv:Ljava/security/spec/AlgorithmParameterSpec;

.field private static key:Ljava/security/Key;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/pinguo/share/util/DES;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    sput-object v0, Lcom/pinguo/share/util/DES;->key:Ljava/security/Key;

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    sput-object v0, Lcom/pinguo/share/util/DES;->encodingTable:[B

    return-void

    nop

    :array_10
    .array-data 0x1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static des([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/share/util/DES;->keyTools()V

    const-string/jumbo v1, "DES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    sget-object v2, Lcom/pinguo/share/util/DES;->key:Ljava/security/Key;

    sget-object v3, Lcom/pinguo/share/util/DES;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/share/util/DES;->keyTools()V

    const-string/jumbo v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v2, 0x1

    sget-object v3, Lcom/pinguo/share/util/DES;->key:Ljava/security/Key;

    sget-object v4, Lcom/pinguo/share/util/DES;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v2, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string/jumbo v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance p0, Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/share/util/DES;->encodeBase64([B)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static encodeBase64([B)[B
    .registers 19

    move-object/from16 v0, p0

    array-length v14, v0

    rem-int/lit8 v13, v14, 0x3

    if-nez v13, :cond_1d

    move-object/from16 v0, p0

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x4

    div-int/lit8 v14, v14, 0x3

    new-array v7, v14, [B

    :goto_10
    move-object/from16 v0, p0

    array-length v14, v0

    sub-int v10, v14, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_17
    if-lt v11, v10, :cond_29

    packed-switch v13, :pswitch_data_ea

    :goto_1c
    :pswitch_1c
    return-object v7

    :cond_1d
    move-object/from16 v0, p0

    array-length v14, v0

    div-int/lit8 v14, v14, 0x3

    add-int/lit8 v14, v14, 0x1

    mul-int/lit8 v14, v14, 0x4

    new-array v7, v14, [B

    goto :goto_10

    :cond_29
    aget-byte v14, p0, v11

    and-int/lit16 v1, v14, 0xff

    add-int/lit8 v14, v11, 0x1

    aget-byte v14, p0, v14

    and-int/lit16 v2, v14, 0xff

    add-int/lit8 v14, v11, 0x2

    aget-byte v14, p0, v14

    and-int/lit16 v3, v14, 0xff

    sget-object v14, Lcom/pinguo/share/util/DES;->encodingTable:[B

    ushr-int/lit8 v15, v1, 0x2

    and-int/lit8 v15, v15, 0x3f

    aget-byte v14, v14, v15

    aput-byte v14, v7, v12

    add-int/lit8 v14, v12, 0x1

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    shl-int/lit8 v16, v1, 0x4

    ushr-int/lit8 v17, v2, 0x4

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    add-int/lit8 v14, v12, 0x2

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    shl-int/lit8 v16, v2, 0x2

    ushr-int/lit8 v17, v3, 0x6

    or-int v16, v16, v17

    and-int/lit8 v16, v16, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    add-int/lit8 v14, v12, 0x3

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    and-int/lit8 v16, v3, 0x3f

    aget-byte v15, v15, v16

    aput-byte v15, v7, v14

    add-int/lit8 v11, v11, 0x3

    add-int/lit8 v12, v12, 0x4

    goto :goto_17

    :pswitch_72
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    shl-int/lit8 v14, v8, 0x4

    and-int/lit8 v5, v14, 0x3f

    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_1c

    :pswitch_a5
    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x2

    aget-byte v14, p0, v14

    and-int/lit16 v8, v14, 0xff

    move-object/from16 v0, p0

    array-length v14, v0

    add-int/lit8 v14, v14, -0x1

    aget-byte v14, p0, v14

    and-int/lit16 v9, v14, 0xff

    ushr-int/lit8 v14, v8, 0x2

    and-int/lit8 v4, v14, 0x3f

    shl-int/lit8 v14, v8, 0x4

    ushr-int/lit8 v15, v9, 0x4

    or-int/2addr v14, v15

    and-int/lit8 v5, v14, 0x3f

    shl-int/lit8 v14, v9, 0x2

    and-int/lit8 v6, v14, 0x3f

    array-length v14, v7

    add-int/lit8 v14, v14, -0x4

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    aget-byte v15, v15, v4

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x3

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    aget-byte v15, v15, v5

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x2

    sget-object v15, Lcom/pinguo/share/util/DES;->encodingTable:[B

    aget-byte v15, v15, v6

    aput-byte v15, v7, v14

    array-length v14, v7

    add-int/lit8 v14, v14, -0x1

    const/16 v15, 0x3d

    aput-byte v15, v7, v14

    goto/16 :goto_1c

    :pswitch_data_ea
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_72
        :pswitch_a5
    .end packed-switch
.end method

.method public static keyTools()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v5, "*jNb29>,1*)4`:\\Bo)023&3MnvQ14Lk@"

    const-string/jumbo v6, "PINGUOSOFT"

    invoke-static {v5, v6}, Lcom/pinguo/share/util/MD5;->pinguoMD5(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string/jumbo v5, "utf-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v5, Lcom/pinguo/share/util/DES;->iv:Ljava/security/spec/AlgorithmParameterSpec;

    const-string/jumbo v5, "DES"

    invoke-static {v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    sput-object v5, Lcom/pinguo/share/util/DES;->key:Ljava/security/Key;

    return-void
.end method
