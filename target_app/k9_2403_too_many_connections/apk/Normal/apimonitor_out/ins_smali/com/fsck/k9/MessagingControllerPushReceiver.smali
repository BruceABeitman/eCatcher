.class public Lcom/fsck/k9/MessagingControllerPushReceiver;
.super Ljava/lang/Object;
.source "MessagingControllerPushReceiver.java"
.implements Lcom/fsck/k9/mail/PushReceiver;
.field final account:Lcom/fsck/k9/Account;
.field final controller:Lcom/fsck/k9/MessagingController;
.field final mApplication:Landroid/app/Application;
.field  threadWakeLock:Ljava/lang/ThreadLocal;
.method public constructor <init>(Landroid/app/Application;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingController;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ThreadLocal;
invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->threadWakeLock:Ljava/lang/ThreadLocal;
iput-object p2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/MessagingController;
iput-object p1, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->mApplication:Landroid/app/Application;
return-void
.end method
.method public acquireWakeLock()V
.registers 6
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->threadWakeLock:Ljava/lang/ThreadLocal;
invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/os/PowerManager$WakeLock;
if-nez v1, :cond_24
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->mApplication:Landroid/app/Application;
const-string v3, "power"
invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/4 v2, 0x1
const-string v3, "K9"
invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->threadWakeLock:Ljava/lang/ThreadLocal;
invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
:cond_24
const-wide/32 v2, 0xea60
invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
sget-boolean v2, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v2, :cond_4e
const-string v2, "k9"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Acquired WakeLock for Pushing for thread "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4e
return-void
.end method
.method public getPushState(Ljava/lang/String;)Ljava/lang/String;
.registers 8
const/4 v1, 0x0
:try_start_1
iget-object v3, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->mApplication:Landroid/app/Application;
invoke-static {v3, v4}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v2
check-cast v2, Lcom/fsck/k9/mail/store/LocalStore;
invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v1
sget-object v3, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v1, v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getPushState()Ljava/lang/String;
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_53
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_22
move-result-object v3
if-eqz v1, :cond_21
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_21
:goto_21
return-object v3
:catch_22
move-exception v3
move-object v0, v3
:try_start_24
const-string v3, "k9"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Unable to get push state from account "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
invoke-virtual {v5}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, ", folder "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_4c
.catchall {:try_start_24 .. :try_end_4c} :catchall_53
const/4 v3, 0x0
if-eqz v1, :cond_21
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
goto :goto_21
:catchall_53
move-exception v3
if-eqz v1, :cond_59
invoke-virtual {v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:cond_59
throw v3
.end method
.method public messagesArrived(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
.registers 6
iget-object v0, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, p2, v2}, Lcom/fsck/k9/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V
return-void
.end method
.method public messagesFlagsChanged(Lcom/fsck/k9/mail/Folder;Ljava/util/List;)V
.registers 6
iget-object v0, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
const/4 v2, 0x1
invoke-virtual {v0, v1, p1, p2, v2}, Lcom/fsck/k9/MessagingController;->messagesArrived(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;Z)V
return-void
.end method
.method public pushError(Ljava/lang/String;Ljava/lang/Exception;)V
.registers 7
move-object v1, p1
const/4 v0, 0x0
if-nez v1, :cond_a
if-eqz p2, :cond_a
invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v1
:cond_a
move-object v0, v1
if-eqz p2, :cond_11
invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
:cond_11
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/MessagingController;
iget-object v3, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
invoke-virtual {v2, v3, v1, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public releaseWakeLock()V
.registers 5
const-string v3, "k9"
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_d
const-string v1, "k9"
const-string v1, "Considering releasing WakeLock for Pushing"
invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_d
iget-object v1, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->threadWakeLock:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager$WakeLock;
if-eqz v0, :cond_3f
sget-boolean v1, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v1, :cond_3b
const-string v1, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Releasing WakeLock for Pushing for thread "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_3b
invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
:goto_3e
return-void
:cond_3f
const-string v1, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No WakeLock waiting to be released for thread "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3e
.end method
.method public setPushActive(Ljava/lang/String;Z)V
.registers 6
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->controller:Lcom/fsck/k9/MessagingController;
invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1c
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/MessagingListener;
iget-object v2, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->account:Lcom/fsck/k9/Account;
invoke-virtual {v1, v2, p1, p2}, Lcom/fsck/k9/MessagingListener;->setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
goto :goto_a
:cond_1c
return-void
.end method
.method public sleep(J)V
.registers 9
iget-object v0, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->mApplication:Landroid/app/Application;
iget-object v1, p0, Lcom/fsck/k9/MessagingControllerPushReceiver;->threadWakeLock:Ljava/lang/ThreadLocal;
invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/os/PowerManager$WakeLock;
const-wide/32 v4, 0xea60
move-wide v1, p1
invoke-static/range {v0 .. v5}, Lcom/fsck/k9/service/SleepService;->sleep(Landroid/content/Context;JLandroid/os/PowerManager$WakeLock;J)V
return-void
.end method