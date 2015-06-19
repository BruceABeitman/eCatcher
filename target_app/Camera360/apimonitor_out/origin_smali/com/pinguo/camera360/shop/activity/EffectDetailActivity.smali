.class public Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;
.super Landroid/app/Activity;
.source "EffectDetailActivity.java"


# instance fields
.field private mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

.field private mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

.field private mEffectProgress:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

.field private mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;

.field private mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

.field private mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

.field private mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

.field private mOriPictureText:Landroid/widget/TextView;

.field private mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

.field private mReuseData:Z

.field private mShortPicFlag:Z

.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;

.field private mTryCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

.field private mUseType:I

.field private tvPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->tvPrice:Landroid/widget/TextView;

    new-instance v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$1;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTryCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    new-instance v0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$2;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->fillHoriScrollEffects()V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/BannerView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    return-object v0
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;

    return-object v0
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mShortPicFlag:Z

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mShortPicFlag:Z

    return v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkNetWorkAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkSdkVersionAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkMemberOnly()Z

    move-result v0

    return v0
.end method

.method static synthetic access$16(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doInstall()V

    return-void
.end method

.method static synthetic access$17(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->showInterruptDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$18(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doUseEffect(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$19(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->tvPrice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$21(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    return-object v0
.end method

.method static synthetic access$22(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mEffectProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$24(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/ProgressButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/view/DetailInstallButton;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/ui/TitleView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Lcom/pinguo/camera360/shop/model/entity/Product;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setBackResult()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mOriPictureText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mReuseData:Z

    return-void
.end method

.method private checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getFrontImageVersion()I

    move-result v0

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    if-eqz v1, :cond_14

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iget v1, v1, Lcom/pinguo/camera360/shop/model/entity/Requirements;->engineMin:I

    if-le v1, v0, :cond_14

    const/4 v1, 0x0

    :goto_13
    return v1

    :cond_14
    const/4 v1, 0x1

    goto :goto_13
.end method

.method private checkMemberOnly()Z
    .registers 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v6, v6, Lcom/pinguo/camera360/shop/model/entity/Product;->promoteType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_49

    move v2, v4

    :goto_a
    invoke-static {p0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v1

    if-eqz v2, :cond_4b

    if-nez v1, :cond_4b

    new-instance v0, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080196

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v4, -0x1

    const v6, 0x7f0802ce

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$13;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$13;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v4, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v4, -0x2

    const v6, 0x7f08028c

    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$14;

    invoke-direct {v7, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$14;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v4, v6, v7}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->show()V

    :goto_48
    return v5

    :cond_49
    move v2, v5

    goto :goto_a

    :cond_4b
    move v5, v4

    goto :goto_48
.end method

.method private checkNetWorkAvailable()Z
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->downloadPath:Ljava/lang/String;

    const-string/jumbo v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string/jumbo v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_27

    const v0, 0x7f08032a

    const/16 v2, 0xbb8

    invoke-static {v0, p0, v2, v1}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    move v0, v1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private checkSdkVersionAvailable()Z
    .registers 8

    invoke-static {}, Lcom/pinguo/lib/util/Util;->getVersionCode()I

    move-result v6

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->requirements:Lcom/pinguo/camera360/shop/model/entity/Requirements;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Requirements;->sdkMin:I

    if-ge v6, v0, :cond_27

    const v1, 0x7f080234

    const v2, 0x7f080184

    const v3, 0x7f0802fd

    new-instance v4, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$12;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$12;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialogNoTitle(Landroid/content/Context;IIILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private doInstall()V
    .registers 5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iput v1, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$10;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$10;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_21
    return-void

    :cond_22
    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$11;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    goto :goto_21
.end method

.method private doUseEffect(Landroid/content/Context;)V
    .registers 9

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectMoreOpen(Ljava/lang/String;)V

    sget-object v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v5, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectsByPackKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_28

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v3, v4, Lcom/pinguo/camera360/effect/model/entity/Effect;->typeKey:Ljava/lang/String;

    :cond_28
    iget v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mUseType:I

    if-eqz v4, :cond_31

    iget v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mUseType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3b

    :cond_31
    const-string/jumbo v4, "c205e3582b514d6fb5c21a953e1e901e"

    invoke-static {p1, v4, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->finish()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mUseType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3a

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/effect/model/entity/Effect;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveCpuCmd()Z

    move-result v4

    if-eqz v4, :cond_5d

    invoke-virtual {v0}, Lcom/pinguo/camera360/effect/model/entity/Effect;->haveGPUCmd()Z

    move-result v4

    if-nez v4, :cond_5d

    const v4, 0x7f080233

    const/16 v5, 0xbb8

    invoke-static {v4, p0, v5, v6}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    goto :goto_3a

    :cond_5d
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;

    invoke-direct {v5, v3}, Lcom/pinguo/camera360/camera/event/ChangeParentEffectEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    new-instance v2, Landroid/content/Intent;

    const-class v4, Lus/pinguo/androidsdk/pgedit/PGEditActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x400

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_3a
.end method

.method private fillHoriScrollEffects()V
    .registers 4

    new-instance v1, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    invoke-direct {v1}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getTryEffectsByProductKey(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->setData(Ljava/util/List;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;->setAdapter(Lcom/pinguo/camera360/shop/adapter/BaseHoriScrollItemAdapter;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollAdapter:Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;

    new-instance v2, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$15;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter;->setOnEffectItemClickListener(Lcom/pinguo/camera360/shop/adapter/EffectHoriScrollItemAdapter$OnEffectItemClickListener;)V

    return-void
.end method

.method private findViews()V
    .registers 2

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/BannerView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    const v0, 0x7f0a0297

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHoriScrollEffectsContainer:Lcom/pinguo/camera360/shop/view/LinearHoriScrollView;

    const v0, 0x7f0a024a

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/view/ProgressButton;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    const v0, 0x7f0a0296

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mOriPictureText:Landroid/widget/TextView;

    const v0, 0x7f0a018b

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mEffectProgress:Landroid/view/View;

    return-void
.end method

.method private getPrice(Landroid/content/Context;IIII)Ljava/lang/String;
    .registers 11

    const/4 v4, 0x2

    if-eqz p3, :cond_5

    if-nez p4, :cond_17

    :cond_5
    if-ne p5, v4, :cond_f

    const v1, 0x7f08021c

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const v1, 0x7f080251

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_62

    packed-switch p2, :pswitch_data_70

    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_27
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p3}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v4, v2}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4f

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :pswitch_54
    const-string/jumbo v1, "\uffe5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :pswitch_5b
    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_27

    :cond_62
    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_54
        :pswitch_5b
    .end packed-switch
.end method

.method private initViews()V
    .registers 10

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v1, 0x7f08025c

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setRightBtnText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$3;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V

    new-instance v0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    invoke-direct {v0, v2}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicAdapter:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    new-instance v6, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;

    invoke-direct {v6, v2}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;-><init>(I)V

    const-string/jumbo v0, "always_loading"

    invoke-virtual {v6, v0}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    const v1, 0x272829

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$4;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnLongPressListener(Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$5;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/view/BannerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$6;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mDetailPicView:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v0, v6}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-nez v0, :cond_d2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    :cond_6a
    :goto_6a
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$7;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setOnInstallBtnClickListener(Lcom/pinguo/camera360/shop/view/InstallButton$OnInstallBtnClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressBackgroundColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgressColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v3, :cond_f4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->showRightBtn()V

    :goto_9f
    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->tvPrice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v7, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-eqz v7, :cond_b6

    const/4 v0, 0x2

    if-eq v7, v0, :cond_b6

    const/4 v0, 0x4

    if-ne v7, v0, :cond_d1

    :cond_b6
    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->tvPrice:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v2, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->purchaseType:I

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v3, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->price:I

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v4, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->coin:I

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v5, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->promoteType:I

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getPrice(Landroid/content/Context;IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_d1
    return-void

    :cond_d2
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v4, :cond_e7

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallingProgress:Lcom/pinguo/camera360/shop/view/ProgressButton;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->installProgress:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/ProgressButton;->setProgress(I)V

    goto :goto_6a

    :cond_e7
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v0, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    if-ne v0, v3, :cond_6a

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallButton:Lcom/pinguo/camera360/shop/view/DetailInstallButton;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/shop/view/DetailInstallButton;->setState(I)V

    goto/16 :goto_6a

    :cond_f4
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TitleView;->hideRightBtn()V

    goto :goto_9f
.end method

.method private setBackResult()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "name_product_id"

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method private showInterruptDialog(Landroid/content/Context;)V
    .registers 11

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080237

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080236

    const v4, 0x7f080235

    new-instance v5, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;

    invoke-direct {v5, p0, p1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$8;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;Landroid/content/Context;)V

    new-instance v6, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$9;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity$9;-><init>(Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;)V

    move-object v0, p1

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "name_product_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "name_effect_use_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivityFromBanner(Landroid/app/Activity;Ljava/lang/String;I)V
    .registers 8

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    if-eqz v1, :cond_22

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "name_product_id"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "name_effect_use_type"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const-string/jumbo v2, "startActivityFromBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "can not find the product from productId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v2, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    if-nez v2, :cond_21

    invoke-static {p0, p2}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startRefreshedEffectStore(Landroid/content/Context;I)V

    goto :goto_21
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3f1

    if-ne p1, v0, :cond_d

    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->doInstall()V

    :cond_d
    return-void
.end method

.method public onBackPressed()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setBackResult()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name_product_id"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "name_effect_use_type"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mUseType:I

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    if-nez v1, :cond_39

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->finish()V

    :goto_38
    return-void

    :cond_39
    const v1, 0x7f030076

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->findViews()V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->initViews()V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->installTry:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTryCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v4, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v1, v2, v3, v4}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->installTry(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {v1}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectLayShow(Ljava/lang/String;)V

    goto :goto_38
.end method

.method protected onDestroy()V
    .registers 5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v0, :cond_25

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->installTry:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mTryCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mProduct:Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v1, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->install:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->mInstallCallback:Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    :cond_25
    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V

    return-void
.end method
