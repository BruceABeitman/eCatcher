.class public Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;
.super Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;
.source "NbtfReceiverTransFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private static final MSG_ONE_RESULT:I = 0x66
.field private static final MSG_PROGRESS:I = 0x64
.field private static final MSG_RESULT:I = 0x67
.field private static final MSG_RESULT_FAILURE:I = 0x69
.field private static final MSG_RESULT_SUCCESS:I = 0x68
.field private static final MSG_START:I = 0x65
.field private static final TAG:Ljava/lang/String;
.field private mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.field private mHandler:Landroid/os/Handler;
.field private mReceiveDoneBtn:Landroid/view/View;
.field private mReceiveInfoLayout:Landroid/view/View;
.field private mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.field private mReceiveSuccessTV:Landroid/view/View;
.field private mStopReceiveBtn:Landroid/view/View;
.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mStopReceiveBtn:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveDoneBtn:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveInfoLayout:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveSuccessTV:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Lcom/pinguo/camera360/ui/TitleView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
return-object v0
.end method
.method static synthetic access$6()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public getHandler()Landroid/os/Handler;
.registers 2
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)V
return-object v0
.end method
.method public getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.registers 2
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$3;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)V
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
packed-switch v1, :pswitch_data_44
:goto_7
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getContainerActviity()Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onBackPressed()V
goto :goto_7
:pswitch_10
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/event/FinishNbtfActivityEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/nearbytransfer/event/FinishNbtfActivityEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/nearbytransfer/event/FinishMyCenterEvent;
invoke-direct {v2}, Lcom/pinguo/camera360/nearbytransfer/event/FinishMyCenterEvent;-><init>()V
invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/pinguo/camera360/gallery/GalleryActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x2400
invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->startActivity(Landroid/content/Intent;)V
goto :goto_7
nop
:pswitch_data_44
.packed-switch 0x7f0a0451
:pswitch_8
:pswitch_10
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getHandler()Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mHandler:Landroid/os/Handler;
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
const v0, 0x7f0300c6
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDestroyView()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeReceiveListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
invoke-super {p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->onDestroyView()V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/16 v3, 0x8
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiveBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v1, 0x7f0a0432
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
const v1, 0x7f08011b
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0a044e
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->startCloud()V
const v1, 0x7f0a0451
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mStopReceiveBtn:Landroid/view/View;
const v1, 0x7f0a0452
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveDoneBtn:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mStopReceiveBtn:Landroid/view/View;
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveDoneBtn:Landroid/view/View;
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mStopReceiveBtn:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveDoneBtn:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a044f
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveInfoLayout:Landroid/view/View;
const v1, 0x7f0a0450
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveSuccessTV:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveInfoLayout:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverTransFragment;->mReceiveSuccessTV:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
return-void
.end method