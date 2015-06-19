.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$1;
.super Ljava/lang/Object;
.source "NbtfTransFragment.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$1;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onFragmentBackPressed()V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method