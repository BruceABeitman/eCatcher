.class  Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "HttpManager.java"
.implements Ljavax/net/ssl/X509TrustManager;
.field final synthetic this$1:Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory;
.method constructor <init>(Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory$1;->this$1:Lcom/sina/weibo/sdk/net/HttpManager$MySSLSocketFactory;
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