.class Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->addAttachment(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

.field final synthetic val$attachmentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iput-object p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;->val$attachmentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$100(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;->val$attachmentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$2;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mAttachments:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$100(Lcom/fsck/k9/activity/MessageView;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
