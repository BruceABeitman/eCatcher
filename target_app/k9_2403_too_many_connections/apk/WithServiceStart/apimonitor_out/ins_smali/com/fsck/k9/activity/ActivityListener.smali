.class public Lcom/fsck/k9/activity/ActivityListener;
.super Lcom/fsck/k9/MessagingListener;
.source "ActivityListener.java"
.field private mFolderCompleted:I
.field private mFolderTotal:I
.field private mLoadingAccountDescription:Ljava/lang/String;
.field private mLoadingFolderName:Ljava/lang/String;
.field private mProcessingAccountDescription:Ljava/lang/String;
.field private mProcessingCommandTitle:Ljava/lang/String;
.field private mSendingAccountDescription:Ljava/lang/String;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingCommandTitle:Ljava/lang/String;
return-void
.end method
.method public formatHeader(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
.registers 15
const/4 v6, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
const-string v7, ""
const/4 v1, 0x0
const/4 v2, 0x0
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
if-nez v3, :cond_14
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
if-nez v3, :cond_14
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
if-eqz v3, :cond_b1
:cond_14
iget v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
if-lez v3, :cond_79
const v3, 0x7f080016
new-array v4, v10, [Ljava/lang/Object;
iget v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v8
iget v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v9
invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
move-object v2, v3
:goto_32
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
if-eqz v3, :cond_7d
iget-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
const-string v3, "INBOX"
invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_47
const v3, 0x7f080072
invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:cond_47
const v3, 0x7f080013
new-array v4, v6, [Ljava/lang/Object;
iget-object v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
aput-object v5, v4, v8
aput-object v0, v4, v9
aput-object v2, v4, v10
invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:cond_58
:goto_58
const v3, 0x7f080011
new-array v4, v6, [Ljava/lang/Object;
aput-object p2, v4, v8
if-lez p3, :cond_b4
const v5, 0x7f080012
new-array v6, v9, [Ljava/lang/Object;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v6, v8
invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
:goto_70
aput-object v5, v4, v9
aput-object v1, v4, v10
invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
return-object v3
:cond_79
const-string v3, ""
move-object v2, v7
goto :goto_32
:cond_7d
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
if-eqz v3, :cond_91
const v3, 0x7f080014
new-array v4, v10, [Ljava/lang/Object;
iget-object v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
aput-object v5, v4, v8
aput-object v2, v4, v9
invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_58
:cond_91
iget-object v3, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
if-eqz v3, :cond_58
const v3, 0x7f080015
new-array v4, v6, [Ljava/lang/Object;
iget-object v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
aput-object v5, v4, v8
iget-object v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingCommandTitle:Ljava/lang/String;
if-eqz v5, :cond_ad
iget-object v5, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingCommandTitle:Ljava/lang/String;
:goto_a4
aput-object v5, v4, v9
aput-object v2, v4, v10
invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
goto :goto_58
:cond_ad
const-string v5, ""
move-object v5, v7
goto :goto_a4
:cond_b1
const-string v1, ""
goto :goto_58
:cond_b4
const-string v5, ""
move-object v5, v7
goto :goto_70
.end method
.method public getFolderCompleted()I
.registers 2
iget v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
return v0
.end method
.method public getFolderTotal()I
.registers 2
iget v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
return v0
.end method
.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingCommandTitle:Ljava/lang/String;
return-void
.end method
.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 3
iput-object p2, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingCommandTitle:Ljava/lang/String;
return-void
.end method
.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
return-void
.end method
.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
.registers 4
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mProcessingAccountDescription:Ljava/lang/String;
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
return-void
.end method
.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
return-void
.end method
.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
.registers 3
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
return-void
.end method
.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
.registers 3
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mSendingAccountDescription:Ljava/lang/String;
return-void
.end method
.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
return-void
.end method
.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 6
const/4 v0, 0x0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
return-void
.end method
.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
.registers 5
iput p3, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
iput p4, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
return-void
.end method
.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingAccountDescription:Ljava/lang/String;
iput-object p2, p0, Lcom/fsck/k9/activity/ActivityListener;->mLoadingFolderName:Ljava/lang/String;
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderCompleted:I
iput v1, p0, Lcom/fsck/k9/activity/ActivityListener;->mFolderTotal:I
return-void
.end method