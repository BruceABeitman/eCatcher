.class Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;
.super Landroid/os/Handler;
.source "NbtfReceiverTransFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getHandler()Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_54

    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->setProgress(I)V

    goto :goto_b

    :pswitch_18
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->stopCloud()V

    goto :goto_b

    :pswitch_22
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mStopReceiveBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveDoneBtn:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveInfoLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveSuccessTV:Landroid/view/View;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->access$5(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Lcom/pinguo/camera360/ui/TitleView;

    move-result-object v0

    const v1, 0x7f080124

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    goto :goto_b

    nop

    :pswitch_data_54
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_18
        :pswitch_22
    .end packed-switch
.end method
