.class  Lcom/fsck/k9/MessagingController$23;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v5, 0x0
:try_start_1
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v7}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v7
iget-object v8, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v8}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v8
invoke-static {v7, v8}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v6
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v7}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Lcom/fsck/k9/mail/Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;
move-result-object v5
sget-object v7, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {v5, v7}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
const/4 v7, 0x1
new-array v7, v7, [Lcom/fsck/k9/mail/Flag;
const/4 v8, 0x0
sget-object v9, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;
aput-object v9, v7, v8
const/4 v8, 0x1
invoke-virtual {v5, v7, v8}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Flag;Z)V
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v7}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v7
invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_36
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_5e
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fsck/k9/MessagingListener;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v4, v7}, Lcom/fsck/k9/MessagingListener;->emptyTrashCompleted(Lcom/fsck/k9/Account;)V
:try_end_47
.catchall {:try_start_1 .. :try_end_47} :catchall_8b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_47} :catch_48
goto :goto_36
:catch_48
move-exception v7
move-object v2, v7
:try_start_4a
const-string v7, "k9"
const-string v8, "emptyTrash failed"
invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v8, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v7, v8, v2}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
:try_end_58
.catchall {:try_start_4a .. :try_end_58} :catchall_8b
if-eqz v5, :cond_5d
invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V
:goto_5d
:cond_5d
return-void
:try_start_5e
:cond_5e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
invoke-direct {v1}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V
const-string v7, "com.fsck.k9.MessagingController.emptyTrash"
iput-object v7, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;
const/4 v7, 0x0
new-array v7, v7, [Ljava/lang/String;
invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v7
check-cast v7, [Ljava/lang/String;
iput-object v7, v1, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v8, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
invoke-static {v7, v8, v1}, Lcom/fsck/k9/MessagingController;->access$500(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
iget-object v7, p0, Lcom/fsck/k9/MessagingController$23;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v8, p0, Lcom/fsck/k9/MessagingController$23;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
invoke-static {v7, v8}, Lcom/fsck/k9/MessagingController;->access$600(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
:try_end_85
.catchall {:try_start_5e .. :try_end_85} :catchall_8b
.catch Ljava/lang/Exception; {:try_start_5e .. :try_end_85} :catch_48
if-eqz v5, :cond_5d
invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V
goto :goto_5d
:catchall_8b
move-exception v7
if-eqz v5, :cond_91
invoke-virtual {v5}, Lcom/fsck/k9/mail/Folder;->close()V
:cond_91
throw v7
.end method