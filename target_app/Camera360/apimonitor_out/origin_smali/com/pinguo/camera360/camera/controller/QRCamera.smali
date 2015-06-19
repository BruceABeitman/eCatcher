.class public Lcom/pinguo/camera360/camera/controller/QRCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "QRCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;,
        Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;,
        Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
    }
.end annotation


# static fields
.field private static final AUTOFOCUS_INTERVAL_MS:J = 0x5dcL

.field private static final HIDE_QR_UI:I = 0x3

.field private static final HUAWEI_TV:Ljava/lang/String; = "huaweitv"

.field private static final HUAWEI_TV_QR:I = 0x1

.field private static final NORMAL_LINK_QR:I = 0x0

.field private static final NORMAL_TEXT_QR:I = 0x2

.field private static final RE_START_AUTO_FOCUS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "QRCamera"

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private characterSet:Ljava/lang/String;

.field private decodeFormats:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private isEnableQrScanTips:Z

.field private isPausing:Z

.field private mActivity:Landroid/app/Activity;

.field private mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

.field mFocusUI:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

.field private mGoQRLlink:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIsCanStartQRScan:Z

.field private mIsClickedQRResult:Z

.field private mIsOpenTouchScreenTakePicture:Z

.field private mIsShowingQRLayout:Z

.field private mLayoutBottomMargin:I

.field private mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

.field private mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

.field private mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

.field private mPreviewSizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private mQRIndicatorImageView:Landroid/widget/ImageView;

.field private mQRLinkView:Landroid/widget/TextView;

.field private mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

.field private mQRResultLayout:Landroid/widget/RelativeLayout;

.field private mQRScanText:Landroid/widget/TextView;

.field private mQRTextView:Landroid/widget/TextView;

.field private mSoundKeyFunction:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewfinderView:Lqr/recognize/view/ViewfinderView;

.field normalInterpolator:Landroid/view/animation/Interpolator;

.field reInterpolator:Landroid/view/animation/Interpolator;

.field private translateAnimation:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;Landroid/app/Activity;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsOpenTouchScreenTakePicture:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$1;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/QRCamera$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$2;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->reInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/QRCamera$3;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$3;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->normalInterpolator:Landroid/view/animation/Interpolator;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "QRCamera"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startHideQRLayoutAnimation()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    return v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/camera/controller/QRCamera;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->handleQrResult(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->hideQRLayout()V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->showQRLayout()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    return v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/camera/controller/QRCamera;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    return-void
.end method

.method private changeQRContext(ILjava/lang/String;)V
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const v10, 0x7f07002e

    const v9, 0x7f07002d

    const/high16 v8, 0x4170

    const/high16 v7, 0x4150

    const/4 v6, 0x0

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "changeQRContext qrCodeCategory = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scanResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    packed-switch p1, :pswitch_data_128

    :goto_37
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    if-eqz v3, :cond_5a

    sget-boolean v3, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v3, :cond_5a

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_5a
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Lcom/pinguo/camera360/camera/controller/QRCamera$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/QRCamera$4;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;ILjava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :pswitch_65
    const v3, 0x7f08020a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08020b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRIndicatorImageView:Landroid/widget/ImageView;

    const v4, 0x7f02043f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mGoQRLlink:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_37

    :pswitch_a9
    move-object v2, p2

    const v3, 0x7f08020c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRIndicatorImageView:Landroid/widget/ImageView;

    const v4, 0x7f0204d7

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mGoQRLlink:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_37

    :pswitch_e8
    const v3, 0x7f08020d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRIndicatorImageView:Landroid/widget/ImageView;

    const v4, 0x7f0204dd

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mGoQRLlink:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_37

    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_a9
        :pswitch_65
        :pswitch_e8
    .end packed-switch
.end method

.method private getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 11

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    if-nez v4, :cond_c

    const/4 v8, 0x0

    :goto_b
    return-object v8

    :cond_c
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    if-le v0, v7, :cond_39

    move v5, v7

    move v7, v0

    move v0, v5

    :cond_39
    int-to-float v8, v7

    int-to-float v9, v0

    div-float v6, v8, v9

    cmpl-float v8, v1, v6

    if-lez v8, :cond_4b

    move v3, v7

    int-to-float v8, v7

    div-float/2addr v8, v1

    float-to-int v2, v8

    :goto_45
    new-instance v8, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-direct {v8, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    goto :goto_b

    :cond_4b
    move v2, v0

    int-to-float v8, v0

    mul-float/2addr v8, v1

    float-to-int v3, v8

    goto :goto_45
.end method

.method private handleQrResult(ILjava/lang/String;)V
    .registers 11

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_62

    :goto_4
    return-void

    :pswitch_5
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    const-class v5, Lqr/recognize/huawei_tv/HuaweiTVAuthorize;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v4, "scanResult"

    invoke-virtual {v1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    :pswitch_1a
    :try_start_1a
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "QRCamera"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "scanResult = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_47} :catch_48

    goto :goto_4

    :catch_48
    move-exception v0

    const-string/jumbo v4, "QRCamera"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "QRCamera"

    const-string/jumbo v5, "open the qr link failed!"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v7, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    goto :goto_4

    :pswitch_5f
    iput-boolean v7, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    goto :goto_4

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_5
        :pswitch_5f
    .end packed-switch
.end method

.method private hideQRLayout()V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "hideQRLayout"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    if-eqz v0, :cond_22

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_22
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v0, v3}, Lqr/recognize/view/ViewfinderView;->setIsDrawLine(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v0, v2}, Lqr/recognize/view/ViewfinderView;->setIsStopDrawView(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v0}, Lqr/recognize/view/ViewfinderView;->drawViewfinder()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModePickerBtn()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_47
    return-void
.end method

.method private intiQRCameraIfPreviewStart()V
    .registers 8

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v2

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "intiQRCameraIfPreviewStart state ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c6

    new-instance v3, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    invoke-direct {v3, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->hideQRLayout()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v3, v6}, Lqr/recognize/view/ViewfinderView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v3, v6}, Lqr/recognize/view/ViewfinderView;->setIsStopDrawView(Z)V

    const-string/jumbo v3, "auto"

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isSupportAutoFocus = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mQRModelAutoFocusCallback = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getZoom()I

    move-result v3

    if-eqz v3, :cond_8d

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->resetZoomValue()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    :cond_8d
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    const-string/jumbo v4, "f4ab1ced32e2092c35bfa10cae9e836c"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->changeFlashItem(Ljava/lang/String;Z)Z

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    if-eqz v0, :cond_b5

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->cancelAutoFocus()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_b5
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v1, :cond_c3

    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutBottomMargin:I

    :cond_c3
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startScanQrcode()V

    :cond_c6
    return-void
.end method

.method private intiQrUI()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v1, 0x7f0a0547

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a03d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRTextView:Landroid/widget/TextView;

    const v1, 0x7f0a03d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRLinkView:Landroid/widget/TextView;

    const v1, 0x7f0a03d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRIndicatorImageView:Landroid/widget/ImageView;

    const v1, 0x7f0a03c3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lqr/recognize/view/ViewfinderView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    const v1, 0x7f0a03c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    const v1, 0x7f0a03d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mGoQRLlink:Landroid/widget/ImageView;

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mFocusUI:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    return-void
.end method

.method private releaseResAfterPreviewStop()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "releaseResAfterPreviewStop"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    invoke-virtual {v0}, Lqr/recognize/decoding/CaptureActivityHandler;->quitSynchronously()V

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    :cond_21
    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    return-void
.end method

.method private removeLastMode()V
    .registers 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAntiShake(Z)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerSwitchState(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private restoreCameraUI()V
    .registers 11

    const/4 v9, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "QRCamera"

    const-string/jumbo v6, "restoreCameraUI"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->hideQRLayout()V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v5, v9}, Lqr/recognize/view/ViewfinderView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isClickPreviewAdjustIcon()Z

    move-result v5

    if-nez v5, :cond_3b

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3b
    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getShutterBtn()Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->haveTouchScreen()Z

    move-result v5

    if-nez v5, :cond_6f

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V

    :cond_6f
    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z

    move-result v3

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCompositionLineState()Z

    move-result v4

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isAntiShakeOn()Z

    move-result v2

    if-eqz v3, :cond_84

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    :cond_84
    if-eqz v4, :cond_93

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v5, :cond_93

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_93
    if-eqz v2, :cond_a2

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    if-eqz v5, :cond_a2

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/view/DebounceView;->setVisibility(I)V

    :cond_a2
    iget-boolean v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsOpenTouchScreenTakePicture:Z

    if-eqz v5, :cond_b0

    invoke-virtual {v1, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTouchScreenTakePicState(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V

    :cond_b0
    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mSoundKeyFunction:Ljava/lang/String;

    if-eqz v5, :cond_bd

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mSoundKeyFunction:Ljava/lang/String;

    invoke-static {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->valueOf(Ljava/lang/String;)Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundKeyMode(Ljava/lang/Enum;)V

    :cond_bd
    const-string/jumbo v5, "TAG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "businessSettingModel.hasUseAdvanceParameter() = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->hasUseAdvanceParameter()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mFocusUI:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setVisibility(I)V

    return-void
.end method

.method private restoreLastMode()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private showQRLayout()V
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v1, "QRCamera"

    const-string/jumbo v2, "showQRLayout"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    if-nez v1, :cond_68

    iput-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v1, v5}, Lqr/recognize/view/ViewfinderView;->setIsDrawLine(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v1, v3}, Lqr/recognize/view/ViewfinderView;->setIsStopDrawView(Z)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2c
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutBottomMargin:I

    add-int/2addr v2, v0

    int-to-float v2, v2

    invoke-direct {v1, v4, v4, v2, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->normalInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModePickerBtn()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_68
    return-void
.end method

.method private startHideQRLayoutAnimation()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "startHideQRLayoutAnimation"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_47

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    if-eqz v0, :cond_47

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startScanQrcode()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    if-eqz v0, :cond_24

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    if-eqz v0, :cond_47

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->reInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$QRAnimationListener;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRResultLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->translateAnimation:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_47
    return-void
.end method

.method private startRecognitionPreviewFrame([B)V
    .registers 8

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    if-nez v2, :cond_f

    new-instance v2, Lqr/recognize/decoding/CaptureActivityHandler;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->decodeFormats:Ljava/util/Vector;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->characterSet:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v4}, Lqr/recognize/decoding/CaptureActivityHandler;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;Ljava/util/Vector;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    :cond_f
    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    if-eqz v2, :cond_3a

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    invoke-virtual {v2}, Lqr/recognize/decoding/CaptureActivityHandler;->getDecodeThread()Lqr/recognize/decoding/DecodeThread;

    move-result-object v2

    invoke-virtual {v2}, Lqr/recognize/decoding/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const v3, 0x7f0a002a

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-void
.end method

.method private startScanQrcode()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraDevice()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setOneShotPreviewCallBack(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_1b
    return-void
.end method

.method private updateQrCameraUI()V
    .registers 11

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v1

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateQrCameraUI state ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_125

    iput-boolean v7, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v3, v7}, Lqr/recognize/view/ViewfinderView;->setVisibility(I)V

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isEnableQrScanTips ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    if-eqz v3, :cond_126

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    invoke-virtual {v3, v8}, Lqr/recognize/view/ViewfinderView;->setIsDrawLine(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0049

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const-string/jumbo v3, "QRCamera"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tipsMargin = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " Util.dpToPixel(tipsMargin) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v3

    invoke-virtual {v3}, Lqr/recognize/camera/QRManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iput-boolean v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_b0
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v3, v9}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getShutterBtn()Landroid/widget/ImageButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    if-eqz v3, :cond_f7

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/camera/view/DebounceView;->setVisibility(I)V

    :cond_f7
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTakePictureMask:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTapCaptureTipHolderView:Lcom/pinguo/camera360/camera/view/TapCaptureView;

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/camera/view/TapCaptureView;->setHaveTouchScreen(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdjustPreviewOriIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v3, :cond_120

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    invoke-virtual {v3, v9}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_120
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mFocusUI:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setVisibility(I)V

    :cond_125
    return-void

    :cond_126
    const-string/jumbo v3, "QRCamera"

    const-string/jumbo v4, "set QR tips invisible"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_b0
.end method


# virtual methods
.method public getCaptureActivityHandler()Lqr/recognize/decoding/CaptureActivityHandler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    return-object v0
.end method

.method public getDisplayPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPreviewSizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPreviewSizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPreviewSizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    return-object v0
.end method

.method public getViewfinder()Lqr/recognize/view/ViewfinderView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mViewfinderView:Lqr/recognize/view/ViewfinderView;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public handleDecode(Lcom/google/zxing/Result;)V
    .registers 12

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-nez p1, :cond_a

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startScanQrcode()V

    iput-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    :cond_9
    :goto_9
    return-void

    :cond_a
    const-string/jumbo v6, "f4ab1ced32e2092c35bfa10cae9e836c"

    invoke-static {v6}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Camera;->cameraModeUsed(Ljava/lang/String;)V

    const-string/jumbo v1, "https://"

    const-string/jumbo v0, "http://"

    const/4 v5, 0x0

    :try_start_17
    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1a} :catch_a7

    move-result-object v5

    :goto_1b
    const-string/jumbo v6, "QRCamera"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "resultString = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " resultString.startsWith(HUAWEI_TV) = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "huaweitv"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "huaweitv"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b2

    :try_start_56
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string/jumbo v7, "UTF-8"

    invoke-direct {v3, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v6, "Pinguo"

    const-string/jumbo v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lqr/recognize/util/DesUtils;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_76} :catch_ad

    move-result-object v5

    :goto_77
    const/4 v4, 0x1

    :goto_78
    invoke-direct {p0, v4, v5}, Lcom/pinguo/camera360/camera/controller/QRCamera;->changeQRContext(ILjava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mVibrator:Landroid/os/Vibrator;

    if-eqz v6, :cond_8b

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v6}, Landroid/os/Vibrator;->cancel()V

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v7, 0xc8

    invoke-virtual {v6, v7, v8}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_8b
    sget-boolean v6, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-nez v6, :cond_92

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->showQRLayout()V

    :cond_92
    iget-boolean v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRScanText:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsEnableQRTips(Z)V

    iput-boolean v9, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    goto/16 :goto_9

    :catch_a7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1b

    :catch_ad
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_77

    :cond_b2
    const-string/jumbo v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c4

    const-string/jumbo v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c6

    :cond_c4
    const/4 v4, 0x0

    goto :goto_78

    :cond_c6
    const/4 v4, 0x2

    goto :goto_78
.end method

.method public isCanTakePicture()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isIgnoreAutoFocus()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 6

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "QRCamera onCameraOpen"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->changeFlashItem(Ljava/lang/String;Z)Z

    return-void
.end method

.method public onEffectTypeChange(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onKeyDown(I)Z
    .registers 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startHideQRLayoutAnimation()V

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onModeFunctionClick()V
    .registers 3

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "QRCamera onModeFunctionClick"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPreviewSizeInfo:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    invoke-virtual {v0}, Lqr/recognize/camera/QRManager;->clearResource()V

    :cond_28
    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startRecognitionPreviewFrame([B)V

    goto :goto_8
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;Z)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z

    if-nez v0, :cond_26

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startRecognitionPreviewFrame([B)V

    :cond_26
    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPreviewFrame([BLandroid/hardware/Camera;Z)V

    goto :goto_8
.end method

.method public onResume()V
    .registers 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->animHideChildEffectView()V

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    invoke-virtual {v0}, Lqr/recognize/camera/QRManager;->clearResource()V

    :cond_31
    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsClickedQRResult:Z

    return-void
.end method

.method public onShutter()V
    .registers 1

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 4

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "onSingleTapUp"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->hideFlashPopMenu()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startHideQRLayoutAnimation()V

    const/4 v0, 0x1

    return v0
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 8

    const/4 v4, 0x0

    const-string/jumbo v2, "QRCamera"

    const-string/jumbo v3, "QRCamera onStart"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->intiQrUI()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lqr/recognize/camera/QRManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIsEnableQRTips()Z

    move-result v2

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->updateQrCameraUI()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->intiQRCameraIfPreviewStart()V

    sget-boolean v2, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v2, :cond_36

    new-instance v2, Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;-><init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mLayoutChangeListener:Lcom/pinguo/camera360/camera/controller/QRCamera$LayoutChangeListener;

    :cond_36
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v2

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsOpenTouchScreenTakePicture:Z

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsOpenTouchScreenTakePicture:Z

    if-eqz v2, :cond_47

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTouchScreenTakePicState(Z)V

    :cond_47
    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    sget-object v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    :cond_63
    sget-object v2, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setSoundKeyMode(Ljava/lang/Enum;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mSoundKeyFunction:Ljava/lang/String;

    :cond_6a
    const-string/jumbo v2, "QRCamera"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isEnableQrScanTips = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isEnableQrScanTips:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method public onStartPreview()V
    .registers 3

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "onStartPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->updateQrCameraUI()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->intiQRCameraIfPreviewStart()V

    return-void
.end method

.method public onStop()V
    .registers 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "QRCamera onStop"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    const-string/jumbo v1, "f4ab1ced32e2092c35bfa10cae9e836c"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->changeFlashItem(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->restoreLastMode()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->restoreCameraUI()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->releaseResAfterPreviewStop()V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mCaptureActivityHandler:Lqr/recognize/decoding/CaptureActivityHandler;

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;

    move-result-object v0

    invoke-virtual {v0}, Lqr/recognize/camera/QRManager;->clearResource()V

    :cond_3e
    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void
.end method

.method public onStopPreview()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsCanStartQRScan:Z

    const-string/jumbo v0, "QRCamera"

    const-string/jumbo v1, "QRCamera onStopPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStopPreview()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->releaseResAfterPreviewStop()V

    return-void
.end method

.method public onTopMenuItemClick()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/QRCamera;->startHideQRLayoutAnimation()V

    return-void
.end method
