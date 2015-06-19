.class Lorg/pinguo/cloudshare/support/HelperConsole$DES;
.super Ljava/lang/Object;
.source "HelperConsole.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/pinguo/cloudshare/support/HelperConsole;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DES"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encryptDES(Ljava/lang/String;[B[B)Ljava/lang/String;
    .registers 9

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v4, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v5, "DES"

    invoke-direct {v3, p1, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_f
    const-string/jumbo v5, "DES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v3, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_28

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    :goto_27
    return-object v5

    :catch_28
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    goto :goto_27
.end method
