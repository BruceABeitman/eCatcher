.class Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->showShowPictures(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iput-boolean p2, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    #getter for: Lcom/fsck/k9/activity/MessageView;->mShowPicturesSection:Landroid/view/View;
    invoke-static {v0}, Lcom/fsck/k9/activity/MessageView;->access$1100(Lcom/fsck/k9/activity/MessageView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$10;->val$show:Z

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_11
    const/16 v1, 0x8

    goto :goto_d
.end method
