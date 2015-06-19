.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field mAdjustPreviewOriIcon:Landroid/widget/ImageView;

.field mAdvanceParamIndicator:Landroid/widget/ImageView;

.field mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

.field mCameraOperationContainer:Landroid/widget/RelativeLayout;

.field mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

.field mDebounceFlagView:Landroid/view/View;

.field mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

.field mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

.field mRenderTipsView:Landroid/widget/TextView;

.field mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

.field mTakePictureMask:Landroid/view/View;

.field mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

.field mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

.field mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

.field mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

.field root:Landroid/view/View;

.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Landroid/view/View;)V
    .registers 7

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v2, 0x7f0a0542

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const v2, 0x7f0a0544

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const v2, 0x7f0a0546

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    const v2, 0x7f0a0545

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const v2, 0x7f0a03c6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/view/TapCaptureView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

    const v2, 0x7f0a0540

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    const v2, 0x7f0a03c8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    const v2, 0x7f0a0285

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/camera/view/TimerCameraView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const v3, 0x7f0a0553

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceFlagView:Landroid/view/View;

    const v2, 0x7f0a0549

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTakePictureMask:Landroid/view/View;

    const v2, 0x7f0a0543

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;

    const v2, 0x7f0a03c7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    const v2, 0x7f0a0552

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mRenderTipsView:Landroid/widget/TextView;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->hasUseAdvanceParameter()Z

    move-result v2

    if-nez v2, :cond_a6

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020184

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a6
    new-instance v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$1;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    new-instance v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;

    invoke-direct {v3, p0, v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$2;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Landroid/view/GestureDetector;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->hideOperationView(Z)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    return-object v0
.end method

.method private hideOperationView(Z)V
    .registers 4

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;)V

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_7
.end method

.method private showOperationView(Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0xaa

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeIn(Landroid/view/View;J)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_e
.end method


# virtual methods
.method doTakeAnimation()V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTakePictureMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraOperationContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTakePictureMask:Landroid/view/View;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const-wide/16 v3, 0xaa

    new-instance v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder$3;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;)V

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/AnimUtils;->fadeOut(Landroid/view/View;FFJLandroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method public resume()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start an .................... resume : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3b

    move-object v0, v1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "start an ...................."

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_3b
    return-void
.end method

.method public updateTopMenuBarCloudPopView(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->updateCloudPopView(I)V

    :cond_9
    return-void
.end method
