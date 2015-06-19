.class public Lcom/fsck/k9/MessagingListener;
.super Ljava/lang/Object;
.source "MessagingListener.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public accountSizeChanged(Lcom/fsck/k9/Account;JJ)V
.registers 6
return-void
.end method
.method public accountStatusChanged(Lcom/fsck/k9/Account;I)V
.registers 3
return-void
.end method
.method public checkMailFailed(Landroid/content/Context;Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
return-void
.end method
.method public checkMailFinished(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 3
return-void
.end method
.method public checkMailStarted(Landroid/content/Context;Lcom/fsck/k9/Account;)V
.registers 3
return-void
.end method
.method public controllerCommandCompleted(Z)V
.registers 2
return-void
.end method
.method public emptyTrashCompleted(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
.registers 4
return-void
.end method
.method public listFolders(Lcom/fsck/k9/Account;[Lcom/fsck/k9/mail/Folder;)V
.registers 3
return-void
.end method
.method public listFoldersFailed(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public listFoldersFinished(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public listFoldersStarted(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public listLocalMessages(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
.registers 4
return-void
.end method
.method public listLocalMessagesFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
return-void
.end method
.method public listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public listLocalMessagesRemoveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public listLocalMessagesStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public listLocalMessagesUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public loadAttachmentFailed(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
return-void
.end method
.method public loadAttachmentFinished(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;)V
.registers 5
return-void
.end method
.method public loadAttachmentStarted(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Part;Ljava/lang/Object;Z)V
.registers 6
return-void
.end method
.method public loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 5
return-void
.end method
.method public loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.registers 5
return-void
.end method
.method public loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 5
return-void
.end method
.method public loadMessageForViewHeadersAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 5
return-void
.end method
.method public loadMessageForViewStarted(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
return-void
.end method
.method public messageDeleted(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
return-void
.end method
.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method
.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.registers 2
return-void
.end method
.method public setPushActive(Lcom/fsck/k9/Account;Ljava/lang/String;Z)V
.registers 4
return-void
.end method
.method public synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 4
return-void
.end method
.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 5
return-void
.end method
.method public synchronizeMailboxNewMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 5
return-void
.end method
.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
.registers 4
return-void
.end method
.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
return-void
.end method