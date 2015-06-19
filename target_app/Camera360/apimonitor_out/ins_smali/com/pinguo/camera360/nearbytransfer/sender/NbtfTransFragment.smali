.class public Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
.super Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;
.source "NbtfTransFragment.java"
.implements Landroid/view/View$OnClickListener;
.field private static final MSG_PROGRESS:I = 0x64
.field private static final MSG_RESULT_FAILURE:I = 0x69
.field private static final MSG_RESULT_SUCCESS:I = 0x68
.field private static final TAG:Ljava/lang/String;
.field private mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.field private mHandler:Landroid/os/Handler;
.field private mSendDoneBtn:Landroid/view/View;
.field private mSendInfoLayout:Landroid/view/View;
.field private mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.field private mSendSuccessTV:Landroid/view/View;
.field private mStopSendBtn:Landroid/view/View;
.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mStopSendBtn:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendDoneBtn:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendInfoLayout:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendSuccessTV:Landroid/view/View;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Lcom/pinguo/camera360/ui/TitleView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
return-object v0
.end method
.method static synthetic access$6()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method private getHandler()Landroid/os/Handler;
.registers 2
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
return-object v0
.end method
.method private getSendListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.registers 2
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
return-object v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment; onClick "
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
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->onBackPressed()V
goto :goto_7
:pswitch_10
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->getContainerActivity()Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->back2MainActivity()V
goto :goto_7
:pswitch_data_18
.packed-switch 0x7f0a0449
:pswitch_8
:pswitch_10
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onCreate(Landroid/os/Bundle;)V
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->getHandler()Landroid/os/Handler;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-direct {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->getSendListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f0300c4
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onDestroyView()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->removeSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
invoke-super {p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onDestroyView()V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 7
const/16 v3, 0x8
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v1, 0x7f0a0445
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f080115
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;
const v1, 0x7f0a0446
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mCircleProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->startCloud()V
const v1, 0x7f0a0449
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mStopSendBtn:Landroid/view/View;
const v1, 0x7f0a044a
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendDoneBtn:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mStopSendBtn:Landroid/view/View;
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendDoneBtn:Landroid/view/View;
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mStopSendBtn:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendDoneBtn:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a0447
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendInfoLayout:Landroid/view/View;
const v1, 0x7f0a0448
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendSuccessTV:Landroid/view/View;
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendInfoLayout:Landroid/view/View;
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendSuccessTV:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mSendListener:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->addSendListener(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;)V
return-void
.end method