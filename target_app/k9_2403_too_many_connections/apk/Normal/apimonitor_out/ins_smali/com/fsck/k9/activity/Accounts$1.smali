.class  Lcom/fsck/k9/activity/Accounts$1;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "Accounts.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;
.method constructor <init>(Lcom/fsck/k9/activity/Accounts;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V
return-void
.end method
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.registers 12
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
move-object v1, p1
move-wide v2, p2
move-wide v4, p4
invoke-virtual/range {v0 .. v5}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
return-void
.end method
.method public accountStatusChanged(Lcom/fsck/k9/Account;I)V
.registers 10
const/16 v6, 0x2710
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v3
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
const/4 v1, 0x0
if-eqz v2, :cond_19
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v1
:cond_19
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v3
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v4
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
sub-int v4, p2, v1
invoke-static {v3, v4}, Lcom/fsck/k9/activity/Accounts;->access$012(Lcom/fsck/k9/activity/Accounts;I)I
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->dataChanged()V
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v3
invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z
move-result v3
if-eqz v3, :cond_62
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v3
invoke-virtual {v3, v6}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
:goto_61
return-void
:cond_62
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getCount()I
move-result v3
div-int v3, v6, v3
iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mAdapter:Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$200(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
move-result-object v4
invoke-virtual {v4}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getCount()I
move-result v4
iget-object v5, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->pendingWork:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v5}, Lcom/fsck/k9/activity/Accounts;->access$500(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v5
invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
move-result v5
sub-int/2addr v4, v5
mul-int v0, v3, v4
iget-object v3, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v3}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(I)V
goto :goto_61
.end method
.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.registers 3
invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 8
invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts;->getApplication()Landroid/app/Application;
move-result-object v0
invoke-static {v0}, Lcom/fsck/k9/MessagingController;->getInstance(Landroid/app/Application;)Lcom/fsck/k9/MessagingController;
move-result-object v0
iget-object v1, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
iget-object v2, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
iget-object v2, v2, Lcom/fsck/k9/activity/Accounts;->mListener:Lcom/fsck/k9/activity/ActivityListener;
invoke-virtual {v0, v1, p1, v2}, Lcom/fsck/k9/MessagingController;->getAccountUnreadCount(Landroid/content/Context;Lcom/fsck/k9/Account;Lcom/fsck/k9/MessagingListener;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 6
invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method
.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->progress(Z)V
iget-object v0, p0, Lcom/fsck/k9/activity/Accounts$1;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->mHandler:Lcom/fsck/k9/activity/Accounts$AccountsHandler;
invoke-static {v0}, Lcom/fsck/k9/activity/Accounts;->access$400(Lcom/fsck/k9/activity/Accounts;)Lcom/fsck/k9/activity/Accounts$AccountsHandler;
move-result-object v0
invoke-virtual {v0}, Lcom/fsck/k9/activity/Accounts$AccountsHandler;->refreshTitle()V
return-void
.end method