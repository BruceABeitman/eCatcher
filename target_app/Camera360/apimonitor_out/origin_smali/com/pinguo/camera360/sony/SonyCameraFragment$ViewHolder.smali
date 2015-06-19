.class Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;

.field mCameraOperationContainer:Landroid/widget/RelativeLayout;

.field mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;

.field mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

.field mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

.field mZoomControlBarView:Landroid/widget/LinearLayout;

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;Landroid/view/View;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v0, 0x7f0a03dd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03de

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

    const v0, 0x7f0a03df

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/sony/view/SonyCameraBottomMenuView;

    const v0, 0x7f0a03dc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/sony/view/SonyTapCaptureView;

    const v0, 0x7f0a0285

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    const v0, 0x7f0a0587

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mZoomControlBarView:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->hideOperationView(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->showOperationView(Z)V

    return-void
.end method

.method private hideOperationView(Z)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method private showOperationView(Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0xaa

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeIn(Landroid/view/View;J)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e
.end method


# virtual methods
.method public updateTopMenuBarCloudPopView(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/sony/view/SonyTopMenuView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/sony/view/SonyTopMenuView;->updateCloudPopView(I)V

    :cond_9
    return-void
.end method
