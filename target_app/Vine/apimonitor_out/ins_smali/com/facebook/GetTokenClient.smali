.class final Lcom/facebook/GetTokenClient;
.super Ljava/lang/Object;
.source "GetTokenClient.java"
.implements Landroid/content/ServiceConnection;
.field final applicationId:Ljava/lang/String;
.field final context:Landroid/content/Context;
.field final handler:Landroid/os/Handler;
.field  listener:Lcom/facebook/GetTokenClient$CompletedListener;
.field  running:Z
.field  sender:Landroid/os/Messenger;
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_15
:goto_9
iput-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;
new-instance v1, Lcom/facebook/GetTokenClient$1;
invoke-direct {v1, p0}, Lcom/facebook/GetTokenClient$1;-><init>(Lcom/facebook/GetTokenClient;)V
iput-object v1, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;
return-void
:cond_15
move-object v0, p1
goto :goto_9
.end method
.method static synthetic access$000(Lcom/facebook/GetTokenClient;Landroid/os/Message;)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/GetTokenClient;->handleMessage(Landroid/os/Message;)V
return-void
.end method
.method private callback(Landroid/os/Bundle;)V
.registers 4
iget-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z
if-nez v1, :cond_5
:goto_4
:cond_4
return-void
:cond_5
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z
iget-object v0, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;
if-eqz v0, :cond_4
invoke-interface {v0, p1}, Lcom/facebook/GetTokenClient$CompletedListener;->completed(Landroid/os/Bundle;)V
goto :goto_4
.end method
.method private getToken()V
.registers 7
const/4 v5, 0x0
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v3, "com.facebook.platform.extra.APPLICATION_ID"
iget-object v4, p0, Lcom/facebook/GetTokenClient;->applicationId:Ljava/lang/String;
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const/high16 v3, 0x1
invoke-static {v5, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v2
const v3, 0x133060d
iput v3, v2, Landroid/os/Message;->arg1:I
invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
new-instance v3, Landroid/os/Messenger;
iget-object v4, p0, Lcom/facebook/GetTokenClient;->handler:Landroid/os/Handler;
invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
:try_start_24
iget-object v3, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;
invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_29
:try_end_29
.catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_29} :catch_2a
return-void
:catch_2a
move-exception v1
invoke-direct {p0, v5}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V
goto :goto_29
.end method
.method private handleMessage(Landroid/os/Message;)V
.registers 6
iget v2, p1, Landroid/os/Message;->what:I
const v3, 0x10001
if-ne v2, v3, :cond_1c
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v1
const-string v2, "com.facebook.platform.status.ERROR_TYPE"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1d
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V
:goto_17
iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;
invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
:cond_1c
return-void
:cond_1d
invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V
goto :goto_17
.end method
.method  cancel()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/facebook/GetTokenClient;->running:Z
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/GetTokenClient; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v0, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;
invoke-direct {p0}, Lcom/facebook/GetTokenClient;->getToken()V
const-string v1, " - Lcom/facebook/GetTokenClient; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/GetTokenClient; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/facebook/GetTokenClient;->sender:Landroid/os/Messenger;
iget-object v0, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V
const-string v1, " - Lcom/facebook/GetTokenClient; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method  setCompletedListener(Lcom/facebook/GetTokenClient$CompletedListener;)V
.registers 2
iput-object p1, p0, Lcom/facebook/GetTokenClient;->listener:Lcom/facebook/GetTokenClient$CompletedListener;
return-void
.end method
.method  start()Z
.registers 4
const/4 v1, 0x1
new-instance v0, Landroid/content/Intent;
const-string v2, "com.facebook.platform.PLATFORM_SERVICE"
invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "android.intent.category.DEFAULT"
invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;
invoke-static {v2, v0}, Lcom/facebook/NativeProtocol;->validateKatanaServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
if-nez v0, :cond_1b
const/4 v1, 0x0
invoke-direct {p0, v1}, Lcom/facebook/GetTokenClient;->callback(Landroid/os/Bundle;)V
const/4 v1, 0x0
:goto_1a
return v1
:cond_1b
iput-boolean v1, p0, Lcom/facebook/GetTokenClient;->running:Z
iget-object v2, p0, Lcom/facebook/GetTokenClient;->context:Landroid/content/Context;
invoke-virtual {v2, v0, p0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
goto :goto_1a
.end method