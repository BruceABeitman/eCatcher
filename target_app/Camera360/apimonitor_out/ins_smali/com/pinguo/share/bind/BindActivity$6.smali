.class  Lcom/pinguo/share/bind/BindActivity$6;
.super Ljava/lang/Thread;
.source "BindActivity.java"
.field final synthetic this$0:Lcom/pinguo/share/bind/BindActivity;
.field private final synthetic val$site:Ljava/lang/String;
.field private final synthetic val$value:Ljava/lang/String;
.method constructor <init>(Lcom/pinguo/share/bind/BindActivity;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
iput-object p2, p0, Lcom/pinguo/share/bind/BindActivity$6;->val$value:Ljava/lang/String;
iput-object p3, p0, Lcom/pinguo/share/bind/BindActivity$6;->val$site:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v9, 0x4
:try_start_1
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/share/net/ServiceConnection;->getServiceConnection(Landroid/content/Context;)Lcom/pinguo/share/net/ServiceConnection;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/share/bind/BindManager;->getDispatchBean(Landroid/content/Context;)Lcom/pinguo/share/bind/DispatchBean;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/share/bind/DispatchBean;->getAuth()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$6;->val$value:Ljava/lang/String;
iget-object v3, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v3}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/share/bind/BindActivity$6;->val$site:Ljava/lang/String;
iget-object v5, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v5}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/share/bind/BindSharedPreferences;->isSelectedBind(Landroid/content/Context;)Z
move-result v5
if-eqz v5, :cond_48
const-string/jumbo v5, "1"
:goto_32
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/share/net/ServiceConnection;->ssoBind(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v0}, Lcom/pinguo/share/bind/BindActivity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_4c
const-string/jumbo v0, "BindActivity"
const-string/jumbo v1, "Activity already finished!"
invoke-static {v0, v1}, Lcom/pinguo/Camera360Lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
:goto_47
return-void
:cond_48
const-string/jumbo v5, "0"
goto :goto_32
:cond_4c
sget-object v0, Lcom/pinguo/share/bind/BindManager;->dispatchBean:Lcom/pinguo/share/bind/DispatchBean;
invoke-virtual {v0}, Lcom/pinguo/share/bind/DispatchBean;->getArray()[Lcom/pinguo/share/website/WebSiteInfoBean;
move-result-object v0
invoke-static {}, Lcom/pinguo/share/bind/BindActivity;->access$15()I
move-result v1
aget-object v0, v0, v1
iget-object v1, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
invoke-virtual {v1}, Lcom/pinguo/share/bind/BindActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->isShareInto:Z
invoke-static {v2}, Lcom/pinguo/share/bind/BindActivity;->access$12(Lcom/pinguo/share/bind/BindActivity;)Z
move-result v2
invoke-static {v8, v0, v1, v2}, Lcom/pinguo/share/bind/BindManager;->saveWebSiteInfo(Ljava/lang/String;Lcom/pinguo/share/website/WebSiteInfoBean;Landroid/content/Context;Z)Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
:try_end_76
.catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_76} :catch_77
.catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_76} :catch_89
.catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_76} :catch_9b
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_76} :catch_ad
goto :goto_47
:catch_77
move-exception v6
invoke-virtual {v6}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_47
:catch_89
move-exception v6
invoke-virtual {v6}, Ljava/net/SocketTimeoutException;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_47
:catch_9b
move-exception v6
invoke-virtual {v6}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_47
:catch_ad
move-exception v6
invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
iget-object v0, p0, Lcom/pinguo/share/bind/BindActivity$6;->this$0:Lcom/pinguo/share/bind/BindActivity;
#getter for: Lcom/pinguo/share/bind/BindActivity;->myHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/share/bind/BindActivity;->access$7(Lcom/pinguo/share/bind/BindActivity;)Landroid/os/Handler;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
goto :goto_47
.end method