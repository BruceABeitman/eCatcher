.class  Lcom/fsck/k9/MessagingController$6;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folder:Ljava/lang/String;
.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.registers 5
iput-object p1, p0, Lcom/fsck/k9/MessagingController$6;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$6;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$6;->val$folder:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$6;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/fsck/k9/MessagingController$6;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$6;->val$account:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$6;->val$folder:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$6;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-virtual {v0, v1, v2, v3}, Lcom/fsck/k9/MessagingController;->synchronizeMailboxSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method