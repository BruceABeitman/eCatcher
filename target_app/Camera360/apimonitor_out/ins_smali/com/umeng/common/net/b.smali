.class  Lcom/umeng/common/net/b;
.super Ljava/lang/Object;
.source "DownloadAgent.java"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/umeng/common/net/a;
.method constructor <init>(Lcom/umeng/common/net/a;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/common/net/b; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "ServiceConnection.onServiceConnected"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
new-instance v1, Landroid/os/Messenger;
invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
invoke-static {v0, v1}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;Landroid/os/Messenger;)V
iget-object v0, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
invoke-interface {v0}, Lcom/umeng/common/net/k;->a()V
:cond_25
const/4 v0, 0x0
const/4 v1, 0x4
:try_start_27
invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v0
new-instance v1, Lcom/umeng/common/net/a$a;
iget-object v2, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v2}, Lcom/umeng/common/net/a;->b(Lcom/umeng/common/net/a;)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v3}, Lcom/umeng/common/net/a;->c(Lcom/umeng/common/net/a;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v4}, Lcom/umeng/common/net/a;->d(Lcom/umeng/common/net/a;)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lcom/umeng/common/net/a$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v2}, Lcom/umeng/common/net/a;->e(Lcom/umeng/common/net/a;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/umeng/common/net/a$a;->d:Ljava/lang/String;
iget-object v2, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v2}, Lcom/umeng/common/net/a;->f(Lcom/umeng/common/net/a;)Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/umeng/common/net/a$a;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v2}, Lcom/umeng/common/net/a;->g(Lcom/umeng/common/net/a;)[Ljava/lang/String;
move-result-object v2
iput-object v2, v1, Lcom/umeng/common/net/a$a;->f:[Ljava/lang/String;
iget-object v2, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v2}, Lcom/umeng/common/net/a;->h(Lcom/umeng/common/net/a;)Z
move-result v2
iput-boolean v2, v1, Lcom/umeng/common/net/a$a;->g:Z
invoke-virtual {v1}, Lcom/umeng/common/net/a$a;->a()Landroid/os/Bundle;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
iget-object v1, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
iget-object v1, v1, Lcom/umeng/common/net/a;->a:Landroid/os/Messenger;
iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;
iget-object v1, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
invoke-static {v1}, Lcom/umeng/common/net/a;->i(Lcom/umeng/common/net/a;)Landroid/os/Messenger;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
:goto_78
:try_end_78
.catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_78} :catch_79
const-string v1, " - Lcom/umeng/common/net/b; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_79
move-exception v0
goto :goto_78
.end method
.method public onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/umeng/common/net/b; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "ServiceConnection.onServiceDisconnected"
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/umeng/common/net/b;->a:Lcom/umeng/common/net/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;Landroid/os/Messenger;)V
const-string v1, " - Lcom/umeng/common/net/b; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method