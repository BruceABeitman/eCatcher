.class public Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
.super Ljava/lang/Object;
.source "FolderList.java"
.implements Ljava/lang/Comparable;
.field public displayName:Ljava/lang/String;
.field public lastCheckFailed:Z
.field public lastChecked:J
.field public loading:Z
.field public name:Ljava/lang/String;
.field public outbox:Z
.field public pushActive:Z
.field public status:Ljava/lang/String;
.field final synthetic this$0:Lcom/fsck/k9/activity/FolderList;
.field public unreadMessageCount:I
.method public constructor <init>(Lcom/fsck/k9/activity/FolderList;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/fsck/k9/activity/FolderList;Lcom/fsck/k9/mail/Folder;I)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p2, p3}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->populate(Lcom/fsck/k9/mail/Folder;I)V
return-void
.end method
.method public compareTo(Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;)I
.registers 7
const-string v4, "INBOX"
iget-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v2, p1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
const-string v3, "INBOX"
invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_18
const-string v3, "INBOX"
invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_18
const/4 v3, 0x0
:goto_17
return v3
:cond_18
const-string v3, "INBOX"
invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_22
const/4 v3, -0x1
goto :goto_17
:cond_22
const-string v3, "INBOX"
invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_2c
const/4 v3, 0x1
goto :goto_17
:cond_2c
invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_34
move v3, v0
goto :goto_17
:cond_34
invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v3
goto :goto_17
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->compareTo(Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
check-cast p1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;
iget-object v1, p1, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public populate(Lcom/fsck/k9/mail/Folder;I)V
.registers 10
const/4 v6, 0x0
const/4 v5, 0x1
:try_start_2
sget-object v2, Lcom/fsck/k9/mail/Folder$OpenMode;->READ_WRITE:Lcom/fsck/k9/mail/Folder$OpenMode;
invoke-virtual {p1, v2}, Lcom/fsck/k9/mail/Folder;->open(Lcom/fsck/k9/mail/Folder$OpenMode;)V
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getUnreadMessageCount()I
:try_end_a
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_2 .. :try_end_a} :catch_dc
move-result p2
:goto_b
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
const-string v3, "INBOX"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_e7
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
const v3, 0x7f080072
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
:goto_26
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getOutboxFolderName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_4f
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
const v3, 0x7f080077
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
iput-boolean v5, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->outbox:Z
:cond_4f
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_76
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
const v3, 0x7f080078
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_76
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getTrashFolderName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9d
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
const v3, 0x7f080079
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_9d
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
#getter for: Lcom/fsck/k9/activity/FolderList;->mAccount:Lcom/fsck/k9/Account;
invoke-static {v3}, Lcom/fsck/k9/activity/FolderList;->access$000(Lcom/fsck/k9/activity/FolderList;)Lcom/fsck/k9/Account;
move-result-object v3
invoke-virtual {v3}, Lcom/fsck/k9/Account;->getSentFolderName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c4
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
const v3, 0x7f08007a
invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/FolderList;->getString(I)Ljava/lang/String;
move-result-object v2
new-array v3, v5, [Ljava/lang/Object;
iget-object v4, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->name:Ljava/lang/String;
aput-object v4, v3, v6
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
:cond_c4
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getLastUpdate()J
move-result-wide v2
iput-wide v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->lastChecked:J
iget-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->this$0:Lcom/fsck/k9/activity/FolderList;
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getStatus()Ljava/lang/String;
move-result-object v3
#calls: Lcom/fsck/k9/activity/FolderList;->truncateStatus(Ljava/lang/String;)Ljava/lang/String;
invoke-static {v2, v3}, Lcom/fsck/k9/activity/FolderList;->access$800(Lcom/fsck/k9/activity/FolderList;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->status:Ljava/lang/String;
iput p2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->unreadMessageCount:I
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->close()V
return-void
:catch_dc
move-exception v2
move-object v0, v2
const-string v2, "k9"
const-string v3, "Folder.getUnreadMessageCount() failed"
invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto/16 :goto_b
:cond_e7
invoke-virtual {p1}, Lcom/fsck/k9/mail/Folder;->getName()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lcom/fsck/k9/activity/FolderList$FolderInfoHolder;->displayName:Ljava/lang/String;
goto/16 :goto_26
.end method