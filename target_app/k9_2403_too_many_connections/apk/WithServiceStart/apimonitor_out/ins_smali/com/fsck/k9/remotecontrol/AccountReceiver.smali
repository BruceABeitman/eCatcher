.class  Lcom/fsck/k9/remotecontrol/AccountReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccountReceiver.java"
.field  receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;
.method protected constructor <init>(Lcom/fsck/k9/remotecontrol/K9AccountReceptor;)V
.registers 3
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;
iput-object p1, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 7
const-string v1, "com.fsck.k9.K9RemoteControl.requestAccounts"
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1a
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/fsck/k9/remotecontrol/AccountReceiver;->getResultExtras(Z)Landroid/os/Bundle;
move-result-object v0
if-nez v0, :cond_1b
sget-object v1, Lcom/fsck/k9/remotecontrol/K9RemoteControl;->LOG_TAG:Ljava/lang/String;
const-string v2, "Response bundle is empty"
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
:goto_1a
:cond_1a
return-void
:cond_1b
iget-object v1, p0, Lcom/fsck/k9/remotecontrol/AccountReceiver;->receptor:Lcom/fsck/k9/remotecontrol/K9AccountReceptor;
const-string v2, "com.fsck.k9.K9RemoteControl.accountUuids"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
const-string v3, "com.fsck.k9.K9RemoteControl.accountDescriptions"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/fsck/k9/remotecontrol/K9AccountReceptor;->accounts([Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_1a
.end method