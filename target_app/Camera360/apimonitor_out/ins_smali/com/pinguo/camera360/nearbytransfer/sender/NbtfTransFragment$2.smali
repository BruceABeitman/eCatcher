.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;
.super Landroid/os/Handler;
.source "NbtfTransFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_5e
:cond_b
:goto_b
:pswitch_b
return-void
:pswitch_c
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
move-result-object v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
move-result-object v0
iget v1, p1, Landroid/os/Message;->arg1:I
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->setProgress(I)V
goto :goto_b
:pswitch_20
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mStopSendBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$1(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendDoneBtn:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendInfoLayout:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendSuccessTV:Landroid/view/View;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/ui/TitleView;
move-result-object v0
const v1, 0x7f080118
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Gallery;->galleryNearBySendSuccess()V
goto :goto_b
:pswitch_54
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->stopCloud()V
goto :goto_b
:pswitch_data_5e
.packed-switch 0x64
:pswitch_c
:pswitch_b
:pswitch_b
:pswitch_b
:pswitch_20
:pswitch_54
.end packed-switch
.end method