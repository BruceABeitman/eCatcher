.class  Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;
.super Ljava/lang/Object;
.source "ImapStore.java"
.implements Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
.field final synthetic val$includeDeleted:Z
.field final synthetic val$mesgSeqs:Ljava/util/List;
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZLjava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
iput-boolean p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$includeDeleted:Z
iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$mesgSeqs:Ljava/util/List;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public search()Ljava/util/List;
.registers 7
iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "UID SEARCH %s"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$includeDeleted:Z
if-eqz v2, :cond_36
const-string v2, ""
:goto_13
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$2;->val$mesgSeqs:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->toArray()[Ljava/lang/Object;
move-result-object v4
const/16 v5, 0x2c
invoke-static {v4, v5}, Lcom/fsck/k9/Utility;->combine([Ljava/lang/Object;C)Ljava/lang/String;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;
move-result-object v0
return-object v0
:cond_36
const-string v2, " NOT DELETED"
goto :goto_13
.end method