.class public Lqr/recognize/huawei_tv/HuaweiTVAuthorize;
.super Landroid/app/Activity;
.source "HuaweiTVAuthorize.java"

# interfaces
.implements Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;
    }
.end annotation


# static fields
.field private static final AUTH_TIMEOUT:I = 0x6

.field private static final BACK_TO_CAMERA:I = 0x4

.field private static final NETWORK_EXCEPTION:I = 0x5

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private mAddress:Ljava/lang/String;

.field private mAnimationIcon:Landroid/widget/ImageView;

.field private mAuthResultTitle:Ljava/lang/String;

.field private mAuthorResultText1:Landroid/widget/TextView;

.field private mAuthorResultText2:Landroid/widget/TextView;

.field private mAuthorizeResultIcon:Landroid/widget/ImageView;

.field private mAuthorize_result:Landroid/widget/RelativeLayout;

.field private mCameraIcon:Landroid/widget/ImageView;

.field private mCancelBtn:Landroid/widget/Button;

.field private mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

.field private mCurTVSSID:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

.field private mIsAuthorizeSucc:Z

.field private mIsCancelCloudLoginByBackKey:Z

.field private mIsClickLoginCloudBtn:Z

.field private mPausing:Z

.field private mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPhoneView:Landroid/widget/ImageView;

.field private mPhone_Animation_Scale:Landroid/view/animation/Animation;

.field private mPhone_Animation_Trans:Landroid/view/animation/Animation;

.field private mPhone_translationOutScreen:Landroid/view/animation/TranslateAnimation;

.field private mPort:I

.field private mScanResult:Ljava/lang/String;

.field private mScreenWidth:I

.field private mStartAuthUI:Landroid/widget/RelativeLayout;

.field private mTVAnimationSet:Landroid/view/animation/AnimationSet;

.field private mTV_Animation_Scale:Landroid/view/animation/Animation;

.field private mTV_Animation_Trans:Landroid/view/animation/Animation;

.field private mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mTvMaxView:Landroid/widget/ImageView;

.field private mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

.field normalInterpolator:Landroid/view/animation/Interpolator;

.field reInterpolator:Landroid/view/animation/Interpolator;

.field private toast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z

    iput-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    iput-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;

    invoke-direct {v0, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$1;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    new-instance v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$2;

    invoke-direct {v0, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$2;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->reInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$3;

    invoke-direct {v0, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$3;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V
    .registers 2

    iput-boolean p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z

    return-void
.end method

.method static synthetic access$2(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Z
    .registers 2

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsAuthorizeSucc:Z

    return v0
.end method

.method static synthetic access$4(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Lqr/recognize/huawei_tv/HuaweiTvModel;
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    return-object v0
.end method

.method static synthetic access$5(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScanResult:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V
    .registers 2

    iput-boolean p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z

    return-void
.end method

.method static synthetic access$7(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$8(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;Z)V
    .registers 2

    iput-boolean p1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    return-void
.end method

.method static synthetic access$9(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)Landroid/graphics/drawable/AnimationDrawable;
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method private clearAnimation()V
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->clearAnimation()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    return-void
.end method

.method private intToIp(I)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    and-int/lit16 v1, p1, 0xff

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public authorNetworkException()V
    .registers 5

    const/4 v3, 0x5

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "authorNetworkException"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    :cond_2a
    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3f
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5
.end method

.method public authorizeFailed()V
    .registers 4

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "authorizeFailed"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public authorizeSuccess()V
    .registers 4

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "authorizeSuccess"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4
.end method

.method public hideAuthorizeUI()V
    .registers 3

    const/4 v1, 0x4

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public initListener()V
    .registers 2

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCameraIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public initView()V
    .registers 2

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAnimationIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01c8

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    const v0, 0x7f0a01d1

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a01cd

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorizeResultIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText1:Landroid/widget/TextView;

    const v0, 0x7f0a01cf

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText2:Landroid/widget/TextView;

    const v0, 0x7f0a00b1

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCameraIcon:Landroid/widget/ImageView;

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onActivityResult arg0 ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7e

    if-ne p1, v0, :cond_1c

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeUI()V

    :cond_1c
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_24

    :goto_7
    return-void

    :sswitch_8
    const-string/jumbo v0, "HuaweiTvModel"

    const-string/jumbo v1, "onclick"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$15;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$15;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    goto :goto_7

    :sswitch_1f
    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    goto :goto_7

    nop

    :sswitch_data_24
    .sparse-switch
        0x7f0a00b1 -> :sswitch_1f
        0x7f0a01d1 -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f03005c

    invoke-virtual {p0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setContentView(I)V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "scanResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScanResult:Ljava/lang/String;

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->initView()V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->initListener()V

    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->parseScanResult()V

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTvModel;

    iget-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAddress:Ljava/lang/String;

    iget v3, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPort:I

    invoke-direct {v1, v2, v3}, Lqr/recognize/huawei_tv/HuaweiTvModel;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->hideAuthorizeUI()V

    invoke-direct {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->clearAnimation()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    packed-switch p1, :pswitch_data_2e

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_8
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V

    :cond_19
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->cancel()V

    :cond_2a
    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->finish()V

    goto :goto_3

    :pswitch_data_2e
    .packed-switch 0x4
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    :cond_1f
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->dismiss()V

    :cond_30
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    move-result-object v0

    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-eq v0, v1, :cond_4c

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    if-nez v0, :cond_4c

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    move-result-object v0

    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-ne v0, v1, :cond_69

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z

    if-nez v0, :cond_69

    :cond_4c
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$11;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$11;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_56
    :goto_56
    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->hideAuthorizeUI()V

    invoke-direct {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->clearAnimation()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_69
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    move-result-object v0

    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_TOKEN_GETS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-eq v0, v1, :cond_56

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->closeSocket()V

    goto :goto_56
.end method

.method protected onResume()V
    .registers 13

    const/4 v2, 0x1

    const/4 v8, 0x0

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onResume"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v9, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v9}, Lqr/recognize/huawei_tv/HuaweiTvModel;->getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    move-result-object v5

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "state = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_SUCCESS:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-eq v5, v9, :cond_34

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->AUTH_FAILED:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-eq v5, v9, :cond_34

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->NETWORK_EXCEPTION:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-ne v5, v9, :cond_37

    :cond_34
    invoke-direct {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->clearAnimation()V

    :cond_37
    iput-boolean v8, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    iput-boolean v8, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsCancelCloudLoginByBackKey:Z

    iput-boolean v8, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mIsClickLoginCloudBtn:Z

    iget-object v9, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v9, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    sget-object v9, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "SSID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "ip = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    invoke-direct {p0, v11}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->intToIp(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a2

    const-string/jumbo v9, "\""

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a2

    const-string/jumbo v9, "\""

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    aget-object v0, v9, v2

    :cond_a2
    iget-object v9, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCurTVSSID:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_108

    iget-object v9, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCurTVSSID:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_108

    :goto_b2
    iget-object v8, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v8, p0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->setIAuthorizeResult(Lqr/recognize/huawei_tv/HuaweiTvModel$IAuthorizeResultCallBack;)V

    sget-object v8, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "mAddress = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "mPort ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPort:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " mCurTVSSID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCurTVSSID:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v1

    if-eqz v3, :cond_f4

    if-nez v2, :cond_116

    :cond_f4
    if-nez v3, :cond_10a

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080204

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_101
    invoke-virtual {p0, v4}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showNeedUpdateWifiDialog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->hideAuthorizeUI()V

    :goto_107
    return-void

    :cond_108
    move v2, v8

    goto :goto_b2

    :cond_10a
    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f080205

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_101

    :cond_116
    if-nez v1, :cond_129

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showNeedLoginCloudDialog()V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->hideAuthorizeUI()V

    iget-object v8, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$4;

    invoke-direct {v9, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$4;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_107

    :cond_129
    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->showAuthorizeUI()V

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->startAuthorize()V

    goto :goto_107
.end method

.method public parseScanResult()V
    .registers 5

    sget-object v2, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "parseScanResult"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScanResult:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_36

    :try_start_10
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScanResult:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "serverUrl"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAddress:Ljava/lang/String;

    const-string/jumbo v2, "port"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPort:I

    const-string/jumbo v2, "ssid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCurTVSSID:Ljava/lang/String;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_36} :catch_37

    :cond_36
    :goto_36
    return-void

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_36
.end method

.method public retryAuthorize()V
    .registers 5

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "retryAuthorize"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_2d

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAnimationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    :cond_2d
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAnimationIcon:Landroid/widget/ImageView;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$13;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$13;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->reInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->reInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->reInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .registers 5

    const/4 v2, 0x1

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setAnimation"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {p1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method public showAuthorizeFailed()V
    .registers 11

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/4 v9, 0x0

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showAuthorizeFailed"

    invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_26
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Scale:Landroid/view/animation/Animation;

    if-nez v0, :cond_3c

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Scale:Landroid/view/animation/Animation;

    :cond_3c
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Scale:Landroid/view/animation/Animation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Trans:Landroid/view/animation/Animation;

    if-nez v0, :cond_5c

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {v0, v9, v1, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Trans:Landroid/view/animation/Animation;

    :cond_5c
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_7a

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Scale:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_Animation_Trans:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_7a
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_a5

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v9, v1, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_a5
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorizeResultIcon:Landroid/widget/ImageView;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$14;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_d4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v9, v9, v9, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_d4
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c
.end method

.method public showAuthorizeSuccess()V
    .registers 13

    const/high16 v2, 0x4000

    const/high16 v1, 0x3f80

    const/high16 v6, 0x3f00

    const/4 v5, 0x1

    const/4 v11, 0x0

    iget-boolean v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPausing:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "showAuthorizeSuccess"

    invoke-static {v0, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_1e
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Scale:Landroid/view/animation/Animation;

    if-nez v0, :cond_34

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Scale:Landroid/view/animation/Animation;

    :cond_34
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Scale:Landroid/view/animation/Animation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v10

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Trans:Landroid/view/animation/Animation;

    if-nez v0, :cond_5f

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v9, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    sub-int/2addr v2, v10

    sub-int/2addr v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v11, v1, v11, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Trans:Landroid/view/animation/Animation;

    :cond_5f
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Trans:Landroid/view/animation/Animation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_84

    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Scale:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTV_Animation_Trans:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_84
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$C360AnimationiListener;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTVAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_a4

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mScreenWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v11, v1, v11, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    :cond_a4
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhone_translationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    if-nez v0, :cond_c7

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v11, v11, v11, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->setAnimation(Landroid/view/animation/Animation;)V

    :cond_c7
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelButtonTranslationOutScreen:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_c
.end method

.method public showAuthorizeUI()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showAuthorizeUI"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mPhoneView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_29
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mStartAuthUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_36
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mTvMaxView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_43
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mCancelBtn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAnimationIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAnimationIcon:Landroid/widget/ImageView;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$12;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    :cond_61
    return-void
.end method

.method public showNeedLoginCloudDialog()V
    .registers 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080206

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0801fc

    const v3, 0x7f0801fd

    new-instance v4, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;

    invoke-direct {v4, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$5;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    new-instance v5, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;

    invoke-direct {v5, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$6;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    new-instance v2, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;

    invoke-direct {v2, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$7;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->alertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    return-void
.end method

.method public showNeedUpdateWifiDialog(Ljava/lang/String;)V
    .registers 9

    const/4 v6, 0x0

    const v2, 0x7f0801ff

    const v3, 0x7f080002

    new-instance v4, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8;

    invoke-direct {v4, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$8;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    new-instance v5, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$9;

    invoke-direct {v5, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$9;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$10;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$10;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mUpdateWifiAlertDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-virtual {v0, v6, v6}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setOrientation(IZ)V

    return-void
.end method

.method public startAuthorize()V
    .registers 5

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startAuthorize"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHuaweiTvModel:Lqr/recognize/huawei_tv/HuaweiTvModel;

    invoke-virtual {v0}, Lqr/recognize/huawei_tv/HuaweiTvModel;->getAuthState()Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    move-result-object v0

    sget-object v1, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    if-ne v0, v1, :cond_2a

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "return startAuthorize due to state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;->STARTING_AUTH:Lqr/recognize/huawei_tv/HuaweiTvModel$AuthState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_29
    return-void

    :cond_2a
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;

    invoke-direct {v1, p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize$16;-><init>(Lqr/recognize/huawei_tv/HuaweiTVAuthorize;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_29
.end method

.method public updateAuthResultUI(Z)V
    .registers 5

    const/4 v2, 0x0

    sget-object v0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateAuthResultUI"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_38

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorizeResultIcon:Landroid/widget/ImageView;

    const v1, 0x7f020252

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText1:Landroid/widget/TextView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText1:Landroid/widget/TextView;

    const v1, -0x243bb0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_37
    return-void

    :cond_38
    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorize_result:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorizeResultIcon:Landroid/widget/ImageView;

    const v1, 0x7f020247

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText1:Landroid/widget/TextView;

    const v1, -0x3a8890

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText1:Landroid/widget/TextView;

    iget-object v1, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthResultTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->mAuthorResultText2:Landroid/widget/TextView;

    invoke-virtual {p0}, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080208

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_37
.end method
