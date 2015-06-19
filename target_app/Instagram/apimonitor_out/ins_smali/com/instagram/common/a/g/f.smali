.class public Lcom/instagram/common/a/g/f;
.super Ljava/lang/Object;
.source "IgHostnameVerifierAdaptor.java"
.implements Lch/boye/httpclientandroidlib/conn/ssl/X509HostnameVerifier;
.field private static final b:Ljava/lang/Class;
.field private final a:Lcom/facebook/k/a/c;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/common/a/g/f;
sput-object v0, Lcom/instagram/common/a/g/f;->b:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/facebook/k/a/c;
invoke-direct {v0}, Lcom/facebook/k/a/c;-><init>()V
iput-object v0, p0, Lcom/instagram/common/a/g/f;->a:Lcom/facebook/k/a/c;
return-void
.end method
.method public verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)V
.registers 6
iget-object v0, p0, Lcom/instagram/common/a/g/f;->a:Lcom/facebook/k/a/c;
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
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSocket;)V
.registers 6
invoke-virtual {p2}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;
move-result-object v0
invoke-virtual {p0, p1, v0}, Lcom/instagram/common/a/g/f;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
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
.method public verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 9
const/4 v4, 0x1
const/4 v3, 0x0
sget-object v0, Lcom/instagram/common/a/g/f;->b:Ljava/lang/Class;
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/Object;
aput-object p1, v0, v3
invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
aput-object v1, v0, v4
const/4 v1, 0x2
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
aput-object v2, v0, v1
array-length v0, p2
if-le v0, v4, :cond_21
new-instance v0, Ljavax/net/ssl/SSLException;
const-string v1, "Certificate has multiple common names"
invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
array-length v0, p2
if-nez v0, :cond_4a
const/4 v0, 0x0
:goto_25
iget-object v1, p0, Lcom/instagram/common/a/g/f;->a:Lcom/facebook/k/a/c;
invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v2
invoke-virtual {v1, p1, v0, v2}, Lcom/facebook/k/a/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/facebook/k/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/k/a/e;->a()Z
move-result v0
if-nez v0, :cond_4d
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
:cond_4a
aget-object v0, p2, v3
goto :goto_25
:cond_4d
return-void
.end method
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/common/a/g/f;->a:Lcom/facebook/k/a/c;
invoke-virtual {v0, p1, p2}, Lcom/facebook/k/a/c;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
move-result v0
return v0
.end method