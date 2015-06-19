.class Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;
.super Ljava/lang/Object;
.source "MessageList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItemView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v2, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageList$MessageListAdapter$2;->this$1:Lcom/fsck/k9/activity/MessageList$MessageListAdapter;

    iget-object v1, v1, Lcom/fsck/k9/activity/MessageList$MessageListAdapter;->this$0:Lcom/fsck/k9/activity/MessageList;

    #calls: Lcom/fsck/k9/activity/MessageList;->onToggleFlag(Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V
    invoke-static {v1, v0}, Lcom/fsck/k9/activity/MessageList;->access$2300(Lcom/fsck/k9/activity/MessageList;Lcom/fsck/k9/activity/MessageList$MessageInfoHolder;)V

    return-void
.end method
