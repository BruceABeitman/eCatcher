.class  Lcom/fsck/k9/MessagingController$19;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$destFolder:Ljava/lang/String;
.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;
.field final synthetic val$message:Lcom/fsck/k9/mail/Message;
.field final synthetic val$srcFolder:Ljava/lang/String;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/MessagingController$19;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$19;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$19;->val$srcFolder:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$19;->val$message:Lcom/fsck/k9/mail/Message;
iput-object p5, p0, Lcom/fsck/k9/MessagingController$19;->val$destFolder:Ljava/lang/String;
iput-object p6, p0, Lcom/fsck/k9/MessagingController$19;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 8
iget-object v0, p0, Lcom/fsck/k9/MessagingController$19;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v1, p0, Lcom/fsck/k9/MessagingController$19;->val$account:Lcom/fsck/k9/Account;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$19;->val$srcFolder:Ljava/lang/String;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$19;->val$message:Lcom/fsck/k9/mail/Message;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$19;->val$destFolder:Ljava/lang/String;
const/4 v5, 0x0
iget-object v6, p0, Lcom/fsck/k9/MessagingController$19;->val$listener:Lcom/fsck/k9/MessagingListener;
#calls: Lcom/fsck/k9/MessagingController;->moveOrCopyMessageSynchronous(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V
invoke-static/range {v0 .. v6}, Lcom/fsck/k9/MessagingController;->access$800(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;Ljava/lang/String;ZLcom/fsck/k9/MessagingListener;)V
return-void
.end method