.class public Lcom/pinguo/camera360/camera/view/TimerCameraView;
.super Lcom/pinguo/camera360/lib/ui/RotateLayout;
.source "TimerCameraView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_MESSAGE:I = 0x65

.field private static final COUNT_DOWN_TIME:[I = null

.field private static final INTERVAL:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private layCountDown:Landroid/view/ViewGroup;

.field private listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

.field private mAnListener:Landroid/view/animation/Animation$AnimationListener;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mCountTv:Landroid/widget/TextView;

.field private mCurrCount:I

.field private mCurrIndex:I

.field private mGuideTv:Landroid/widget/TextView;

.field private mIndicatorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/lib/ui/Rotatable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCountStarted:Z

.field private mRotateView:Lcom/pinguo/camera360/lib/ui/RotateLayout;

.field private mTotalCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    return-void

    nop

    :array_12
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/ui/RotateLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIndicatorList:Ljava/util/List;

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/RotateLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIndicatorList:Ljava/util/List;

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mTotalCount:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/view/TimerCameraView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/view/TimerCameraView;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    return-void
.end method

.method static synthetic access$7()[I
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->needShowGuide()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/camera/view/TimerCameraView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    return-object v0
.end method

.method private initData()V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I

    move-result v0

    sget-object v1, Lcom/pinguo/camera360/camera/view/TimerCameraView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "limit = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimit(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .registers 4

    const v0, 0x7f0a0288

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    const v0, 0x7f0a0285

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mRotateView:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIndicatorList:Ljava/util/List;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mRotateView:Lcom/pinguo/camera360/lib/ui/RotateLayout;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a028a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    const v0, 0x7f0a0286

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    new-instance v1, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView$2;-><init>(Lcom/pinguo/camera360/camera/view/TimerCameraView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private needShowGuide()Z
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getClickTimerTipsVisibility()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private setCountDownLimitBackground()V
    .registers 4

    sget-object v1, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    aget v0, v1, v2

    sparse-switch v0, :sswitch_data_36

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v2, 0x7f02008e

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    :goto_11
    return-void

    :sswitch_12
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v2, 0x7f020095

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_11

    :sswitch_1b
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v2, 0x7f020098

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_11

    :sswitch_24
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v2, 0x7f02008f

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_11

    :sswitch_2d
    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v2, 0x7f020092

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_11

    :sswitch_data_36
    .sparse-switch
        0x3 -> :sswitch_12
        0x5 -> :sswitch_1b
        0xa -> :sswitch_24
        0xf -> :sswitch_2d
    .end sparse-switch
.end method


# virtual methods
.method public count()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    :cond_11
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnListener:Landroid/view/animation/Animation$AnimationListener;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView$1;-><init>(Lcom/pinguo/camera360/camera/view/TimerCameraView;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnListener:Landroid/view/animation/Animation$AnimationListener;

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public doTimerDecrement()V
    .registers 4

    const/16 v2, 0x8

    iget v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    if-lez v0, :cond_4a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->layCountDown:Landroid/view/ViewGroup;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_33
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->count()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->listener:Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    iget v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mTotalCount:I

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/TimerCameraView$CountEventListener;->countDown(II)V

    :cond_43
    iget v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    :goto_49
    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimitBackground()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    goto :goto_49
.end method

.method public getCountDownLimit()I
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    aget v0, v0, v1

    return v0
.end method

.method public getVisibility()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/lib/ui/RotateLayout;->getVisibility()I

    move-result v0

    return v0
.end method

.method public gone()V
    .registers 2

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .registers 2

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    return-void
.end method

.method public isShowing()Z
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public reset()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    aget v0, v0, v1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mTotalCount:I

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    :cond_1c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCountTv:Landroid/widget/TextView;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimitBackground()V

    const-string/jumbo v0, "Test"

    const-string/jumbo v1, "reset, set count down false"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIsCountStarted:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->needShowGuide()Z

    move-result v0

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_54
    return-void
.end method

.method public setCountDownLimit(I)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    array-length v1, v1

    if-lt v0, v1, :cond_a

    :goto_6
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V

    return-void

    :cond_a
    sget-object v1, Lcom/pinguo/camera360/camera/view/TimerCameraView;->COUNT_DOWN_TIME:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_13

    iput v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mCurrIndex:I

    goto :goto_6

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOrientation(IZ)V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mIndicatorList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-void

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/ui/Rotatable;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, p2}, Lcom/pinguo/camera360/lib/ui/Rotatable;->setOrientation(IZ)V

    goto :goto_6
.end method

.method public show()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->initView(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->initData()V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->needShowGuide()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TimerCameraView;->mGuideTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a0289

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    return-void
.end method
