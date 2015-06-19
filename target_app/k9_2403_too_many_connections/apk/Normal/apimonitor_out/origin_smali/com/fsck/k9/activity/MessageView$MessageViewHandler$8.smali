.class Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;
.super Ljava/lang/Object;
.source "MessageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->attachmentNotSaved()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;


# direct methods
.method constructor <init>(Lcom/fsck/k9/activity/MessageView$MessageViewHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v0, v0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    iget-object v1, p0, Lcom/fsck/k9/activity/MessageView$MessageViewHandler$8;->this$1:Lcom/fsck/k9/activity/MessageView$MessageViewHandler;

    iget-object v1, v1, Lcom/fsck/k9/activity/MessageView$MessageViewHandler;->this$0:Lcom/fsck/k9/activity/MessageView;

    const v2, 0x7f0800a7

    invoke-virtual {v1, v2}, Lcom/fsck/k9/activity/MessageView;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
