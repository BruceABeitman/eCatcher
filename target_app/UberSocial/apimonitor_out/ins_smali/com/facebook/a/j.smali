.class  Lcom/facebook/a/j;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final a:Landroid/os/Messenger;
.field final b:Lcom/facebook/a/g;
.field final c:Landroid/content/Context;
.field  d:Landroid/os/Messenger;
.field final synthetic e:Lcom/facebook/a/e;
.method public constructor <init>(Lcom/facebook/a/e;Landroid/content/Context;Lcom/facebook/a/g;)V
.registers 7
iput-object p1, p0, Lcom/facebook/a/j;->e:Lcom/facebook/a/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lcom/facebook/a/i;
iget-object v2, p0, Lcom/facebook/a/j;->e:Lcom/facebook/a/e;
invoke-direct {v1, v2, p0}, Lcom/facebook/a/i;-><init>(Lcom/facebook/a/e;Lcom/facebook/a/j;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lcom/facebook/a/j;->a:Landroid/os/Messenger;
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/j;->d:Landroid/os/Messenger;
iput-object p2, p0, Lcom/facebook/a/j;->c:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
return-void
.end method
.method private a()V
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "access_token"
iget-object v2, p0, Lcom/facebook/a/j;->e:Lcom/facebook/a/e;
invoke-static {v2}, Lcom/facebook/a/e;->a(Lcom/facebook/a/e;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/facebook/a/j;->a:Landroid/os/Messenger;
iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
:try_start_1b
iget-object v0, p0, Lcom/facebook/a/j;->d:Landroid/os/Messenger;
invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:try_end_20
.catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_20} :catch_21
:goto_20
return-void
:catch_21
move-exception v0
iget-object v0, p0, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
new-instance v1, Ljava/lang/Error;
const-string v2, "Service connection error"
invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/facebook/a/g;->a(Ljava/lang/Error;)V
goto :goto_20
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/a/j; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Messenger;
invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
iput-object v0, p0, Lcom/facebook/a/j;->d:Landroid/os/Messenger;
invoke-direct {p0}, Lcom/facebook/a/j;->a()V
const-string v1, " - Lcom/facebook/a/j; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/a/j; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/a/j;->b:Lcom/facebook/a/g;
new-instance v1, Ljava/lang/Error;
const-string v2, "Service disconnected"
invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/facebook/a/g;->a(Ljava/lang/Error;)V
iget-object v0, p0, Lcom/facebook/a/j;->c:Landroid/content/Context;
invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/facebook/a/j; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method