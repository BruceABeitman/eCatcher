.class Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;
.super Ljava/lang/Object;
.source "ShareBSAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/share/ui/dialog/ShareBSAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;


# direct methods
.method constructor <init>(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositive:Landroid/widget/Button;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$0(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_35

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$1(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonPositiveMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$1(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_20
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$6(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mDialogInterface:Landroid/content/DialogInterface;
    invoke-static {v3}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$7(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/content/DialogInterface;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_35
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegative:Landroid/widget/Button;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$2(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_50

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$3(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNegativeMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$3(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1b

    :cond_50
    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutral:Landroid/widget/Button;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$4(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/widget/Button;

    move-result-object v1

    if-ne p1, v1, :cond_1b

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$5(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pinguo/share/ui/dialog/ShareBSAlertController$1;->this$0:Lcom/pinguo/share/ui/dialog/ShareBSAlertController;

    #getter for: Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->mButtonNeutralMessage:Landroid/os/Message;
    invoke-static {v1}, Lcom/pinguo/share/ui/dialog/ShareBSAlertController;->access$5(Lcom/pinguo/share/ui/dialog/ShareBSAlertController;)Landroid/os/Message;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1b
.end method
