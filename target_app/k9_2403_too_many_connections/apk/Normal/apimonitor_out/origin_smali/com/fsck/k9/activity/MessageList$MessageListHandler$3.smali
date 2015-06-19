.class Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList$MessageListHandler;->addMessages(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

.field final synthetic val$wasEmpty:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageList$MessageListHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;->val$wasEmpty:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-boolean v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;->val$wasEmpty:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$500(Lcom/fsck/k9/activity/MessageList;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_10
    iget-object v0, p0, Lcom/fsck/k9/activity/MessageList$MessageListHandler$3;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageList$MessageListHandler;->this$0:Lcom/fsck/k9/activity/MessageList;

    #getter for: Lcom/fsck/k9/activity/MessageList;->mAdapter:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageList;->access$200(Lcom/fsck/k9/activity/MessageList;)Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->notifyDataSetChanged()V

    return-void
.end method
