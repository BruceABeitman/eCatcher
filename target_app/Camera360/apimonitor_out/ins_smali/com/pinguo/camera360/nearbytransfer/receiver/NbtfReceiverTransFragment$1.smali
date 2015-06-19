.class  Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$1;
.super Ljava/lang/Object;
.source "NbtfReceiverTransFragment.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onBackPressed()V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method