.class  Lcom/fsck/k9/MessagingController$10;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/MessagingController$10;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$10;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/fsck/k9/MessagingController$10;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$10;->val$account:Lcom/fsck/k9/Account;
#calls: Lcom/fsck/k9/MessagingController;->processPendingCommandsSynchronous(Lcom/fsck/k9/Account;)V
invoke-static {v1, v2}, Lcom/fsck/k9/MessagingController;->access$400(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
:goto_7
:try_end_7
.catch Lcom/fsck/k9/mail/MessagingException; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v1
move-object v0, v1
const-string v1, "k9"
const-string v2, "processPendingCommands"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
iget-object v1, p0, Lcom/fsck/k9/MessagingController$10;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$10;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v1, v2, v0}, Lcom/fsck/k9/MessagingController;->addErrorMessage(Lcom/fsck/k9/Account;Ljava/lang/Throwable;)V
goto :goto_7
.end method