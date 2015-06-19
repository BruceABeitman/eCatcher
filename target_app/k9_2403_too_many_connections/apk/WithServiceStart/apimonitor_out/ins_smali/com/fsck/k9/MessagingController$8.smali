.class  Lcom/fsck/k9/MessagingController$8;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folder:Ljava/lang/String;
.field final synthetic val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
.field final synthetic val$progress:Ljava/util/concurrent/atomic/AtomicInteger;
.field final synthetic val$todo:I
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;I)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$8;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$8;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$8;->val$folder:Ljava/lang/String;
iput-object p5, p0, Lcom/fsck/k9/MessagingController$8;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;
iput p6, p0, Lcom/fsck/k9/MessagingController$8;->val$todo:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
.registers 13
const-string v8, "k9"
const-string v4, ":"
:try_start_4
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
const/4 v5, 0x1
new-array v5, v5, [Lcom/fsck/k9/mail/Message;
const/4 v6, 0x0
aput-object p1, v5, v6
invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->appendMessages([Lcom/fsck/k9/mail/Message;)V
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$localFolder:Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;
invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Lcom/fsck/k9/mail/store/LocalStore$LocalFolder;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/mail/Message;
move-result-object v2
sget-object v4, Lcom/fsck/k9/mail/Flag;->X_DOWNLOADED_FULL:Lcom/fsck/k9/mail/Flag;
const/4 v5, 0x1
invoke-virtual {v2, v4, v5}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V
sget-boolean v4, Lcom/fsck/k9/K9;->DEBUG:Z
if-eqz v4, :cond_57
const-string v4, "k9"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "About to notify listeners that we got a new small message "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/fsck/k9/MessagingController$8;->val$folder:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, ":"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p1}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_57
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v4}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v4
invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_66
:goto_66
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_a8
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/MessagingListener;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$8;->val$folder:Ljava/lang/String;
invoke-virtual {v1, v4, v5, v2}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$8;->val$folder:Ljava/lang/String;
iget-object v6, p0, Lcom/fsck/k9/MessagingController$8;->val$progress:Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v6
iget v7, p0, Lcom/fsck/k9/MessagingController$8;->val$todo:I
invoke-virtual {v1, v4, v5, v6, v7}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
sget-object v4, Lcom/fsck/k9/mail/Flag;->SEEN:Lcom/fsck/k9/mail/Flag;
invoke-virtual {v2, v4}, Lcom/fsck/k9/mail/Message;->isSet(Lcom/fsck/k9/mail/Flag;)Z
move-result v4
if-nez v4, :cond_66
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$8;->val$folder:Ljava/lang/String;
invoke-virtual {v1, v4, v5, v2}, Lcom/fsck/k9/MessagingListener;->synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
:try_end_97
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_4 .. :try_end_97} :catch_98
goto :goto_66
:catch_98
move-exception v4
move-object v3, v4
iget-object v4, p0, Lcom/fsck/k9/MessagingController$8;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$8;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v4, v5, v3}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
const-string v4, "k9"
const-string v4, "SYNC: fetch small messages"
invoke-static {v8, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_a8
return-void
.end method
.method public messageStarted(Ljava/lang/String;II)V
.registers 4
return-void
.end method
.method public messagesFinished(I)V
.registers 2
return-void
.end method