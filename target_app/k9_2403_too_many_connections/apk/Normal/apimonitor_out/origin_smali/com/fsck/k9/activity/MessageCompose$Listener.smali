.class Lcom/fsck/k9/activity/MessageCompose$Listener;
.super Lcom/fsck/k9/MessagingListener;
.source "MessageCompose.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageCompose;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/activity/MessageCompose;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    invoke-direct {p0}, Lcom/fsck/k9/MessagingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMessageForViewBodyAvailable(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #setter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;
    invoke-static {v0, p4}, Lcom/fsck/k9/activity/MessageCompose;->access$602(Lcom/fsck/k9/activity/MessageCompose;Lcom/fsck/k9/mail/Message;)Lcom/fsck/k9/mail/Message;

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    new-instance v1, Lcom/fsck/k9/activity/MessageCompose$Listener$1;

    invoke-direct {v1, p0, p4}, Lcom/fsck/k9/activity/MessageCompose$Listener$1;-><init>(Lcom/fsck/k9/activity/MessageCompose$Listener;Lcom/fsck/k9/mail/Message;)V

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageCompose;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_14
.end method

.method public loadMessageForViewFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14
.end method

.method public loadMessageForViewFinished(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 7

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14
.end method

.method public loadMessageForViewStarted(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    :cond_14
    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$500(Lcom/fsck/k9/activity/MessageCompose;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_14
.end method

.method public messageUidChanged(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$800(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$900(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mFolder:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$900(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$800(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDraftsFolderName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    :cond_30
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$1000(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #setter for: Lcom/fsck/k9/activity/MessageCompose;->mDraftUid:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/fsck/k9/activity/MessageCompose;->access$1002(Lcom/fsck/k9/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    :cond_41
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$400(Lcom/fsck/k9/activity/MessageCompose;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #setter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessageUid:Ljava/lang/String;
    invoke-static {v0, p4}, Lcom/fsck/k9/activity/MessageCompose;->access$402(Lcom/fsck/k9/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;

    :cond_52
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageCompose$Listener;->this$0:Lcom/fsck/k9/activity/MessageCompose;

    #getter for: Lcom/fsck/k9/activity/MessageCompose;->mSourceMessage:Lcom/fsck/k9/mail/Message;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageCompose;->access$600(Lcom/fsck/k9/activity/MessageCompose;)Lcom/fsck/k9/mail/Message;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/fsck/k9/mail/Message;->setUid(Ljava/lang/String;)V

    :cond_73
    return-void
.end method
