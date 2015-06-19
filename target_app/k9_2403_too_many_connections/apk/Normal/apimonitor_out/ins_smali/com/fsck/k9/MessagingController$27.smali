.class  Lcom/fsck/k9/MessagingController$27;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$ml:Lcom/fsck/k9/MessagingListener;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$27;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$27;->val$ml:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 12
:try_start_0
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getLocalStoreUri()Ljava/lang/String;
move-result-object v1
iget-object v9, p0, Lcom/fsck/k9/MessagingController$27;->this$0:Lcom/fsck/k9/MessagingController;
#getter for: Lcom/fsck/k9/MessagingController;->mApplication:Landroid/app/Application;
invoke-static {v9}, Lcom/fsck/k9/MessagingController;->access$000(Lcom/fsck/k9/MessagingController;)Landroid/app/Application;
move-result-object v9
invoke-static {v1, v9}, Lcom/fsck/k9/mail/Store;->getInstance(Ljava/lang/String;Landroid/app/Application;)Lcom/fsck/k9/mail/Store;
move-result-object v8
check-cast v8, Lcom/fsck/k9/mail/store/LocalStore;
invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J
move-result-wide v2
invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore;->clear()V
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v1}, Lcom/fsck/k9/Account;->getDisplayCount()I
move-result v1
invoke-virtual {v8, v1}, Lcom/fsck/k9/mail/store/LocalStore;->resetVisibleLimits(I)V
invoke-virtual {v8}, Lcom/fsck/k9/mail/store/LocalStore;->getSize()J
move-result-wide v4
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->val$ml:Lcom/fsck/k9/MessagingListener;
if-eqz v1, :cond_31
iget-object v0, p0, Lcom/fsck/k9/MessagingController$27;->val$ml:Lcom/fsck/k9/MessagingListener;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingListener;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
:cond_31
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v1}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_3b
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_6d
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/MessagingListener;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/MessagingListener;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4c} :catch_4d
goto :goto_3b
:catch_4d
move-exception v1
move-object v6, v1
const-string v1, "k9"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string v10, "Failed to compact account "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget-object v10, p0, Lcom/fsck/k9/MessagingController$27;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v10}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v1, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_6d
return-void
.end method