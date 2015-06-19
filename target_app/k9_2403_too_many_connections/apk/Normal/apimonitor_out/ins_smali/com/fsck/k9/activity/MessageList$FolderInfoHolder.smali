.class public Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;
.super Ljava/lang/Object;
.source "MessageList.java"
.field public displayName:Ljava/lang/String;
.field public folder:Lcom/fsck/k9/mail/Folder;
.field public lastCheckFailed:Z
.field public loading:Z
.field public name:Ljava/lang/String;
.field public outbox:Z
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageList;
.method public constructor <init>(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p2, p3}, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->populate(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
return-void
.end method
.method public populate(Lcom/fsck/k9/mail/Folder;Lcom/fsck/k9/Account;)V
.registers 8
const/4 v4, 0x0
const/4 v3, 0x1
iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->folder:Lcom/fsck/k9/mail/Folder;
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
const-string v1, "INBOX"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a6
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v1, 0x7f080072
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
:goto_1f
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {p2}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v1, 0x7f080077
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
iput-boolean v3, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->outbox:Z
:cond_42
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {p2}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v1, 0x7f080078
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_63
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {p2}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v1, 0x7f080079
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_84
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {p2}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a5
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/MessageList;
const v1, 0x7f08007a
invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList;->getString(I)Ljava/lang/String;
move-result-object v0
new-array v1, v3, [Ljava/lang/Object;
iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v2, v1, v4
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_a5
return-void
:cond_a6
iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->name:Ljava/lang/String;
iput-object v0, p0, Lcom/fsck/k9/activity/MessageList$FolderInfoHolder;->displayName:Ljava/lang/String;
goto/16 :goto_1f
.end method