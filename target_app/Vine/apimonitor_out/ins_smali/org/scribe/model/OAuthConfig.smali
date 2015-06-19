.class public Lorg/scribe/model/OAuthConfig;
.super Ljava/lang/Object;
.source "OAuthConfig.java"
.field private final apiKey:Ljava/lang/String;
.field private final apiSecret:Ljava/lang/String;
.field private final callback:Ljava/lang/String;
.field private final debugStream:Ljava/io/OutputStream;
.field private final scope:Ljava/lang/String;
.field private final signatureType:Lorg/scribe/model/SignatureType;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 10
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
move-object v6, v3
invoke-direct/range {v0 .. v6}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;
iput-object p2, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;
iput-object p3, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;
iput-object p4, p0, Lorg/scribe/model/OAuthConfig;->signatureType:Lorg/scribe/model/SignatureType;
iput-object p5, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;
iput-object p6, p0, Lorg/scribe/model/OAuthConfig;->debugStream:Ljava/io/OutputStream;
return-void
.end method
.method public getApiKey()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiKey:Ljava/lang/String;
return-object v0
.end method
.method public getApiSecret()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->apiSecret:Ljava/lang/String;
return-object v0
.end method
.method public getCallback()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->callback:Ljava/lang/String;
return-object v0
.end method
.method public getScope()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;
return-object v0
.end method
.method public getSignatureType()Lorg/scribe/model/SignatureType;
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->signatureType:Lorg/scribe/model/SignatureType;
return-object v0
.end method
.method public hasScope()Z
.registers 2
iget-object v0, p0, Lorg/scribe/model/OAuthConfig;->scope:Ljava/lang/String;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public log(Ljava/lang/String;)V
.registers 5
iget-object v1, p0, Lorg/scribe/model/OAuthConfig;->debugStream:Ljava/io/OutputStream;
if-eqz v1, :cond_22
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p1
:try_start_17
iget-object v1, p0, Lorg/scribe/model/OAuthConfig;->debugStream:Ljava/io/OutputStream;
const-string v2, "UTF8"
invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
:cond_22
:try_end_22
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_22} :catch_23
return-void
:catch_23
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
const-string v2, "there were problems while writting to the debug stream"
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method