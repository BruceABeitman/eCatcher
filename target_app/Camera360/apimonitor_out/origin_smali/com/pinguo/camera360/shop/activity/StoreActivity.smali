.class public Lcom/pinguo/camera360/shop/activity/StoreActivity;
.super Landroid/app/Activity;
.source "StoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field public static final BUNDLE_NAME:Ljava/lang/String; = "name_product_id"

.field public static final BUNDLE_NAME_CAMERA_SHOP_FORCE_REFRESH:Ljava/lang/String; = "name_camera_force_refresh"

.field public static final BUNDLE_NAME_EFFECT_SHOP_FORCE_REFRESH:Ljava/lang/String; = "name_effect_force_refresh"

.field public static final BUNDLE_NAME_EFFECT_SHOP_USE_TYPE:Ljava/lang/String; = "name_effect_use_type"

.field public static final EFFECT_SHOP_USE_TYPE_CAMERA:I = 0x0

.field public static final EFFECT_SHOP_USE_TYPE_PHOTO_EDIT:I = 0x2

.field public static final EFFECT_SHOP_USE_TYPE_PICTURE_PREVIEW:I = 0x1

.field public static final REQUEST_CODE_LOGIN:I = 0x3f1

.field public static final REQUEST_CODE_SONY_GUIDE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = null

.field public static final TYPE_CAMERA:I = 0x1

.field public static final TYPE_EFFECT:I


# instance fields
.field private mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

.field private mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

.field private mEffectShopUseType:I

.field private mIsCategoryList:Z

.field private mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mProgress:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

.field private mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

.field private mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

.field private mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

.field private mStoreType:I

.field private mTitleView:Lcom/pinguo/camera360/ui/TitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->setPullRefreshing()V

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/shop/activity/StoreActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/shop/activity/StoreActivity;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    return v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/base/BaseArrayAdapter;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->hideProgress()V

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

.method private findViews()V
    .registers 2

    const v0, 0x7f0a03da

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    const v0, 0x7f0a03d9

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/TitleView;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    return-void
.end method

.method private hideProgress()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mProgress:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;->dismiss()V

    return-void
.end method

.method private setPullRefreshing()V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/StoreActivity$8;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$8;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private showProgress()V
    .registers 2

    invoke-static {p0}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showProgressDialogTransparent(Landroid/content/Context;)Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mProgress:Lcom/pinguo/camera360/ui/dialog/BSProgressDialog;

    return-void
.end method

.method public static startCameraStoreActivity(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startStoreActivity(Landroid/content/Context;I)V

    return-void
.end method

.method public static startEffectStroeActivity(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "store_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "name_effect_use_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startEffectStroeListActivity(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "store_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "category_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "name_effect_use_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startRefreshedCameraStore(Landroid/content/Context;)V
    .registers 4

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "store_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "name_camera_force_refresh"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static startRefreshedEffectStore(Landroid/content/Context;I)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "store_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "name_effect_use_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "name_effect_force_refresh"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static startStoreActivity(Landroid/content/Context;I)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "store_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateStore()V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    if-nez v0, :cond_2c

    iget v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    if-nez v0, :cond_33

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage()V

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->needForceRefresh()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-static {p0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->showProgress()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    new-instance v1, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$5;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/shop/model/IShopModel;->update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->update()Z

    goto :goto_2c

    :cond_33
    iget v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2c

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->update()Z

    goto :goto_2c
.end method


# virtual methods
.method public getStoreType()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 15

    const/4 v10, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v8, 0x3f1

    if-ne p1, v8, :cond_47

    if-ne p2, v10, :cond_46

    if-eqz p3, :cond_46

    sget-object v8, Lcom/pinguo/camera360/shop/activity/StoreActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "\u767b\u5f55\u6210\u529f"

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-static {v8}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterClick(I)V

    const-string/jumbo v8, "context_data"

    invoke-virtual {p3, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v10, :cond_46

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v8, :cond_46

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8, v5}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/camera360/shop/model/entity/Product;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->checkEngineMin(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v8

    if-eqz v8, :cond_46

    const/4 v8, 0x3

    iput v8, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v8, v3}, Lcom/pinguo/camera360/shop/model/IShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    :cond_46
    :goto_46
    return-void

    :cond_47
    const/16 v8, 0x3e8

    if-ne p1, v8, :cond_61

    if-ne p2, v10, :cond_46

    const-string/jumbo v2, "7b3b6b04486f12d95690f533f5253a74"

    invoke-static {p0}, Lcom/pinguo/camera360/PgCameraApplication;->getStartCameraIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "bundle_key_mode"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->finish()V

    goto :goto_46

    :cond_61
    if-eqz p3, :cond_46

    const-string/jumbo v8, "name_product_id"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_46

    const-string/jumbo v8, ""

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    const-string/jumbo v9, "name_product_id"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/pinguo/camera360/shop/model/IShopModel;->getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;

    move-result-object v7

    const/4 v0, 0x0

    :goto_83
    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getCount()I

    move-result v8

    if-ge v0, v8, :cond_46

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8, v0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v8, :cond_b1

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8, v0}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget-object v8, v6, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    iget-object v9, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b1

    iget v8, v7, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iput v8, v6, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I

    iget-object v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v8}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->notifyDataSetChanged()V

    goto :goto_46

    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_83
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v9, 0x1

    invoke-static {v9}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Personal;->personalRegisterLayShow(I)V

    invoke-static {}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "store_type"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    iget v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    if-nez v9, :cond_2d

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "name_effect_use_type"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I

    :cond_2d
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "category_id"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_43

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    :cond_43
    const v9, 0x7f0300a6

    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->setContentView(I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->findViews()V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    new-instance v10, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$1;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V

    const/4 v1, 0x0

    iget v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_104

    invoke-static {}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v10, 0x7f080262

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0021

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v9, -0x1

    invoke-virtual {v5, v3, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    new-instance v9, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;

    invoke-direct {v9}, Lcom/pinguo/camera360/shop/activity/CameraModeItemAdapter;-><init>()V

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    :goto_a5
    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v9, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v10, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    invoke-virtual {v9, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v10, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v9, v10}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    iget-boolean v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    if-nez v9, :cond_1d1

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v10}, Lcom/pinguo/camera360/shop/model/IShopModel;->loadProductList()Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->set(Ljava/util/List;)V

    :goto_d1
    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->updateStore()V

    iget v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    if-nez v9, :cond_1f9

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "name_effect_force_refresh"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_f1

    sget-object v9, Lcom/pinguo/camera360/shop/activity/StoreActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "force refresh by invokers"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->setPullRefreshing()V

    :cond_f1
    if-nez v4, :cond_103

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    const-string/jumbo v10, "1479bb9995f248098041e500c49fb069"

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v7, 0x0

    :goto_fd
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lt v7, v9, :cond_1da

    :cond_103
    :goto_103
    return-void

    :cond_104
    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v9

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    check-cast v9, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-virtual {v9, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getProductCategoryByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    move-result-object v1

    iget-boolean v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    if-nez v9, :cond_18e

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    check-cast v9, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-virtual {v9}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->recordShownNewFlagProductOfShop()V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    const v10, 0x7f080263

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-virtual {v9}, Lcom/pinguo/camera360/adv/AdvertisementModel;->update()V

    const v9, 0x7f03003b

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/shop/view/BannerView;

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v9, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    const v10, 0x40251eb8

    invoke-direct {v9, v10}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;-><init>(F)V

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    const-string/jumbo v11, "1479bb9995f248098041e500c49fb069"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->addAll(Ljava/util/Collection;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/shop/view/BannerView;->setAdapter(Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    const-string/jumbo v10, "1479bb9995f248098041e500c49fb069"

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v10, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$2;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    new-instance v10, Lcom/pinguo/camera360/shop/activity/StoreActivity$3;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$3;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/shop/view/BannerView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    :goto_183
    new-instance v9, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    iget v10, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I

    invoke-direct {v9, v10}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;-><init>(I)V

    iput-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    goto/16 :goto_a5

    :cond_18e
    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    check-cast v9, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-virtual {v9, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->recordShownNewFlagProductOfCategory(Lcom/pinguo/camera360/shop/model/entity/ProductCategory;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mTitleView:Lcom/pinguo/camera360/ui/TitleView;

    iget-object v10, v1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(Ljava/lang/CharSequence;)V

    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0021

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v9, -0x1

    invoke-virtual {v5, v3, v9, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    invoke-virtual {v9, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v9}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    goto :goto_183

    :cond_1d1
    iget-object v9, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    iget-object v10, v1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    invoke-virtual {v9, v10}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->set(Ljava/util/List;)V

    goto/16 :goto_d1

    :cond_1da
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    iget-object v9, v9, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    invoke-static {v9}, Lcom/pinguo/camera360/shop/activity/Interaction;->isInValidEffect(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1f5

    sget-object v9, Lcom/pinguo/camera360/shop/activity/StoreActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "force refresh by invalid effect"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->setPullRefreshing()V

    goto/16 :goto_103

    :cond_1f5
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_fd

    :cond_1f9
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "name_camera_force_refresh"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_103

    sget-object v9, Lcom/pinguo/camera360/shop/activity/StoreActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "force refresh by invokers"

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->setPullRefreshing()V

    goto/16 :goto_103
.end method

.method protected onDestroy()V
    .registers 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    instance-of v0, v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    check-cast v0, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/adapter/EffectItemAdapter;->unregisterAll()V

    :cond_10
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    if-nez v7, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v7}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    iget-object v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v7}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getCount()I

    move-result v6

    sub-int v3, p3, v2

    if-ltz v3, :cond_4

    if-ge v3, v6, :cond_4

    iget-object v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;

    invoke-virtual {v7, v3}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v7, v4, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    if-eqz v7, :cond_45

    move-object v0, v4

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    iget-object v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v8, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_39

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_39
    iget v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    if-nez v7, :cond_4

    iget-object v7, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->categoryId:Ljava/lang/String;

    iget v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I

    invoke-static {p0, v7, v8}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->startEffectStroeListActivity(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_4

    :cond_45
    instance-of v7, v4, Lcom/pinguo/camera360/shop/model/entity/Product;

    if-eqz v7, :cond_4

    move-object v5, v4

    check-cast v5, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v7, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I

    if-nez v7, :cond_58

    iget-object v7, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    iget v8, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mEffectShopUseType:I

    invoke-static {p0, v7, v8}, Lcom/pinguo/camera360/shop/activity/EffectDetailActivity;->startActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_4

    :cond_58
    iget-object v7, v5, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-static {p0, v7}, Lcom/pinguo/camera360/shop/activity/CameraModeDetailActivity;->startActivityForResult(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12

    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_46

    :cond_4
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    if-eqz v0, :cond_11

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->destroy()V

    :cond_11
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_15
    return v0

    :pswitch_16
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/model/IShopModel;->needInterrupt()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mIsCategoryList:Z

    if-nez v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080237

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080236

    const v4, 0x7f080235

    new-instance v5, Lcom/pinguo/camera360/shop/activity/StoreActivity$6;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$6;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    new-instance v6, Lcom/pinguo/camera360/shop/activity/StoreActivity$7;

    invoke-direct {v6, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$7;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V

    move-object v0, p0

    move v8, v7

    invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    const/4 v0, 0x1

    goto :goto_15

    nop

    :pswitch_data_46
    .packed-switch 0x4
        :pswitch_16
    .end packed-switch
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAutoScroll(Z)V

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity;->mBanner:Lcom/pinguo/camera360/shop/view/BannerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/BannerView;->setAutoScroll(Z)V

    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    return-void
.end method
