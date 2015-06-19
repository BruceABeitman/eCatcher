.class  Lcom/fsck/k9/MessagingController$5$1;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;
.field final synthetic this$1:Lcom/fsck/k9/MessagingController$5;
.field  totalDone:I
.field final synthetic val$account:Lcom/fsck/k9/Account;
.method constructor <init>(Lcom/fsck/k9/MessagingController$5;Lcom/fsck/k9/Account;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/MessagingController$5$1;->this$1:Lcom/fsck/k9/MessagingController$5;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$5$1;->val$account:Lcom/fsck/k9/Account;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/fsck/k9/MessagingController$5$1;->totalDone:I
return-void
.end method
.method private addPendingMessages()V
.registers 1
return-void
.end method
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
.registers 8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/fsck/k9/MessagingController$5$1;->this$1:Lcom/fsck/k9/MessagingController$5;
iget-object v1, v1, Lcom/fsck/k9/MessagingController$5;->val$listener:Lcom/fsck/k9/MessagingListener;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$5$1;->val$account:Lcom/fsck/k9/Account;
const/4 v3, 0x0
invoke-virtual {v1, v2, v3, v0}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
return-void
.end method
.method public messageStarted(Ljava/lang/String;II)V
.registers 4
return-void
.end method
.method public messagesFinished(I)V
.registers 2
return-void
.end method