.class final Lcom/facebook/af;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final a:Landroid/os/Messenger;
.field  b:Landroid/os/Messenger;
.field final synthetic c:Lcom/facebook/Session;
.method constructor <init>(Lcom/facebook/Session;)V
.registers 5
iput-object p1, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lcom/facebook/ag;
iget-object v2, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
invoke-direct {v1, v2, p0}, Lcom/facebook/ag;-><init>(Lcom/facebook/Session;Lcom/facebook/af;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/facebook/af;->a:Landroid/os/Messenger;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/af;->b:Landroid/os/Messenger;
return-void
.end method
.method static synthetic a(Lcom/facebook/af;)V
.registers 1
invoke-direct {p0}, Lcom/facebook/af;->b()V
return-void
.end method
.method private b()V
.registers 2
iget-object v0, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->d(Lcom/facebook/Session;)Lcom/facebook/af;
move-result-object v0
if-ne v0, p0, :cond_d
iget-object v0, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
invoke-static {v0}, Lcom/facebook/Session;->e(Lcom/facebook/Session;)Lcom/facebook/af;
:cond_d
return-void
.end method
.method public final a()V
.registers 4
invoke-static {}, Lcom/facebook/Session;->i()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/w;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_20
invoke-static {}, Lcom/facebook/Session;->m()Landroid/content/Context;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
move-result v0
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Lcom/facebook/Session;->a(Ljava/util/Date;)V
:goto_1f
return-void
:cond_20
invoke-direct {p0}, Lcom/facebook/af;->b()V
goto :goto_1f
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/af; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v0, p0, Lcom/facebook/af;->b:Landroid/os/Messenger;
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "access_token"
iget-object v2, p0, Lcom/facebook/af;->c:Lcom/facebook/Session;
invoke-virtual {v2}, Lcom/facebook/Session;->l()Lcom/facebook/AccessToken;
move-result-object v2
invoke-virtual {v2}, Lcom/facebook/AccessToken;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/af;->a:Landroid/os/Messenger;
iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
:try_start_26
iget-object v0, p0, Lcom/facebook/af;->b:Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_2b
:try_end_2b
.catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
const-string v1, " - Lcom/facebook/af; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_2c
move-exception v0
invoke-direct {p0}, Lcom/facebook/af;->b()V
goto :goto_2b
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/af; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/facebook/af;->b()V
invoke-static {}, Lcom/facebook/Session;->m()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/facebook/af; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method