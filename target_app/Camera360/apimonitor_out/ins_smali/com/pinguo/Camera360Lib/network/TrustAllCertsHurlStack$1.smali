.class  Lcom/pinguo/Camera360Lib/network/TrustAllCertsHurlStack$1;
.super Ljava/lang/Object;
.source "TrustAllCertsHurlStack.java"
.implements Ljavax/net/ssl/X509TrustManager;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
.registers 3
const/4 v1, 0x0
new-array v0, v1, [Ljava/security/cert/X509Certificate;
return-object v0
.end method