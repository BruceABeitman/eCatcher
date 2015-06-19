.class public Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "NbtfSendBaseFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
return-void
.end method
.method public getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.registers 2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
return-object v0
.end method
.method public onBackPressed()Z
.registers 2
const/4 v0, 0x0
return v0
.end method