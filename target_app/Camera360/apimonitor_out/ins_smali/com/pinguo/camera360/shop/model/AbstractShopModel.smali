.class public abstract Lcom/pinguo/camera360/shop/model/AbstractShopModel;
.super Ljava/lang/Object;
.source "AbstractShopModel.java"
.implements Lcom/pinguo/camera360/shop/model/IShopModel;
.field private static final TAG:Ljava/lang/String;
.field protected mContext:Landroid/content/Context;
.field private mExecutor:Ljava/util/concurrent/ExecutorService;
.field protected mGetShopListUrl:Ljava/lang/String;
.field protected mOperationListeners:Ljava/util/Map;
.field protected mProductList:Ljava/util/List;
.field protected mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
.field protected mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
.field protected mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$0()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/shop/model/AbstractShopModel;Ljava/lang/String;Z)Z
.registers 4
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->writeJsonFile(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method private writeJsonFile(Ljava/lang/String;Z)Z
.registers 12
const/4 v6, 0x0
const/4 v3, 0x0
:try_start_2
new-instance v7, Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v8, p2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getJsonFilePath(Z)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, ".tmp"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
new-instance v4, Ljava/io/File;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_start_35
:try_end_35
.catchall {:try_start_2 .. :try_end_35} :catchall_af
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_35} :catch_b9
invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v4, v7}, Lcom/pinguo/lib/util/FileUtils;->writeFileContent(Ljava/io/File;Ljava/lang/String;)V
new-instance v7, Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
iget-object v8, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v8, p2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getJsonFilePath(Z)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
new-instance v0, Ljava/io/File;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v7
if-eqz v7, :cond_83
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v7
if-nez v7, :cond_83
sget-object v7, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Delete file failed!"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_7c
.catchall {:try_start_35 .. :try_end_7c} :catchall_b6
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_7c} :catch_92
:goto_7c
if-eqz v4, :cond_81
invoke-static {v4}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
:cond_81
move-object v3, v4
:goto_82
:cond_82
return v6
:cond_83
:try_start_83
invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
move-result v7
if-nez v7, :cond_a7
sget-object v7, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Rename file failed!"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_91
.catchall {:try_start_83 .. :try_end_91} :catchall_b6
.catch Ljava/lang/Exception; {:try_start_83 .. :try_end_91} :catch_92
goto :goto_7c
:catch_92
move-exception v2
move-object v3, v4
:try_start_94
:goto_94
sget-object v7, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v8, "Write shop json to file fail!"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v7, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
invoke-static {v7, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_a1
.catchall {:try_start_94 .. :try_end_a1} :catchall_af
if-eqz v3, :cond_82
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
goto :goto_82
:cond_a7
const/4 v3, 0x0
if-eqz v3, :cond_ad
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
:cond_ad
const/4 v6, 0x1
goto :goto_82
:catchall_af
move-exception v6
:goto_b0
if-eqz v3, :cond_b5
invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->deleteFile(Ljava/io/File;)V
:cond_b5
throw v6
:catchall_b6
move-exception v6
move-object v3, v4
goto :goto_b0
:catch_b9
move-exception v2
goto :goto_94
.end method
.method public buy(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v1, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->productId:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->buy(Ljava/lang/String;)V
return-void
.end method
.method public destroy()V
.registers 3
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mExecutor:Ljava/util/concurrent/ExecutorService;
invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->destroy()V
iput-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mContext:Landroid/content/Context;
return-void
.end method
.method protected doUpdateFrontImage()V
.registers 4
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->hasInternet(Landroid/content/Context;)Z
move-result v1
if-nez v1, :cond_13
sget-object v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Can not access to internet, ignore updating shader and post order"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_12
return-void
:cond_13
:try_start_13
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mExecutor:Ljava/util/concurrent/ExecutorService;
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateFrontImage(Ljava/util/concurrent/ExecutorService;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b
goto :goto_12
:catch_1b
move-exception v0
sget-object v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Update front image fail!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_12
.end method
.method public getIndex(Z)I
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getIndex(Z)I
move-result v0
return v0
.end method
.method protected getOriginalShopType()Lcom/pinguo/camera360/shop/model/entity/ShopType;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
return-object v0
.end method
.method public getProductByKey(Ljava/lang/String;)Lcom/pinguo/camera360/shop/model/entity/Product;
.registers 7
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
if-eqz v2, :cond_10
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_12
:cond_10
const/4 v1, 0x0
:goto_11
return-object v1
:cond_12
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
instance-of v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
if-eqz v3, :cond_37
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_22
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v4, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_22
goto :goto_11
:cond_37
instance-of v3, v0, Lcom/pinguo/camera360/shop/model/entity/Product;
if-eqz v3, :cond_a
move-object v1, v0
check-cast v1, Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v3, v1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a
goto :goto_11
.end method
.method protected getShopDataManager()Lcom/pinguo/camera360/shop/model/ShopDataManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
return-object v0
.end method
.method protected getShopListUrl(Ljava/lang/String;I)Ljava/lang/String;
.registers 11
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v5, "platform"
const-string/jumbo v6, "android"
invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "locale"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v6
invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "version"
invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "appversion"
invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v5, "channel"
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v6
const v7, 0x7f080084
invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v4, ""
:try_start_44
invoke-static {v1}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v2
invoke-static {p1, v1}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v3
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "&sig="
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
sget-object v5, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Get shop list url: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_79
.catch Ljava/io/UnsupportedEncodingException; {:try_start_44 .. :try_end_79} :catch_7a
:goto_79
return-object v4
:catch_7a
move-exception v0
sget-object v5, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "Get shop list url fail: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v5, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_79
.end method
.method public getShopType()Lcom/pinguo/camera360/shop/model/entity/ShopType;
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/entity/ShopType;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;
const/4 v1, 0x0
iput-object v1, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
return-object v0
.end method
.method protected init(Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mContext:Landroid/content/Context;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mExecutor:Ljava/util/concurrent/ExecutorService;
return-void
.end method
.method public install(Lcom/pinguo/camera360/shop/model/entity/Product;)V
.registers 7
:try_start_0
new-instance v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;-><init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mExecutor:Ljava/util/concurrent/ExecutorService;
const/4 v3, 0x1
new-array v3, v3, [Lcom/pinguo/camera360/shop/model/entity/Product;
const/4 v4, 0x0
aput-object p1, v3, v4
invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
sget-object v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Post order fail!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
sget-object v1, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method public declared-synchronized loadProductList()Ljava/util/List;
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
if-nez v0, :cond_24
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;
move-result-object v0
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;
iget-object v1, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopTypeKey:Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;
invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->data:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
:cond_24
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v0, v0, Lcom/pinguo/camera360/shop/model/entity/ShopType;->categories:Ljava/util/List;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->loadProductListFromCategories(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->updateInstallStatus()V
iget-object v0, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
:try_end_3d
.catchall {:try_start_1 .. :try_end_3d} :catchall_45
:goto_3d
monitor-exit p0
return-object v0
:try_start_3f
:cond_3f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:try_end_44
.catchall {:try_start_3f .. :try_end_44} :catchall_45
goto :goto_3d
:catchall_45
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected loadProductListFromCategories(Ljava/util/List;)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_10
return-object v1
:cond_10
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
if-eqz v3, :cond_9
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-eqz v3, :cond_9
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_36
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
:cond_36
iget-boolean v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->isDefault:Z
if-eqz v3, :cond_40
iget-object v3, v0, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_9
:cond_40
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
.end method
.method public needInterrupt()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method protected declared-synchronized notifyListenersInProgress(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;I)V
.registers 9
monitor-enter p0
:try_start_1
new-instance v2, Landroid/util/Pair;
invoke-virtual {p2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->name()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/List;
if-eqz v3, :cond_1e
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_18
:goto_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_2c
move-result v4
if-nez v4, :cond_20
:cond_1e
monitor-exit p0
return-void
:cond_20
:try_start_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_18
invoke-interface {v0, p3}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onProgress(I)V
:try_end_2b
.catchall {:try_start_20 .. :try_end_2b} :catchall_2c
goto :goto_18
:catchall_2c
move-exception v4
monitor-exit p0
throw v4
.end method
.method protected declared-synchronized notifyListenersOnFinish(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Ljava/lang/Boolean;)V
.registers 9
monitor-enter p0
:try_start_1
new-instance v2, Landroid/util/Pair;
invoke-virtual {p2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->name()Ljava/lang/String;
move-result-object v4
invoke-direct {v2, p1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/util/List;
if-eqz v3, :cond_1e
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_18
:goto_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_30
move-result v4
if-nez v4, :cond_20
:cond_1e
monitor-exit p0
return-void
:cond_20
:try_start_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;
if-eqz v0, :cond_18
invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v4
invoke-interface {v0, v4}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V
:try_end_2f
.catchall {:try_start_20 .. :try_end_2f} :catchall_30
goto :goto_18
:catchall_30
move-exception v4
monitor-exit p0
throw v4
.end method
.method protected abstract onShopUpdated()V
.end method
.method public declared-synchronized registListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.registers 7
monitor-enter p0
:try_start_1
new-instance v0, Landroid/util/Pair;
invoke-virtual {p2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->name()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-nez v1, :cond_1e
new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/util/List;
invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_29
.catchall {:try_start_1 .. :try_end_29} :catchall_2b
monitor-exit p0
return-void
:catchall_2b
move-exception v2
monitor-exit p0
throw v2
.end method
.method public declared-synchronized unregistListener(Ljava/lang/String;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
.registers 7
monitor-enter p0
:try_start_1
new-instance v0, Landroid/util/Pair;
invoke-virtual {p2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_OPERATION;->name()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v2, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mOperationListeners:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
if-eqz v1, :cond_17
invoke-interface {v1, p3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
:cond_17
:try_end_17
.catchall {:try_start_1 .. :try_end_17} :catchall_19
monitor-exit p0
return-void
:catchall_19
move-exception v2
monitor-exit p0
throw v2
.end method
.method public update()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z
const/4 v0, 0x1
return v0
.end method
.method public update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z
.registers 9
new-instance v2, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;
invoke-direct {v2, p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$2;-><init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
new-instance v0, Lcom/pinguo/camera360/shop/model/AbstractShopModel$3;
invoke-direct {v0, p0, p1}, Lcom/pinguo/camera360/shop/model/AbstractShopModel$3;-><init>(Lcom/pinguo/camera360/shop/model/AbstractShopModel;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V
const/4 v3, 0x0
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
if-eqz v4, :cond_3d
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget v3, v4, Lcom/pinguo/camera360/shop/model/entity/ShopType;->version:I
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/lib/util/LocaleSupport;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopType:Lcom/pinguo/camera360/shop/model/entity/ShopType;
iget-object v4, v4, Lcom/pinguo/camera360/shop/model/entity/ShopType;->language:Ljava/lang/String;
sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_3d
sget-object v4, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->TAG:Ljava/lang/String;
const-string/jumbo v5, "Language different and about to update"
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, 0x0
invoke-static {}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeLanguageChange()V
:cond_3d
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
iget-object v5, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mGetShopListUrl:Ljava/lang/String;
invoke-virtual {p0, v5, v3}, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->getShopListUrl(Ljava/lang/String;I)Ljava/lang/String;
move-result-object v5
const/4 v6, 0x0
invoke-virtual {v4, v5, v6, v2, v0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->download(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
const/4 v4, 0x1
return v4
.end method
.method protected declared-synchronized updateInstallStatus()V
.registers 8
monitor-enter p0
:try_start_1
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
:try_end_3
.catchall {:try_start_1 .. :try_end_3} :catchall_41
if-nez v4, :cond_7
:cond_5
monitor-exit p0
return-void
:try_start_7
:cond_7
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mShopDataManager:Lcom/pinguo/camera360/shop/model/ShopDataManager;
invoke-virtual {v4}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getInstalledProductKeySet()Ljava/util/Set;
move-result-object v1
iget-object v4, p0, Lcom/pinguo/camera360/shop/model/AbstractShopModel;->mProductList:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_13
:goto_13
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_5
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
instance-of v5, v2, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
if-eqz v5, :cond_48
check-cast v2, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;
iget-object v5, v2, Lcom/pinguo/camera360/shop/model/entity/ProductCategory;->products:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_29
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_13
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/camera360/shop/model/entity/Product;
iget-object v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-interface {v1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_44
const/4 v6, 0x1
iput v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
:try_end_40
.catchall {:try_start_7 .. :try_end_40} :catchall_41
goto :goto_29
:catchall_41
move-exception v4
monitor-exit p0
throw v4
:cond_44
const/4 v6, 0x0
:try_start_45
iput v6, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
goto :goto_29
:cond_48
instance-of v5, v2, Lcom/pinguo/camera360/shop/model/entity/Product;
if-eqz v5, :cond_13
move-object v0, v2
check-cast v0, Lcom/pinguo/camera360/shop/model/entity/Product;
move-object v3, v0
iget-object v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;
invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_5c
const/4 v5, 0x1
iput v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
goto :goto_13
:cond_5c
const/4 v5, 0x0
iput v5, v3, Lcom/pinguo/camera360/shop/model/entity/Product;->installation:I
:try_end_5f
.catchall {:try_start_45 .. :try_end_5f} :catchall_41
goto :goto_13
.end method