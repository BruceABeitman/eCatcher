.class public final Lcom/facebook/k/a/d;
.super Ljava/lang/Object;
.source "FbHostnameVerifierAdaptor.java"
.implements Lorg/apache/http/conn/ssl/X509HostnameVerifier;
.field private final a:Lcom/facebook/k/a/a;
.field private final b:Lcom/facebook/k/a/c;
.method public constructor <init>(Lcom/facebook/k/a/a;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/k/a/d;->a:Lcom/facebook/k/a/a;
new-instance v0, Lcom/facebook/k/a/c;
invoke-direct {v0}, Lcom/facebook/k/a/c;-><init>()V
iput-object v0, p0, Lcom/facebook/k/a/d;->b:Lcom/facebook/k/a/c;
return-void
.end method
.method public final verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
.registers 6
iget-object v0, p0, Lcom/facebook/k/a/d;->b:Lcom/facebook/k/a/c;
invoke-virtual {v0, p1, p2}, Lcom/facebook/k/a/c;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Lcom/facebook/k/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/k/a/e;->a()Z
move-result v0
if-nez v0, :cond_21
new-instance v0, Ljavax/net/ssl/SSLException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to verify certificate for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
return-void
.end method
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
.registers 6
invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/facebook/k/a/d;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Ljavax/net/ssl/SSLException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to verify socket for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
return-void
.end method
.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/facebook/k/a/d;->a:Lcom/facebook/k/a/a;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/facebook/k/a/d;->a:Lcom/facebook/k/a/a;
invoke-interface {v0, p1, p2, p3}, Lcom/facebook/k/a/a;->badVerifyInvoked(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
:cond_9
array-length v0, p2
const/4 v1, 0x1
if-le v0, v1, :cond_15
new-instance v0, Ljavax/net/ssl/SSLException;
const-string v1, "Certificate has multiple common names"
invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
array-length v0, p2
if-nez v0, :cond_3e
const/4 v0, 0x0
:goto_19
iget-object v1, p0, Lcom/facebook/k/a/d;->b:Lcom/facebook/k/a/c;
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/k/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/k/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/k/a/e;->a()Z
move-result v0
if-nez v0, :cond_42
new-instance v0, Ljavax/net/ssl/SSLException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Failed to verify cns and subjectAlts for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3e
const/4 v0, 0x0
aget-object v0, p2, v0
goto :goto_19
:cond_42
return-void
.end method
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
.registers 4
iget-object v0, p0, Lcom/facebook/k/a/d;->b:Lcom/facebook/k/a/c;
invoke-virtual {v0, p1, p2}, Lcom/facebook/k/a/c;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
move-result v0
return v0
.end method