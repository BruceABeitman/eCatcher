.class public Lcom/mologiq/analytics/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final b:Ljava/lang/String; = "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJHz5rYyjP4OdTotQP4QUKHHk0YP+YM/axTmaG2FO+AS0WG9vtLijYptdMACMeIvPANrey0HmQBqYmsCCFY7HO8CAwEAAQ=="


# instance fields
.field private c:Ljava/security/PublicKey;

.field private d:Ljavax/crypto/Cipher;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "MFwwDQYJKoZIhvcNAQEBBQADSwAwSAJBAJHz5rYyjP4OdTotQP4QUKHHk0YP+YM/axTmaG2FO+AS0WG9vtLijYptdMACMeIvPANrey0HmQBqYmsCCFY7HO8CAwEAAQ=="

    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/x;->a(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Lcom/mologiq/analytics/x;->c:Ljava/security/PublicKey;

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    const-string v0, "RSA"

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mologiq/analytics/x;->c:Ljava/security/PublicKey;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mologiq/analytics/x;->c:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    iget-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/mologiq/analytics/x;->c:Ljava/security/PublicKey;

    if-eqz v0, :cond_2d

    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    iget-object v0, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/mologiq/analytics/x;->c:Ljava/security/PublicKey;

    invoke-virtual {v0, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v1, p0, Lcom/mologiq/analytics/x;->d:Ljavax/crypto/Cipher;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    :goto_28
    return-object v0

    :catch_29
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2d
    const/4 v0, 0x0

    goto :goto_28
.end method
