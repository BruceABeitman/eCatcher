.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;
.super Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;
.source "NbtfReceiverWaittingFragment.java"
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;-><init>()V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f0300c7
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
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment$1;
invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getSenderName()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const v3, 0x7f08011c
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V
const v2, 0x7f0a0454
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
new-instance v3, Ljava/lang/StringBuilder;
const v4, 0x7f080121
invoke-virtual {p0, v4}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v2, 0x7f0a0453
invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverWaittingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
const v4, 0x7f040006
invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method