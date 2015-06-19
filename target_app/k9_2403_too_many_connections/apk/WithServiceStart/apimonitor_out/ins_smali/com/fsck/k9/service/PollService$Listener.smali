.class  Lcom/fsck/k9/service/PollService$Listener;
.super Lcom/fsck/k9/MessagingListener;
.source "PollService.java"
.field  accountsChecked:Ljava/util/HashMap;
.field private startId:I
.field final synthetic this$0:Lcom/fsck/k9/service/PollService;
.field private wakeLock:Landroid/os/PowerManager$WakeLock;
.method constructor <init>(Lcom/fsck/k9/service/PollService;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
const/4 v0, -0x1
iput v0, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I
return-void
.end method
.method private checkMailDone(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 10
iget-object v5, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z
move-result v5
if-eqz v5, :cond_9
:cond_8
return-void
:cond_9
invoke-static {p1}, Lcom/fsck/k9/Preferences;->getPreferences(Landroid/content/Context;)Lcom/fsck/k9/Preferences;
move-result-object v5
invoke-virtual {v5}, Lcom/fsck/k9/Preferences;->getAccounts()[Lcom/fsck/k9/Account;
move-result-object v0
array-length v2, v0
const/4 v1, 0x0
:goto_13
if-ge v1, v2, :cond_8
aget-object v4, v0, v1
iget-object v5, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
invoke-virtual {v4}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Integer;
if-eqz v3, :cond_36
iget-object v5, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
invoke-virtual {v5}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;
move-result-object v5
invoke-static {v5}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v5
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v6
invoke-virtual {v5, p1, v4, v6}, Lcom/fsck/k9/MessagingController;->notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;I)V
:cond_36
add-int/lit8 v1, v1, 0x1
goto :goto_13
.end method
.method private release()V
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
invoke-virtual {v1}, Lcom/fsck/k9/service/PollService;->getApplication()Landroid/app/Application;
move-result-object v1
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/fsck/k9/MessagingController;->setCheckMailListener(Lcom/fsck/k9/MessagingListener;)V
iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
invoke-static {v1, v2}, Lcom/fsck/k9/service/MailService;->rescheduleCheck(Landroid/content/Context;Ljava/lang/Integer;)V
invoke-virtual {p0}, Lcom/fsck/k9/service/PollService$Listener;->wakeLockRelease()V
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_34
const-string v1, "k9"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "PollService stopping with startId = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_34
iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
iget v2, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I
invoke-virtual {v1, v2}, Lcom/fsck/k9/service/PollService;->stopSelf(I)V
return-void
.end method
.method public checkMailFailed(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
invoke-direct {p0}, Lcom/fsck/k9/service/PollService$Listener;->release()V
return-void
.end method
.method public checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 5
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_b
const-string v0, "k9"
const-string v1, "***** PollService *****: checkMailFinished"
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_b
:try_start_b
invoke-direct {p0, p1, p2}, Lcom/fsck/k9/service/PollService$Listener;->checkMailDone(Landroid/content/Context;Lcom/fsck/k9/Account;)V
:try_end_e
.catchall {:try_start_b .. :try_end_e} :catchall_12
invoke-direct {p0}, Lcom/fsck/k9/service/PollService$Listener;->release()V
return-void
:catchall_12
move-exception v0
invoke-direct {p0}, Lcom/fsck/k9/service/PollService$Listener;->release()V
throw v0
.end method
.method public checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public getStartId()I
.registers 2
iget v0, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I
return v0
.end method
.method public setStartId(I)V
.registers 2
iput p1, p0, Lcom/fsck/k9/service/PollService$Listener;->startId:I
return-void
.end method
.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 9
invoke-virtual {p1}, Lcom/fsck/k9/Account;->isNotifyNewMail()Z
move-result v1
if-eqz v1, :cond_2b
iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_19
const/4 v1, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:cond_19
iget-object v1, p0, Lcom/fsck/k9/service/PollService$Listener;->accountsChecked:Ljava/util/HashMap;
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v3
add-int/2addr v3, p4
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_2b
return-void
.end method
.method public declared-synchronized wakeLockAcquire()V
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->this$0:Lcom/fsck/k9/service/PollService;
const-string v3, "power"
invoke-virtual {v2, v3}, Lcom/fsck/k9/service/PollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/PowerManager;
const/4 v2, 0x1
const-string v3, "K9"
invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
iget-object v2, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
const-wide/32 v3, 0x927c0
invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
if-eqz v0, :cond_29
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:cond_29
:try_end_29
.catchall {:try_start_1 .. :try_end_29} :catchall_2b
monitor-exit p0
return-void
:catchall_2b
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized wakeLockRelease()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/service/PollService$Listener;->wakeLock:Landroid/os/PowerManager$WakeLock;
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_f
:cond_d
monitor-exit p0
return-void
:catchall_f
move-exception v0
monitor-exit p0
throw v0
.end method