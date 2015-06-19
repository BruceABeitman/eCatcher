.class final Lcom/facebook/cd;
.super Ljava/lang/Object;
.source "Session.java"
.implements Landroid/content/ServiceConnection;
.field final a:Landroid/os/Messenger;
.field  b:Landroid/os/Messenger;
.field final synthetic c:Lcom/facebook/bo;
.method constructor <init>(Lcom/facebook/bo;)V
.registers 5
iput-object p1, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lcom/facebook/ce;
iget-object v2, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-direct {v1, v2, p0}, Lcom/facebook/ce;-><init>(Lcom/facebook/bo;Lcom/facebook/cd;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/facebook/cd;->a:Landroid/os/Messenger;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;
return-void
.end method
.method static synthetic a(Lcom/facebook/cd;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/cd;->b()V
return-void
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-static {v0}, Lcom/facebook/bo;->d(Lcom/facebook/bo;)Lcom/facebook/cd;
move-result-object v0
if-ne v0, p0, :cond_d
iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-static {v0}, Lcom/facebook/bo;->e(Lcom/facebook/bo;)Lcom/facebook/cd;
:cond_d
return-void
.end method
.method private c()V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "access_token"
iget-object v2, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-virtual {v2}, Lcom/facebook/bo;->j()Lcom/facebook/a;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/a;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/cd;->a:Landroid/os/Messenger;
iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
:try_start_1f
iget-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_end_24
.catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_24} :catch_25
:goto_24
return-void
:catch_25
move-exception v0
invoke-direct {p0}, Lcom/facebook/cd;->b()V
goto :goto_24
.end method
.method public final a()V
.registers 5
invoke-static {}, Lcom/facebook/bo;->h()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/facebook/ao;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_27
invoke-static {}, Lcom/facebook/bo;->k()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/facebook/cd;
iget-object v3, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
invoke-direct {v2, v3}, Lcom/facebook/cd;-><init>(Lcom/facebook/bo;)V
const/4 v3, 0x1
invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/facebook/cd;->c:Lcom/facebook/bo;
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Lcom/facebook/bo;->a(Ljava/util/Date;)V
:goto_26
return-void
:cond_27
invoke-direct {p0}, Lcom/facebook/cd;->b()V
goto :goto_26
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/cd; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v0, p0, Lcom/facebook/cd;->b:Landroid/os/Messenger;
invoke-direct {p0}, Lcom/facebook/cd;->c()V
const-string v1, " - Lcom/facebook/cd; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/cd; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/cd;->b()V
invoke-static {}, Lcom/facebook/bo;->k()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/facebook/cd; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method