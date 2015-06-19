.class public Lcom/pinguo/camera360/shop/model/EffectShopModel;
.super Lcom/pinguo/camera360/shop/model/AbstractShopModel;
.source "EffectShopModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;,
        Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;,
        Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/pinguo/camera360/shop/model/EffectShopModel;


# instance fields
.field private mInitialized:Z

.field private mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

.field private mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

.field private mTryThreadExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInitialized:Z

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/model/EffectShopModel;)Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->doUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private doUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_11

    sget-object v1, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "EffectPackage param is null and can\'t do uninstall"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_10
    return-object v1

    :cond_11
    invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;

    move-result-object v1

    invoke-virtual {v1, p1, v4}, Lcom/pinguo/camera360/effect/model/EffectModel;->uninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z

    move-result v0

    if-nez v0, :cond_28

    sget-object v1, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Effect model uninstall fail!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10

    :cond_28
    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    sget-object v2, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v4}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateProductUninstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v1, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "EffectShop model update product installation fail!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_10
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;
    .registers 3

    const-class v1, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/EffectShopModel;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/EffectShopModel;

    :cond_e
    sget-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/EffectShopModel;

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/EffectShopModel;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_1b

    monitor-exit v1

    return-object v0

    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isPoductShownOfCategory(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopPreferences()Lcom/pinguo/camera360/shop/model/ShopPreferences;

    move-result-object v1

    iget-object v2, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->getShownVersionInShopOfCategory(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->version:I

    if-lt v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isPoductShownOfShop(Lcom/pinguo/camera360/shop/model/entity/Product;)Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopPreferences()Lcom/pinguo/camera360/shop/model/ShopPreferences;

    move-result-object v1

    iget-object v2, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->getShownVersionInShopOfProduct(Ljava/lang/String;)I

    move-result v0

    iget v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->version:I

    if-lt v0, v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private isShopNew(Lcom/pinguo/camera360/shop/model/entity/ShopType;)Z
    .registers 8

    const/4 v2, 0x1

    if-eqz p1, :cond_13

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;

    if-eqz v3, :cond_13

    iget-object v3, p1, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_15

    :cond_13
    const/4 v2, 0x0

    :goto_14
    return v2

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    iget-object v4, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v5, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    if-ne v5, v2, :cond_25

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->isPoductShownOfShop(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_14
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->destroy()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->destroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->invalidTryEffectDict(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInitialized:Z
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProductCategoryByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mProductList:Ljava/util/List;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mProductList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    if-eqz v3, :cond_a

    move-object v0, v1

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_11
.end method

.method public declared-synchronized getTryEffectsByProductKey(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/effect/model/entity/Effect;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->loadEffectDict(Ljava/util/Locale;)Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    :cond_e
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;->getEffectPackMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_29

    :cond_1f
    if-eqz v0, :cond_23

    :goto_21
    monitor-exit p0

    return-object v0

    :cond_23
    :try_start_23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_29

    goto :goto_21

    :catchall_29
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getTryInstalledDir()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->getEffectInstalledDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized init(Landroid/content/Context;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInitialized:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "EffectShopModel already initialized"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_7f

    :goto_d
    monitor-exit p0

    return-void

    :cond_f
    :try_start_f
    invoke-super {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->init(Landroid/content/Context;)V

    sget-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->effect:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    const-string/jumbo v0, "http://store.camera360.com/v1/store/effectList"

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mGetShopListUrl:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->init()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->load(Z)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->reload()V

    :cond_39
    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;

    iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    new-instance v0, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->init()V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryThreadExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->loadProductList()Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInitialized:Z
    :try_end_7e
    .catchall {:try_start_f .. :try_end_7e} :catchall_7f

    goto :goto_d

    :catchall_7f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
    .registers 7

    invoke-super {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    new-instance v0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    new-instance v1, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel$InstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    return-void
.end method

.method public installTry(Lcom/pinguo/camera360/shop/model/entity/Product;)V
    .registers 7

    invoke-super {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->doUpdateFrontImage()V

    new-instance v0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    new-instance v1, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryThreadExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel$TryInstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    return-void
.end method

.method public declared-synchronized invalidTryEffectDict(Z)V
    .registers 5

    monitor-enter p0

    :try_start_1
    sget-object v1, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Invalid try effect dict"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    if-eqz p1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryManager:Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/tri/TryEffectResourceManager;->loadEffectDict(Ljava/util/Locale;)Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mTryDict:Lcom/pinguo/camera360/shop/model/tri/TryEffectDict;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isCategoryNew(Lcom/pinguo/camera360/shop/model/entity/ProductCategory;)Z
    .registers 6

    const/4 v1, 0x1

    if-eqz p1, :cond_13

    iget-object v2, p1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    if-eqz v2, :cond_13

    iget-object v2, p1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v3, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    if-ne v3, v1, :cond_d

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->isPoductShownOfCategory(Lcom/pinguo/camera360/shop/model/entity/Product;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_14
.end method

.method public needInterrupt()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    invoke-super {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->needInterrupt()Z

    move-result v0

    goto :goto_d
.end method

.method protected onShopUpdated()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->isShopNew(Lcom/pinguo/camera360/shop/model/entity/ShopType;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setNewFlagInShop(Z)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/shop/event/ProductsHaveNewFlagInShop;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    :cond_1c
    return-void
.end method

.method public recordShownNewFlagProductOfCategory(Lcom/pinguo/camera360/shop/model/entity/ProductCategory;)V
    .registers 7

    if-eqz p1, :cond_12

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    if-eqz v1, :cond_12

    iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    return-void

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v2, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopPreferences()Lcom/pinguo/camera360/shop/model/ShopPreferences;

    move-result-object v2

    iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    iget v4, v0, Lcom/pinguo/camera360/shop/model/entity/Product;->version:I

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->putShowVersionInShopOfCategory(Ljava/lang/String;I)V

    goto :goto_c
.end method

.method public recordShownNewFlagProductOfShop()V
    .registers 8

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;

    iget-object v2, v2, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_19

    :cond_18
    return-void

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;

    iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    if-eqz v3, :cond_12

    iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/model/entity/Product;

    iget v4, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->recommendType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_29

    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v4}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopPreferences()Lcom/pinguo/camera360/shop/model/ShopPreferences;

    move-result-object v4

    iget-object v5, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    iget v6, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->version:I

    invoke-virtual {v4, v5, v6}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->putShowVersionInShopOfProduct(Ljava/lang/String;I)V

    goto :goto_29
.end method

.method public uninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)V
    .registers 7

    new-instance v0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    new-instance v1, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;-><init>(Lcom/pinguo/camera360/shop/model/EffectShopModel;Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;)V

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/model/EffectShopModel$UninstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    return-void
.end method

.method public uninstallBatch(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/shop/model/entity/Product;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_11

    :cond_8
    sget-object v2, Lcom/pinguo/camera360/shop/model/EffectShopModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Products param is null or empty"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void

    :cond_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/model/entity/Product;

    new-instance v0, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/shop/model/entity/EffectPackage;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->doUninstall(Lcom/pinguo/camera360/shop/model/entity/EffectPackage;)Ljava/lang/Boolean;

    goto :goto_15
.end method

.method public updateEachDay()V
    .registers 9

    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/pinguo/lib/network/NetworkUtils;->hasInternet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getLastEffectShopUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v4, v2, v0

    const-wide/32 v6, 0x5265c00

    cmp-long v4, v4, v6

    if-lez v4, :cond_27

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setLastEffectShopUpdateTime(J)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->update()Z

    :cond_27
    return-void
.end method

.method public updateFrontImage()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/EffectShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
