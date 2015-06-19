.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;
.super Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;
.source "NbtfIfAcceptFragment.java"
.implements Landroid/view/View$OnClickListener;
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
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
packed-switch v0, :pswitch_data_18
:goto_7
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->accept()Z
goto :goto_7
:pswitch_10
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->reject()Z
goto :goto_7
:pswitch_data_18
.packed-switch 0x7f0a0435
:pswitch_8
:pswitch_10
.end packed-switch
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f0300be
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 8
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v2, 0x7f0a0432
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/TitleView;
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSenderName()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const v3, 0x7f08011c
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V
const v2, 0x7f0a0434
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, " "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const v4, 0x7f08011d
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfIfAcceptFragment;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v2, 0x7f0a0435
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0a0436
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method