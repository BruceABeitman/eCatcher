.class public Lorg/scribe/services/RSASha1SignatureService;
.super Ljava/lang/Object;
.source "RSASha1SignatureService.java"
.implements Lorg/scribe/services/SignatureService;
.field private static final METHOD:Ljava/lang/String; = "RSA-SHA1"
.field private static final RSA_SHA1:Ljava/lang/String; = "SHA1withRSA"
.field private static final UTF8:Ljava/lang/String; = "UTF-8"
.field private privateKey:Ljava/security/PrivateKey;
.method public constructor <init>(Ljava/security/PrivateKey;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/scribe/services/RSASha1SignatureService;->privateKey:Ljava/security/PrivateKey;
return-void
.end method
.method private bytesToBase64String(Ljava/security/Signature;)Ljava/lang/String;
.registers 4
invoke-static {}, Lorg/scribe/services/Base64Encoder;->getInstance()Lorg/scribe/services/Base64Encoder;
move-result-object v0
invoke-virtual {p1}, Ljava/security/Signature;->sign()[B
move-result-object v1
invoke-virtual {v0, v1}, Lorg/scribe/services/Base64Encoder;->encode([B)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
const-string v2, "SHA1withRSA"
invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
move-result-object v1
iget-object v2, p0, Lorg/scribe/services/RSASha1SignatureService;->privateKey:Ljava/security/PrivateKey;
invoke-virtual {v1, v2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V
const-string v2, "UTF-8"
invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
invoke-direct {p0, v1}, Lorg/scribe/services/RSASha1SignatureService;->bytesToBase64String(Ljava/security/Signature;)Ljava/lang/String;
:try_end_17
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19
move-result-object v2
return-object v2
:catch_19
move-exception v0
new-instance v2, Lorg/scribe/exceptions/OAuthSignatureException;
invoke-direct {v2, p1, v0}, Lorg/scribe/exceptions/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v2
.end method
.method public getSignatureMethod()Ljava/lang/String;
.registers 2
const-string v0, "RSA-SHA1"
return-object v0
.end method