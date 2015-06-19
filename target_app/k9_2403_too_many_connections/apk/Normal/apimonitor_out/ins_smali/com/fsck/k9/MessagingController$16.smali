.class  Lcom/fsck/k9/MessagingController$16;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;)V
.registers 3
iput-object p1, p0, Lcom/fsck/k9/MessagingController$16;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$16;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/fsck/k9/MessagingController$16;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$16;->val$account:Lcom/fsck/k9/Account;
invoke-virtual {v0, v1}, Lcom/fsck/k9/MessagingController;->sendPendingMessagesSynchronous(Lcom/fsck/k9/Account;)V
return-void
.end method