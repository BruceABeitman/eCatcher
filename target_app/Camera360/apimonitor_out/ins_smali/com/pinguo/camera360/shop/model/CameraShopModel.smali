.class public Lcom/pinguo/camera360/shop/model/CameraShopModel;
.super Lcom/pinguo/camera360/shop/model/AbstractShopModel;
.source "CameraShopModel.java"
.field private static final TAG:Ljava/lang/String;
.field private static sInstance:Lcom/pinguo/camera360/shop/model/CameraShopModel;
.field private mInitialized:Z
.field private mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInitialized:Z
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/shop/model/CameraShopModel;Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->doUninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method private doUninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
.registers 7
const/4 v4, 0x0
if-nez p1, :cond_10
sget-object v2, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Product object is null and can\'t do uninstall"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
:goto_f
return-object v2
:cond_10
invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;
move-result-object v0
new-instance v2, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;
invoke-direct {v2, p1}, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;-><init>(Lcom/pinguo/camera360/shop/model/entity/Product;)V
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->uninstall(Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;)Z
move-result v1
if-nez v1, :cond_2c
sget-object v2, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v3, "Camera plugin manager uninstall fail!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_f
:cond_2c
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
sget-object v3, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v3}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, p1, v3, v4}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateProductUninstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
move-result v1
if-nez v1, :cond_43
sget-object v2, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v3, "CameraShop model update product uninstall fail!"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_43
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_f
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/shop/model/CameraShopModel;
.registers 3
const-class v1, Lcom/pinguo/camera360/shop/model/CameraShopModel;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/CameraShopModel;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;
invoke-direct {v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;-><init>()V
sput-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/CameraShopModel;
:cond_e
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/CameraShopModel;
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->init(Landroid/content/Context;)V
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->sInstance:Lcom/pinguo/camera360/shop/model/CameraShopModel;
:try_end_19
.catchall {:try_start_3 .. :try_end_19} :catchall_1b
monitor-exit v1
return-object v0
:catchall_1b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public declared-synchronized destroy()V
.registers 2
monitor-enter p0
:try_start_1
invoke-super {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->destroy()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInitialized:Z
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_e
monitor-exit p0
return-void
:catchall_e
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected declared-synchronized init(Landroid/content/Context;)V
.registers 9
monitor-enter p0
:try_start_1
iget-boolean v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInitialized:Z
if-eqz v0, :cond_f
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "CameraShopModel already initialized"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_79
monitor-exit p0
return-void
:cond_f
:try_start_f
sget-object v0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v1, "init CameraShopModel"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->init(Landroid/content/Context;)V
sget-object v0, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->camera:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
const-string/jumbo v0, "http://store.camera360.com/v1/store/cameraList"
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mGetShopListUrl:Ljava/lang/String;
new-instance v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mContext:Landroid/content/Context;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;)V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->init()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->load(Z)Z
move-result v0
if-nez v0, :cond_41
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->reload()V
:cond_41
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v1, 0x1
const/4 v2, 0x1
const-wide/16 v3, 0x0
sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->loadProductList()Ljava/util/List;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInitialized:Z
:try_end_78
.catchall {:try_start_f .. :try_end_78} :catchall_79
goto :goto_d
:catchall_79
move-exception v0
monitor-exit p0
throw v0
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 6
invoke-super {p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->doUpdateFrontImage()V
new-instance v0, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;-><init>(Lcom/pinguo/camera360/shop/model/CameraShopModel;Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v2, 0x1
new-array v2, v2, [Lcom/pinguo/camera360/shop/model/entity/Product;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/CameraShopModel$InstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
return-void
.end method
.method public installTry(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 2
return-void
.end method
.method public needInterrupt()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
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
.registers 1
return-void
.end method
.method public uninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 6
new-instance v0, Lcom/pinguo/camera360/shop/model/CameraShopModel$UninstallTask;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/shop/model/CameraShopModel$UninstallTask;-><init>(Lcom/pinguo/camera360/shop/model/CameraShopModel;Lcom/pinguo/camera360/shop/model/CameraShopModel$UninstallTask;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/CameraShopModel;->mInstallThreadExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
const/4 v2, 0x1
new-array v2, v2, [Lcom/pinguo/camera360/shop/model/entity/Product;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/shop/model/CameraShopModel$UninstallTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
return-void
.end method
.method public uninstallBatch(Ljava/util/List;)V
.registers 5
if-eqz p1, :cond_8
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_11
:cond_8
sget-object v1, Lcom/pinguo/camera360/shop/model/CameraShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Products param is null or empty"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_10
return-void
:cond_11
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_15
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_10
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/Product;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/shop/model/CameraShopModel;->doUninstall(Lcom/pinguo/camera360/shop/model/entity/Product;)Ljava/lang/Boolean;
goto :goto_15
.end method