.class  Lcom/fsck/k9/MessagingController$28;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$flagSyncOnly:Z
.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;
.field final synthetic val$messages:Ljava/util/List;
.field final synthetic val$remoteFolder:Lcom/fsck/k9/mail/Folder;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Ljava/util/List;ZLjava/util/concurrent/CountDownLatch;)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$28;->val$messages:Ljava/util/List;
iput-boolean p5, p0, Lcom/fsck/k9/MessagingController$28;->val$flagSyncOnly:Z
iput-object p6, p0, Lcom/fsck/k9/MessagingController$28;->val$latch:Ljava/util/concurrent/CountDownLatch;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 16
const/4 v3, 0x0
:try_start_1
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v1
invoke-static {v0, v1}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v10
check-cast v10, Lcom/fsck/k9/mail/store/LocalStore;
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v0}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v10, v0}, Lcom/fsck/k9/mail/store/LocalStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
move-result-object v3
sget-object v0, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$28;->val$messages:Ljava/util/List;
iget-boolean v5, p0, Lcom/fsck/k9/MessagingController$28;->val$flagSyncOnly:Z
#calls: Lcom/fsck/k9/MessagingController;->downloadMessages(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
invoke-static/range {v0 .. v5}, Lcom/fsck/k9/MessagingController;->access$1200(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Ljava/util/List;Z)I
move-result v11
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$28;->val$messages:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
#calls: Lcom/fsck/k9/MessagingController;->setLocalUnreadCountToRemote(Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I
invoke-static {v0, v3, v1, v2}, Lcom/fsck/k9/MessagingController;->access$1300(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/mail/Folder;I)I
move-result v14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-virtual {v3, v0, v1}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setLastPush(J)V
const/4 v0, 0x0
invoke-virtual {v3, v0}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V
sget-boolean v0, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v0, :cond_65
const-string v0, "k9"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "messagesArrived newCount = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:cond_65
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v1}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v1
iget-object v2, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v0, v1, v2, v11}, Lcom/fsck/k9/MessagingController;->notifyAccount(Landroid/content/Context;Lcom/fsck/k9/Account;I)V
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_7c
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_e0
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/fsck/k9/MessagingListener;
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v9, v0, v1, v14}, Lcom/fsck/k9/MessagingListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
:try_end_93
.catchall {:try_start_1 .. :try_end_93} :catchall_d4
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_93} :catch_94
goto :goto_7c
:catch_94
move-exception v0
move-object v6, v0
:try_start_96
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
#calls: Lcom/fsck/k9/MessagingController;->getRootCauseMessage(Ljava/lang/Throwable;)Ljava/lang/String;
invoke-static {v0, v6}, Lcom/fsck/k9/MessagingController;->access$1400(Lcom/fsck/k9/MessagingController;Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Push failed: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_ae
.catchall {:try_start_96 .. :try_end_ae} :catchall_d4
move-result-object v7
:try_start_af
invoke-virtual {v3, v7}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->setStatus(Ljava/lang/String;)V
:try_end_b2
.catchall {:try_start_af .. :try_end_b2} :catchall_d4
.catch Ljava/lang/Exception; {:try_start_af .. :try_end_b2} :catch_f4
:goto_b2
:try_start_b2
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v0}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_bc
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_fd
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v9
check-cast v9, Lcom/fsck/k9/MessagingListener;
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$remoteFolder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {v1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v9, v0, v1, v7}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
:try_end_d3
.catchall {:try_start_b2 .. :try_end_d3} :catchall_d4
goto :goto_bc
:catchall_d4
move-exception v0
if-eqz v3, :cond_da
:try_start_d7
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:try_end_da
.catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_118
:cond_da
:goto_da
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$latch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
throw v0
:cond_e0
if-eqz v3, :cond_e5
:try_start_e2
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_eb
:cond_e5
:goto_e5
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$latch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
:goto_ea
return-void
:catch_eb
move-exception v6
const-string v0, "k9"
const-string v1, "Unable to close localFolder"
invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e5
:catch_f4
move-exception v13
:try_start_f5
const-string v0, "k9"
const-string v1, "Unable to set failed status on localFolder"
invoke-static {v0, v1, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_b2
:cond_fd
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$28;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v0, v1, v6}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
:try_end_104
.catchall {:try_start_f5 .. :try_end_104} :catchall_d4
if-eqz v3, :cond_109
:try_start_106
invoke-virtual {v3}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->close()V
:try_end_109
.catch Ljava/lang/Exception; {:try_start_106 .. :try_end_109} :catch_10f
:goto_109
:cond_109
iget-object v0, p0, Lcom/fsck/k9/MessagingController$28;->val$latch:Ljava/util/concurrent/CountDownLatch;
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
goto :goto_ea
:catch_10f
move-exception v6
const-string v0, "k9"
const-string v1, "Unable to close localFolder"
invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_109
:catch_118
move-exception v6
const-string v1, "k9"
const-string v2, "Unable to close localFolder"
invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_da
.end method