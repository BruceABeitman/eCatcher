.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment$1;
.super Ljava/lang/Object;
.source "NbtfReceiverWaittingFragment.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onBackPressed()V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method