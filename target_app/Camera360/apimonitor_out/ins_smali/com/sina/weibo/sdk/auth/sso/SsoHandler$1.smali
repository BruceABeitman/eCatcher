.class  Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;
.super Ljava/lang/Object;
.source "SsoHandler.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
.method constructor <init>(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)V
.registers 2
iput-object p1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {p2}, Lcom/sina/sso/RemoteSSO$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sina/sso/RemoteSSO;
move-result-object v1
:try_start_4
invoke-interface {v1}, Lcom/sina/sso/RemoteSSO;->getPackageName()Ljava/lang/String;
move-result-object v4
invoke-interface {v1}, Lcom/sina/sso/RemoteSSO;->getActivityName()Ljava/lang/String;
move-result-object v3
iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthActivity:Landroid/app/Activity;
invoke-static {v5}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$2(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/app/Activity;
move-result-object v5
invoke-virtual {v5}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v5
iget-object v6, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mConnection:Landroid/content/ServiceConnection;
invoke-static {v6}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$3(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Landroid/content/ServiceConnection;
move-result-object v6
invoke-virtual {v5, v6}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#calls: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->startSingleSignOn(Ljava/lang/String;Ljava/lang/String;)Z
invoke-static {v5, v4, v3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$4(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;Ljava/lang/String;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_36
iget-object v5, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
invoke-static {v5}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuth;
move-result-object v5
iget-object v6, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-static {v6}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
move-result-object v6
invoke-virtual {v5, v6}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
:cond_36
:goto_36
:try_end_36
.catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_36} :catch_37
const-string v1, " - Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_37
move-exception v0
invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
goto :goto_36
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mWeiboAuth:Lcom/sina/weibo/sdk/auth/WeiboAuth;
invoke-static {v0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$0(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuth;
move-result-object v0
iget-object v1, p0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1;->this$0:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;
#getter for: Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->mAuthListener:Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
invoke-static {v1}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->access$1(Lcom/sina/weibo/sdk/auth/sso/SsoHandler;)Lcom/sina/weibo/sdk/auth/WeiboAuthListener;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/auth/WeiboAuth;->anthorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V
const-string v1, " - Lcom/sina/weibo/sdk/auth/sso/SsoHandler$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method