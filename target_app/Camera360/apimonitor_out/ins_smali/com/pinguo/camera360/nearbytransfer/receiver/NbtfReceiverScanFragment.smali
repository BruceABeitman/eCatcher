.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;
.super Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;
.source "NbtfReceiverScanFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private mGuideTipView:Landroid/view/View;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_20
:goto_7
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;->mGuideTipView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;->mGuideTipView:Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7
:cond_18
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;->mGuideTipView:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_7
nop
:pswitch_data_20
.packed-switch 0x7f0a043f
:pswitch_8
.end packed-switch
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f0300c3
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 10
const v6, 0x7f0a043f
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v5, 0x7f0a0441
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/ui/TitleView;
new-instance v5, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;)V
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v5, 0x7f080120
invoke-virtual {v3, v5}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
const v5, 0x7f0a0440
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
iput-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;->mGuideTipView:Landroid/view/View;
invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v5, 0x7f0a0443
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/lib/ui/RoundImageView;
const v5, 0x7f020302
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setDefaultImage(I)V
const v5, 0x7f0a0444
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverScanFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-static {v5}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;
move-result-object v5
invoke-virtual {v5}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;
move-result-object v4
if-eqz v4, :cond_78
iget-object v5, v4, Lcom/pinguo/camera360/login/model/User$Info;->avatar:Ljava/lang/String;
invoke-virtual {v0, v5}, Lcom/pinguo/camera360/lib/ui/RoundImageView;->setImageUrl(Ljava/lang/String;)V
iget-object v5, v4, Lcom/pinguo/camera360/login/model/User$Info;->nickname:Ljava/lang/String;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_5d
const v5, 0x7f0a0442
invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
invoke-virtual {v5, v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->setAlignView(Landroid/view/View;)V
invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v5, 0x9
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setPaintFlags(I)V
return-void
:cond_78
sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5d
.end method