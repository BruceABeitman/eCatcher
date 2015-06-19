.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "NbtfReceiveBaseFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
return-object v0
.end method