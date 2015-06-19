.class  Lcom/fsck/k9/MessagingController$21;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folder:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$21;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$21;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$21;->val$folder:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/fsck/k9/MessagingController$21;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$21;->val$account:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$21;->val$folder:Ljava/lang/String;
#calls: Lcom/fsck/k9/MessagingController;->queueExpunge(Lcom/fsck/k9/Account;Ljava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/fsck/k9/MessagingController;->access$900(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
return-void
.end method