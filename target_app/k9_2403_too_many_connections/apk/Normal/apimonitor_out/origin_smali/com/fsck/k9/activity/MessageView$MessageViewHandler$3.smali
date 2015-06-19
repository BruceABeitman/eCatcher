.class Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->setAttachmentsEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageView;->access$100(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    :goto_d
    if-ge v2, v1, :cond_32

    iget-object v3, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v3, v3, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v3}, Lcom/fsck/k9/activity/MessageView;->access$100(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/activity/MessageView$Attachment;

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->viewButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->val$enabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, v0, Lcom/fsck/k9/activity/MessageView$Attachment;->downloadButton:Landroid/widget/Button;

    iget-boolean v4, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$3;->val$enabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_32
    return-void
.end method
