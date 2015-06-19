.class public Lcom/pinguo/camera360/order/model/alipay/Rsa;
.super Ljava/lang/Object;
.source "Rsa.java"


# static fields
.field private static final ALGORITHM:Ljava/lang/String; = "RSA"

.field public static final SIGN_ALGORITHMS:Ljava/lang/String; = "SHA1WithRSA"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    :try_start_0
    const-string/jumbo v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    invoke-static {p2}, Lcom/pinguo/camera360/order/model/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v2

    new-instance v6, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v6, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    const-string/jumbo v6, "SHA1WithRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    const-string/jumbo v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->update([B)V

    const-string/jumbo v6, "Result"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "content :   "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "Result"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sign:   "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/pinguo/camera360/order/model/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/Signature;->verify([B)Z

    move-result v0

    const-string/jumbo v6, "Result"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "bverify = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_72} :catch_73

    :goto_72
    return v0

    :catch_73
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_72
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    const-string/jumbo v6, "RSA"

    invoke-static {v6, p1}, Lcom/pinguo/camera360/order/model/alipay/Rsa;->getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    const-string/jumbo v6, "RSA/ECB/PKCS1Padding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const-string/jumbo v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    new-instance v5, Ljava/lang/String;

    invoke-static {v2}, Lcom/pinguo/camera360/order/model/alipay/Base64;->encode([B)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    :goto_26
    return-object v5

    :catch_27
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_26
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const/16 v12, 0x10

    const/4 v7, 0x0

    new-array v2, v12, [C

    fill-array-data v2, :array_46

    :try_start_8
    const-string/jumbo v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    const/16 v11, 0x20

    new-array v9, v11, [C

    const/4 v4, 0x0

    const/4 v3, 0x0

    move v5, v4

    :goto_21
    if-lt v3, v12, :cond_2a

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    move-object v7, v8

    :goto_29
    return-object v7

    :cond_2a
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
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_3e} :catch_41

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :catch_41
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29

    :array_46
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

.method private static getPublicKeyFromX509(Ljava/lang/String;Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lcom/pinguo/camera360/order/model/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-static {p0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    return-object v3
.end method

.method public static sign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const-string/jumbo v0, "UTF-8"

    :try_start_3
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p1}, Lcom/pinguo/camera360/order/model/alipay/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    const-string/jumbo v7, "RSA"

    const-string/jumbo v8, "BC"

    invoke-static {v7, v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    const-string/jumbo v7, "SHA1WithRSA"

    invoke-static {v7}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/security/Signature;->update([B)V

    invoke-virtual {v5}, Ljava/security/Signature;->sign()[B

    move-result-object v6

    invoke-static {v6}, Lcom/pinguo/camera360/order/model/alipay/Base64;->encode([B)Ljava/lang/String;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_32} :catch_34

    move-result-object v7

    :goto_33
    return-object v7

    :catch_34
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v7, 0x0

    goto :goto_33
.end method
