.class  Lcom/fsck/k9/MessagingController$11;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$flag:Ljava/lang/String;
.field final synthetic val$folderName:Ljava/lang/String;
.field final synthetic val$newState:Ljava/lang/String;
.field final synthetic val$uids:[Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/MessagingController;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/Account;)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$11;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$11;->val$uids:[Ljava/lang/String;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$11;->val$folderName:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$11;->val$newState:Ljava/lang/String;
iput-object p5, p0, Lcom/fsck/k9/MessagingController$11;->val$flag:Ljava/lang/String;
iput-object p6, p0, Lcom/fsck/k9/MessagingController$11;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 7
new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
invoke-direct {v0}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V
const-string v3, "com.fsck.k9.MessagingController.setFlagBulk"
iput-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$11;->val$uids:[Ljava/lang/String;
array-length v3, v3
add-int/lit8 v2, v3, 0x3
new-array v3, v2, [Ljava/lang/String;
iput-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
const/4 v4, 0x0
iget-object v5, p0, Lcom/fsck/k9/MessagingController$11;->val$folderName:Ljava/lang/String;
aput-object v5, v3, v4
iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
const/4 v4, 0x1
iget-object v5, p0, Lcom/fsck/k9/MessagingController$11;->val$newState:Ljava/lang/String;
aput-object v5, v3, v4
iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
const/4 v4, 0x2
iget-object v5, p0, Lcom/fsck/k9/MessagingController$11;->val$flag:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v1, 0x0
:goto_28
iget-object v3, p0, Lcom/fsck/k9/MessagingController$11;->val$uids:[Ljava/lang/String;
array-length v3, v3
if-ge v1, v3, :cond_3a
iget-object v3, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
add-int/lit8 v4, v1, 0x3
iget-object v5, p0, Lcom/fsck/k9/MessagingController$11;->val$uids:[Ljava/lang/String;
aget-object v5, v5, v1
aput-object v5, v3, v4
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_3a
iget-object v3, p0, Lcom/fsck/k9/MessagingController$11;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$11;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
invoke-static {v3, v4, v0}, Lcom/fsck/k9/MessagingController;->access$500(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
iget-object v3, p0, Lcom/fsck/k9/MessagingController$11;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$11;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
invoke-static {v3, v4}, Lcom/fsck/k9/MessagingController;->access$600(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
return-void
.end method