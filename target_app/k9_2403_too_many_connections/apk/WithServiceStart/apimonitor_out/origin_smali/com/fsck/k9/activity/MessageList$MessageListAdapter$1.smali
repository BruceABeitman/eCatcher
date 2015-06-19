.class Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;
.super Lcom/fsck/k9/activity/ActivityListener;
.source "MessageList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-direct {p0}, Lcom/fsck/k9/activity/ActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->folderStatusChanged(Lcom/fsck/k9/Account;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #setter for: Lcom/fsck/k9/activity/MessageList;->mUnreadMessageCount:I
    invoke-static {v0, p3}, Lcom/fsck/k9/activity/MessageList;->access$1102(Lcom/fsck/k9/activity/MessageList;I)I

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    :cond_1d
    return-void
.end method

.method public listLocalMessagesAddMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fsck/k9/Account;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/Message;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessages(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V
    invoke-static {v0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$2000(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public listLocalMessagesFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_1d

    :cond_d
    if-eqz p1, :cond_40

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    if-eqz p2, :cond_40

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    :cond_40
    return-void
.end method

.method public listLocalMessagesFinished(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_1d

    :cond_d
    if-eqz p1, :cond_40

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    :cond_1d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    if-eqz p2, :cond_40

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    :cond_40
    return-void
.end method

.method public listLocalMessagesRemoveMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 8

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    invoke-static {v1, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    :cond_23
    return-void
.end method

.method public listLocalMessagesStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_1d

    :cond_d
    if-eqz p1, :cond_35

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mAccount:Lcom/fsck/k9/Account;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1000(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/Account;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/fsck/k9/Account;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    :cond_1d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    if-eqz p2, :cond_35

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    :cond_35
    return-void
.end method

.method public listLocalMessagesUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    invoke-static {v0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    return-void
.end method

.method public pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandCompleted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public pendingCommandsFinished(Lcom/fsck/k9/Account;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsFinished(Lcom/fsck/k9/Account;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public pendingCommandsProcessing(Lcom/fsck/k9/Account;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->pendingCommandsProcessing(Lcom/fsck/k9/Account;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesCompleted(Lcom/fsck/k9/Account;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesFailed(Lcom/fsck/k9/Account;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/fsck/k9/activity/ActivityListener;->sendPendingMessagesStarted(Lcom/fsck/k9/Account;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public synchronizeMailboxAddOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mQueryString:Ljava/lang/String;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1200(Lcom/fsck/k9/activity/MessageList;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->addOrUpdateMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    invoke-static {v0, p1, p2, p3}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1900(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V

    :cond_f
    return-void
.end method

.method public synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFailed(Lcom/fsck/k9/Account;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    :cond_2d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .registers 7

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxFinished(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->sortMessages()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1500(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    :cond_2d
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxProgress(Lcom/fsck/k9/Account;Ljava/lang/String;II)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method

.method public synchronizeMailboxRemovedMessage(Lcom/fsck/k9/Account;Ljava/lang/String;Lcom/fsck/k9/mail/Message;)V
    .registers 8

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getMessage(Ljava/lang/String;)Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    move-result-object v0

    if-nez v0, :cond_29

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got callback to remove non-existent message with UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Lcom/fsck/k9/mail/Message;->getUid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_28
    return-void

    :cond_29
    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {v1, v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->removeMessage(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    goto :goto_28
.end method

.method public synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 5

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/activity/ActivityListener;->synchronizeMailboxStarted(Lcom/fsck/k9/Account;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->updateForMe(Lcom/fsck/k9/Account;Ljava/lang/String;)Z
    invoke-static {v0, p1, p2}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->access$1800(Lcom/fsck/k9/activity/MessageList$MessageListAdapter;Lcom/fsck/k9/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->progress(Z)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->folderLoading(Ljava/lang/String;Z)V

    :cond_22
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$1;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mHandler:Lcom/fsck/k9/activity/MessageList$MessageListHandler;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$1700(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    move-result-object v0

    #calls: Lcom/fsck/k9/activity/MessageList$MessageListHandler;->refreshTitle()V
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->access$1400(Lcom/fsck/k9/activity/MessageList$MessageListHandler;)V

    return-void
.end method
