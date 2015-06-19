.class public Lcom/bbm/receiver/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedReceiver.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 6
const/4 v2, 0x0
const-string v0, "onReceive"
const-class v1, Lcom/bbm/receiver/BootCompletedReceiver;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->A()Lcom/bbm/f/af;
move-result-object v0
sget-object v1, Lcom/bbm/f/af;->a:Lcom/bbm/f/af;
if-eq v0, v1, :cond_25
const-string v0, "No credential, self death."
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {p1}, Lcom/bbm/receiver/a;->a(Landroid/content/Context;)V
invoke-static {}, Landroid/os/Process;->myPid()I
move-result v0
invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
:cond_25
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.intent.action.BOOT_COMPLETED"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_38
const-string v0, "Auto start the BBM service"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_38
return-void
.end method