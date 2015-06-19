.class  Lcom/fsck/k9/MessagingController$4;
.super Ljava/lang/Object;
.source "MessagingController.java"
.implements Lcom/fsck/k9/mail/MessageRetrievalListener;
.field  pendingMessages:Ljava/util/List;
.field final synthetic this$0:Lcom/fsck/k9/MessagingController;
.field  totalDone:I
.field final synthetic val$account:Lcom/fsck/k9/Account;
.field final synthetic val$folder:Ljava/lang/String;
.field final synthetic val$listener:Lcom/fsck/k9/MessagingListener;
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/MessagingListener;)V
.registers 6
iput-object p1, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
iput-object p2, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iput-object p3, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
iput-object p4, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
const/4 v0, 0x0
iput v0, p0, Lcom/fsck/k9/MessagingController$4;->totalDone:I
return-void
.end method
.method private addPendingMessages()V
.registers 7
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_a
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_20
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/MessagingListener;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
invoke-virtual {v1, v2, v3, v4}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
goto :goto_a
:cond_20
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
if-eqz v2, :cond_3d
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_3d
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
iget-object v5, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
invoke-virtual {v2, v3, v4, v5}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
:cond_3d
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->clear()V
return-void
.end method
.method public messageFinished(Lcom/fsck/k9/mail/Message;II)V
.registers 9
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
#calls: Lcom/fsck/k9/MessagingController;->isMessageSuppressed(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
invoke-static {v2, v3, v4, p1}, Lcom/fsck/k9/MessagingController;->access$200(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)Z
move-result v2
if-nez v2, :cond_25
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget v2, p0, Lcom/fsck/k9/MessagingController$4;->totalDone:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lcom/fsck/k9/MessagingController$4;->totalDone:I
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->pendingMessages:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
const/16 v3, 0xa
if-le v2, v3, :cond_24
invoke-direct {p0}, Lcom/fsck/k9/MessagingController$4;->addPendingMessages()V
:goto_24
:cond_24
return-void
:cond_25
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_2f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_43
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/MessagingListener;
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
invoke-virtual {v1, v2, v3, p1}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesRemoveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
goto :goto_2f
:cond_43
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
if-eqz v2, :cond_24
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->this$0:Lcom/fsck/k9/MessagingController;
invoke-virtual {v2}, Lcom/fsck/k9/MessagingController;->getListeners()Ljava/util/Set;
move-result-object v2
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_24
iget-object v2, p0, Lcom/fsck/k9/MessagingController$4;->val$listener:Lcom/fsck/k9/MessagingListener;
iget-object v3, p0, Lcom/fsck/k9/MessagingController$4;->val$account:Lcom/fsck/k9/Account;
iget-object v4, p0, Lcom/fsck/k9/MessagingController$4;->val$folder:Ljava/lang/String;
invoke-virtual {v2, v3, v4, p1}, Lcom/fsck/k9/MessagingListener;->listLocalMessagesRemoveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
goto :goto_24
.end method
.method public messageStarted(Ljava/lang/String;II)V
.registers 4
return-void
.end method
.method public messagesFinished(I)V
.registers 2
invoke-direct {p0}, Lcom/fsck/k9/MessagingController$4;->addPendingMessages()V
return-void
.end method