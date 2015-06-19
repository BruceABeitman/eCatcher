.class public Lorg/scribe/services/PlaintextSignatureService;
.super Ljava/lang/Object;
.source "PlaintextSignatureService.java"
.implements Lorg/scribe/services/SignatureService;
.field private static final METHOD:Ljava/lang/String; = "PLAINTEXT"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getSignature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 7
:try_start_0
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
:try_end_23
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_25
move-result-object v1
return-object v1
:catch_25
move-exception v0
new-instance v1, Lorg/scribe/exceptions/OAuthSignatureException;
invoke-direct {v1, p1, v0}, Lorg/scribe/exceptions/OAuthSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public getSignatureMethod()Ljava/lang/String;
.registers 2
const-string v0, "PLAINTEXT"
return-object v0
.end method