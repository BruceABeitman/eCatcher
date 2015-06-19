.class  Lcom/fsck/k9/MessagingController$12;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folderName:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Ljava/lang/String;Lcom/fsck/k9/Account;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$12;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$12;->val$folderName:Ljava/lang/String;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$12;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
new-instance v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;
invoke-direct {v0}, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;-><init>()V
const-string v1, "com.fsck.k9.MessagingController.expunge"
iput-object v1, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->command:Ljava/lang/String;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/String;
iput-object v1, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
iget-object v1, v0, Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;->arguments:[Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/fsck/k9/MessagingController$12;->val$folderName:Ljava/lang/String;
aput-object v3, v1, v2
iget-object v1, p0, Lcom/fsck/k9/MessagingController$12;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$12;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->queuePendingCommand(Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
invoke-static {v1, v2, v0}, Lcom/fsck/k9/MessagingController;->access$500(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Lcom/fsck/k9/mail/store/LocalStore$PendingCommand;)V
iget-object v1, p0, Lcom/fsck/k9/MessagingController$12;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$12;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->processPendingCommands(Lcom/fsck/k9/Account;)V
invoke-static {v1, v2}, Lcom/fsck/k9/MessagingController;->access$600(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
return-void
.end method