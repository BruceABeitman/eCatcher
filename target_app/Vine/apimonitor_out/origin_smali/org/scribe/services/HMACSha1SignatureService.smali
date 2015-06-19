.class public Lorg/scribe/services/HMACSha1SignatureService;
.super Ljava/lang/Object;
.source "HMACSha1SignatureService.java"

# interfaces
.implements Lorg/scribe/services/SignatureService;


# static fields
.field private static final CARRIAGE_RETURN:Ljava/lang/String; = "\r\n"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final HMAC_SHA1:Ljava/lang/String; = "HmacSHA1"

.field private static final METHOD:Ljava/lang/String; = "HMAC-SHA1"

.field private static final UTF8:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bytesToBase64String([B)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lorg/scribe/services/Base64Encoder;->getInstance()Lorg/scribe/services/Base64Encoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/scribe/services/Base64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "UTF-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "HmacSHA1"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v3, "HmacSHA1"

    invoke-static {v3}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const-string v3, "UTF-8"

    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/scribe/services/HMACSha1SignatureService;->bytesToBase64String([B)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    :try_start_0
    const-string v1, "Base string cant be null or empty string"

    invoke-static {p1, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Api secret cant be null or empty string"

    invoke-static {p2, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Lorg/scribe/utils/OAuthEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lorg/scribe/services/HMACSha1SignatureService;->doSign(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v1

    return-object v1

    :catch_2e
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthSignatureException;

    invoke-direct {v1, p1, v0}, Lorg/scribe/exceptions/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignatureMethod()Ljava/lang/String;
    .registers 2

    const-string v0, "HMAC-SHA1"

    return-object v0
.end method
