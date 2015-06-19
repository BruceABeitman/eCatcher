.class  Lcom/fsck/k9/MessagingController$22;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folder:Ljava/lang/String;
.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;
.field final synthetic val$messages:[Lcom/fsck/k9/mail/Message;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
.registers 6
iput-object p1, p0, Lcom/fsck/k9/MessagingController$22;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$22;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$22;->val$folder:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$22;->val$messages:[Lcom/fsck/k9/mail/Message;
iput-object p5, p0, Lcom/fsck/k9/MessagingController$22;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
iget-object v0, p0, Lcom/fsck/k9/MessagingController$22;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$22;->val$account:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$22;->val$folder:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$22;->val$messages:[Lcom/fsck/k9/mail/Message;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$22;->val$listener:Lcom/fsck/k9/MessagingListener;
#calls: Lcom/fsck/k9/MessagingController;->deleteMessagesSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
invoke-static {v0, v1, v2, v3, v4}, Lcom/fsck/k9/MessagingController;->access$1000(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;[Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/MessagingListener;)V
return-void
.end method