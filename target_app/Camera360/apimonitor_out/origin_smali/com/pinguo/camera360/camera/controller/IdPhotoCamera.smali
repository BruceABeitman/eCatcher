.class public Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;
.super Lcom/pinguo/camera360/camera/controller/ModeCameraController;
.source "IdPhotoCamera.java"

# interfaces
.implements Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;,
        Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;
    }
.end annotation


# static fields
.field private static final RATIO_4X3:F = 1.3333334f

.field public static final TAG:Ljava/lang/String;


# instance fields
.field mFifthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;

.field mFirstGuideView:Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;

.field mFourthGuideView:Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;

.field private mGuideViewBarBitmap:Landroid/graphics/Bitmap;

.field private mGuideViewBottomBar:Landroid/widget/ImageView;

.field private mGuideViewTopBar:Landroid/widget/ImageView;

.field private mHandler:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;

.field private mHeadBackGround:Landroid/widget/ImageView;

.field private mHeadBackGroundBitmap:Landroid/graphics/Bitmap;

.field private mHeadBackGroundLayout:Landroid/widget/RelativeLayout;

.field private mHeadBlackLayer:Landroid/view/View;

.field mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

.field private mIdPhotoBarUI:Landroid/widget/RelativeLayout;

.field private mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

.field mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

.field private mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

.field private mIsIdPhotoModeDestroy:Z

.field private mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

.field private mJumpOutGuideImg:Landroid/widget/ImageView;

.field private mJumpOutGuideView:Landroid/view/View;

.field final mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

.field mSecondGuideView:Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;

.field mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

.field mThirdGuideView:Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mViewPagerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mZeroGuideView:Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;-><init>(Lcom/pinguo/camera360/camera/model/ModeCameraModel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$1;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "IdPhotoCamera"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p1, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHandler:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->showIDPhotoBackGround()V

    return-void
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->hideIDPhotoBackGround()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBlackLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPager()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->recycleGuideViewResource()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reStartPreview()V

    return-void
.end method

.method private canShowPreviewFunBtn()Z
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->isZhCn()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private changeFocusModeToAuto()V
    .registers 8

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v5

    const-string/jumbo v6, "key_camera_focusmode"

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v2

    if-eqz v2, :cond_76

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_76

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "auto"

    if-eq v5, v6, :cond_3b

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v4

    const-string/jumbo v5, "auto"

    invoke-static {v5, v4}, Lcom/pinguo/lib/util/Util;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const-string/jumbo v5, "auto"

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    :cond_3b
    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->enableFocusMode(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->setIsForceDisableFocusModeFunction(Z)V

    iget-object v5, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v5, v5, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppInstance()Lcom/pinguo/camera360/PgCameraApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/PgCameraApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f08031f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getTextView()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_76

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->setText(Ljava/lang/String;)V

    :cond_76
    return-void
.end method

.method private hideIDPhotoBackGround()V
    .registers 5

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_20

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_20
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2d
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_3a

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3a
    return-void
.end method

.method private initHeadAndGuideBar()V
    .registers 9

    const v7, 0x7f070028

    const/4 v6, -0x2

    const/4 v5, -0x1

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method private initViewPager()V
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    new-instance v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$3;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mZeroGuideView:Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFirstGuideView:Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSecondGuideView:Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mThirdGuideView:Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFourthGuideView:Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFifthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;

    new-instance v1, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-direct {v1, v0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-virtual {v1, p0}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->setSixGuideViewCallback(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPagerBackGround()V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mZeroGuideView:Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFirstGuideView:Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSecondGuideView:Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mThirdGuideView:Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFourthGuideView:Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFifthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$4;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private initViewPagerBackGround()V
    .registers 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v3, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initViewPagerBackGround"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/widget/ImageView;)V

    new-array v3, v6, [Ljava/lang/Integer;

    const v4, 0x7f0201a9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/widget/ImageView;)V

    new-array v3, v6, [Ljava/lang/Integer;

    const v4, 0x7f020285

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;Landroid/widget/ImageView;)V

    new-array v3, v6, [Ljava/lang/Integer;

    const v4, 0x7f02025e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5e

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020274

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    :cond_5e
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideImg:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private reSizePreview()V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v2

    if-nez v2, :cond_33

    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "start setSurfaceVisibility"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getPreviewModel()Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    move-result-object v1

    if-eqz v1, :cond_33

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    :cond_33
    return-void
.end method

.method private reStartPreview()V
    .registers 8

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v3

    sget-object v4, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "KeyEvent.KEYCODE_BACK state = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_41

    sget-boolean v4, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z

    if-eqz v4, :cond_42

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->releaseCamera()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    :cond_41
    :goto_41
    return-void

    :cond_42
    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startPreview()V

    goto :goto_41
.end method

.method private recycleGuideViewResource()V
    .registers 8

    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "recycleGuideViewResource"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->removeAllViews()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/ViewPager;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundLayout:Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    if-eqz v2, :cond_37

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_37
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBlackLayer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_45
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    if-eqz v2, :cond_4e

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4e
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    invoke-virtual {v2, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setCurrentItem(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_78

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_76
    if-lt v0, v1, :cond_d8

    :cond_78
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    if-eqz v2, :cond_83

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    :cond_83
    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mZeroGuideView:Lcom/pinguo/camera360/guide/IdPhotoFirstGuideView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFirstGuideView:Lcom/pinguo/camera360/guide/IdPhotoSecondGuideView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSecondGuideView:Lcom/pinguo/camera360/guide/IdPhotoThirdGuideView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mThirdGuideView:Lcom/pinguo/camera360/guide/IdPhotoFourthGuideView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFourthGuideView:Lcom/pinguo/camera360/guide/IdPhotoFifthGuideView;

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mFifthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSixthGuideView;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    if-eqz v2, :cond_9a

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;->setSixGuideViewCallback(Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView$SixGuideViewCallBack;)V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mSixthGuideView:Lcom/pinguo/camera360/guide/IdPhotoSeventhGuideView;

    :cond_9a
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_b2

    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mHeadBackGroundBitmap"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundBitmap:Landroid/graphics/Bitmap;

    :cond_b2
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBarBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_c7

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBarBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBarBitmap:Landroid/graphics/Bitmap;

    :cond_c7
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_d7

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideBitmap:Landroid/graphics/Bitmap;

    :cond_d7
    return-void

    :cond_d8
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPagerList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/guide/AbsIDPhotoGuideView;->clearResource()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_76
.end method

.method private restoreIdPhotoUI()V
    .registers 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTouchScreenTakePic()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    :cond_15
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->setVisibility(I)V

    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "mIDPhotoGuideView set gone"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->dismissPreviewRationFun()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCompositionLineState()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v2, :cond_56

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_56
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideIdPhotoGuideIcon()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v2, v2, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->restoreEffectIndicatorListener()V

    return-void
.end method

.method private showIDPhotoBackGround()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_20
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2d
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3a
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_58

    sget-object v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "add the top bar view"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_58
    return-void
.end method

.method private updateIDPhotoCameraUI()V
    .registers 9

    const/4 v7, 0x0

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateIDPhotoCameraUI state ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16f

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0801b9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setTextIndicator(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showIdPhotoGuideIcon()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getEffectIndicatorContainer()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->getEffectIndicatorContainer()Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$2;-><init>(Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getZoom()I

    move-result v3

    if-eqz v3, :cond_8d

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->resetZoomValue()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    :cond_8d
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mZoomControlBarView:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->getTopMenuItem(I)Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/view/TopMenuViewItem;->getRotateImageView()Lcom/pinguo/camera360/lib/ui/RotateImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-direct {v1, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->setImageSize(II)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->setVisibility(I)V

    sget-object v3, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "start show mIDPhotoGuideView width = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "height = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFunBtn()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_11b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_115

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->canShowPreviewFunBtn()Z

    move-result v3

    if-eqz v3, :cond_115

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_115
    const v3, 0x7f0200ed

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_11b
    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getModeFunctionBtn()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    if-eqz v3, :cond_133

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCompositionView:Lcom/pinguo/camera360/camera/view/CompositionView;

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/camera/view/CompositionView;->setVisibility(I)V

    :cond_133
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->changeFocusModeToAuto()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_14b

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v3

    if-nez v3, :cond_14b

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    :cond_14b
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isFirstEnterIdPhoto()Z

    move-result v3

    if-eqz v3, :cond_16f

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v3, v3, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mAdvanceParamIndicator:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initViewPager()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsFirstEnterIdPhoto(Z)V

    :cond_16f
    return-void
.end method


# virtual methods
.method public onEffectTypeChange(Ljava/lang/String;Z)V
    .registers 3

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/order/event/OrderSwitcherEvent;)V
    .registers 4

    const/16 v0, 0x8

    invoke-static {}, Lcom/pinguo/camera360/push/utils/SystemUtil;->isZhCn()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getIdPassportOpenState()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFunBtn()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mCameraBottomMenuView:Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/CameraBottomMenuView;->getPreviewFunBtn()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1e
.end method

.method public onKeyDown(I)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_35

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v3

    if-nez v3, :cond_33

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->recycleGuideViewResource()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "KeyEvent.KEYCODE_BACK state = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reStartPreview()V

    :cond_32
    :goto_32
    return v1

    :cond_33
    move v1, v2

    goto :goto_32

    :cond_35
    const/16 v3, 0x52

    if-ne p1, v3, :cond_45

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_32

    :cond_45
    move v1, v2

    goto :goto_32
.end method

.method public onModeFunctionClick()V
    .registers 1

    return-void
.end method

.method public onPause()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onPause()V

    return-void
.end method

.method public onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
    .registers 13

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    if-eqz v2, :cond_5

    :goto_4
    return-void

    :cond_5
    sget-object v2, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "jpg data[length:%d, width:%d, height:%d, ori:%d]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    array-length v6, p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {p4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    invoke-virtual {v2, p1, p4, p5}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->makePictureInfo([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)Lcom/pinguo/camera360/photoedit/PictureInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setExifData([B)V

    new-instance v0, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;

    invoke-direct {v0, v1, p1}, Lcom/pinguo/camera360/camera/event/ShowIDPhotoFaceDetectEvent;-><init>(Lcom/pinguo/camera360/photoedit/PictureInfo;[B)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    goto :goto_4
.end method

.method public onResume()V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onResume()V

    sget-object v0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->hideEffectIndicatorIcon()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->setExpandable(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mSubEffectSelectView:Lcom/pinguo/camera360/camera/view/SubEffectSelectView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/SubEffectSelectView;->showIdPhotoGuideIcon()V

    goto :goto_4
.end method

.method public onShutter()V
    .registers 1

    return-void
.end method

.method public onStart(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v8, 0x0

    const v11, 0x3faaaaab

    const/4 v10, 0x0

    const/4 v3, 0x1

    sget-object v7, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v9, " onStart"

    invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v8, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v7, p1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v9, 0x7f0a0541

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    iget-object v7, p1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    const v9, 0x7f0a01d2

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d6

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d7

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d4

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoBarUI:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d3

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGroundLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->initHeadAndGuideBar()V

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d5

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBlackLayer:Landroid/view/View;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoGuideUI:Landroid/widget/RelativeLayout;

    const v9, 0x7f0a01d8

    invoke-virtual {v7, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideView:Landroid/view/View;

    const v9, 0x7f0a01d9

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideImg:Landroid/widget/ImageView;

    sget-boolean v7, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN_MR2:Z

    if-eqz v7, :cond_b0

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    if-eqz v7, :cond_95

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewTopBar:Landroid/widget/ImageView;

    invoke-virtual {v7, v3, v10}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_95
    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    if-eqz v7, :cond_9e

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mGuideViewBottomBar:Landroid/widget/ImageView;

    invoke-virtual {v7, v3, v10}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_9e
    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    if-eqz v7, :cond_a7

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHeadBackGround:Landroid/widget/ImageView;

    invoke-virtual {v7, v3, v10}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_a7
    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideImg:Landroid/widget/ImageView;

    if-eqz v7, :cond_b0

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mJumpOutGuideImg:Landroid/widget/ImageView;

    invoke-virtual {v7, v3, v10}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_b0
    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIndicatorContainer:Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;

    const/4 v9, 0x7

    invoke-virtual {v7, v9}, Lcom/pinguo/camera360/camera/view/arcseekbar/IdPhotoGuideIndicator;->setCount(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->updateIDPhotoCameraUI()V

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v6

    sget-object v7, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "intiQRCameraIfPreviewStart state ="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v5

    const/4 v4, 0x0

    if-eqz v5, :cond_117

    sget-object v7, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "picSize = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v7, v9

    :cond_117
    sget-object v7, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "picRadio = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "RATIO_4X3 = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sub-float v7, v4, v11

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v9, 0x3d4ccccd

    cmpg-float v7, v7, v9

    if-gez v7, :cond_17a

    :goto_144
    if-nez v3, :cond_16b

    sget-object v7, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16b

    iget-object v7, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    if-eqz v0, :cond_16b

    sget-boolean v7, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z

    if-eqz v7, :cond_17c

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->releaseCamera()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    :cond_16b
    :goto_16b
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    invoke-static {}, Lcom/pinguo/camera360/order/model/Transaction;->getInstance()Lcom/pinguo/camera360/order/model/Transaction;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/order/model/Transaction;->updateSwitcher()V

    return-void

    :cond_17a
    move v3, v8

    goto :goto_144

    :cond_17c
    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startPreview()V

    goto :goto_16b
.end method

.method public onStartPreview()V
    .registers 6

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    sget-object v1, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onStartPreview"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStartPreview()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->updateIDPhotoCameraUI()V

    :cond_1d
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isFirstStartPreviewIDCamera()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHandler:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4
.end method

.method public onStop()V
    .registers 12

    sget-object v9, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "onStop"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mPgCameraFragment:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->restoreIdPhotoUI()V

    iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v7

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z

    move-result v4

    sget-object v9, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v7, v9, :cond_6f

    if-nez v4, :cond_6f

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;

    move-result-object v9

    const-string/jumbo v10, "key_camera_picture_size"

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v5

    const/4 v3, 0x0

    if-eqz v5, :cond_46

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->parseSize(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    :cond_46
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPictureSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6f

    iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIdPhotoCameraModel:Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;

    invoke-virtual {v9}, Lcom/pinguo/camera360/camera/model/IdPhotoCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v0

    sget-boolean v9, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MTK:Z

    if-eqz v9, :cond_85

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->releaseCamera()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    :cond_6f
    :goto_6f
    iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIDPhotoGuideView:Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/IDPhoto/view/IDCameraGuideLineView;->setVisibility(I)V

    iget-object v9, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    iget-object v9, v9, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTopMenuView:Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/view/CameraTopMenuView;->setIsForceDisableFocusModeFunction(Z)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->recycleGuideViewResource()V

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStop()V

    return-void

    :cond_85
    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->stopPreview()V

    sget-object v9, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "exit to id photo mode need stop preview"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v9

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reSizePreview()V

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->startPreview()V

    goto :goto_6f
.end method

.method public onStopPreview()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->onStopPreview()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mHandler:Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera$MyHandler;->removeMessages(I)V

    return-void
.end method

.method public preStartPreview()V
    .registers 4

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    if-eqz v1, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-super {p0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preStartPreview()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updatePictureInfoForIdPhoto()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reSizePreview()V

    goto :goto_4
.end method

.method public preTakePicture()V
    .registers 4

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mIsIdPhotoModeDestroy:Z

    if-eqz v2, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->setRingerMode(I)V

    goto :goto_4
.end method

.method public reScanGuideView()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public startMakeIdPhoto()V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Passport;->passportGuideBtnClick(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->recycleGuideViewResource()V

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/controller/IdPhotoCamera;->reStartPreview()V

    :cond_14
    return-void
.end method
