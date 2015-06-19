.class  Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "ThirdRequestConsole.java"
.implements Ljavax/net/ssl/X509TrustManager;
.field final synthetic this$1:Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory;
.method constructor <init>(Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory$1;->this$1:Lcom/pinguo/camera360/cloud/struct/ThirdRequestConsole$MySSLSocketFactory;
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
.registers 2
const/4 v0, 0x0
return-object v0
.end method