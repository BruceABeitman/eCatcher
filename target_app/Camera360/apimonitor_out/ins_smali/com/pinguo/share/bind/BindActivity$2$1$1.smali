.class  Lcom/pinguo/share/bind/BindActivity$2$1$1;
.super Ljava/lang/Thread;
.source "BindActivity.java"
.field final synthetic this$2:Lcom/pinguo/share/bind/BindActivity$2$1;
.field private final synthetic val$cuid:Ljava/lang/String;
.field private final synthetic val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity$2$1;Lcom/pinguo/share/website/WebSiteInfoBean;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->this$2:Lcom/pinguo/share/bind/BindActivity$2$1;
iput-object p2, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
iput-object p3, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->val$cuid:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->this$2:Lcom/pinguo/share/bind/BindActivity$2$1;
#getter for: Lcom/pinguo/share/bind/BindActivity$2$1;->this$1:Lcom/pinguo/share/bind/BindActivity$2;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity$2$1;->access$0(Lcom/pinguo/share/bind/BindActivity$2$1;)Lcom/pinguo/share/bind/BindActivity$2;
move-result-object v1
#getter for: Lcom/pinguo/share/bind/BindActivity$2;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-static {v1}, Lcom/pinguo/share/bind/BindActivity$2;->access$0(Lcom/pinguo/share/bind/BindActivity$2;)Lcom/pinguo/share/bind/BindActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
iget-object v2, v2, Lcom/pinguo/share/website/WebSiteInfoBean;->site_code:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->val$cuid:Ljava/lang/String;
iget-object v4, p0, Lcom/pinguo/share/bind/BindActivity$2$1$1;->val$wsib:Lcom/pinguo/share/website/WebSiteInfoBean;
invoke-virtual {v4}, Lcom/pinguo/share/website/WebSiteInfoBean;->getUid()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/share/net/ServiceConnection;->loginout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
:goto_21
:try_end_21
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_21} :catch_22
.catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_21} :catch_27
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_21} :catch_2c
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_31
return-void
:catch_22
move-exception v0
invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
goto :goto_21
:catch_27
move-exception v0
invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->printStackTrace()V
goto :goto_21
:catch_2c
move-exception v0
invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
goto :goto_21
:catch_31
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_21
.end method