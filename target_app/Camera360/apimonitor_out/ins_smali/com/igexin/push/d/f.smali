.class  Lcom/igexin/push/d/f;
.super Ljava/lang/Object;
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/igexin/push/d/c;
.method constructor <init>(Lcom/igexin/push/d/c;)V
.registers 2
iput-object p1, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/igexin/push/d/f; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-static {v0}, Lcom/igexin/push/d/c;->b(Lcom/igexin/push/d/c;)Lcom/igexin/push/core/d;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/d;->b:Lcom/igexin/push/core/d;
if-ne v0, v1, :cond_26
iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-static {v0}, Lcom/igexin/push/d/c;->c(Lcom/igexin/push/d/c;)Lcom/igexin/push/d/b;
move-result-object v0
invoke-static {p2}, Lcom/igexin/sdk/aidl/c;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/IGexinMsgService;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/b;->a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V
new-instance v0, Lcom/igexin/push/d/a;
invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V
sget-object v1, Lcom/igexin/push/core/c;->d:Lcom/igexin/push/core/c;
invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V
iget-object v1, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V
:cond_26
const-string v1, " - Lcom/igexin/push/d/f; onServiceConnected"
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
const-string v0, " + Lcom/igexin/push/d/f; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-static {v0}, Lcom/igexin/push/d/c;->b(Lcom/igexin/push/d/c;)Lcom/igexin/push/core/d;
move-result-object v0
sget-object v1, Lcom/igexin/push/core/d;->d:Lcom/igexin/push/core/d;
if-ne v0, v1, :cond_1b
invoke-static {}, Lcom/igexin/push/core/f;->a()Lcom/igexin/push/core/f;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/core/f;->e()Lcom/igexin/push/d/j;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/igexin/push/d/j;->b(Z)V
iget-object v0, p0, Lcom/igexin/push/d/f;->a:Lcom/igexin/push/d/c;
invoke-static {v0}, Lcom/igexin/push/d/c;->d(Lcom/igexin/push/d/c;)V
:cond_1b
const-string v1, " - Lcom/igexin/push/d/f; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method