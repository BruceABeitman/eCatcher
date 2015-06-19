.class public Lcom/pinguo/camera360/shop/model/ShopDataManager;
.super Ljava/lang/Object;
.source "ShopDataManager.java"


# static fields
.field private static final FRONT_IMAGE_GUID:Ljava/lang/String; = "2960de4668ac4413abac9d869b2c"

.field private static final FRONT_IMAGE_URL:Ljava/lang/String; = "http://store.camera360.com/download/guid/2960de4668ac4413abac9d869b2c"

.field private static final SHOP_JSON_DATA_FILES_DIR:Ljava/lang/String; = "shop"

.field private static final SHOP_JSON_FILE_POSTFIX_PATH:Ljava/lang/String; = "Shop.json"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActiveIdx:I

.field private mContext:Landroid/content/Context;

.field private mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

.field private mJsonFilePath:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferences:Lcom/pinguo/camera360/shop/model/ShopPreferences;

.field private mRequestQueue:Lcom/android/volley/RequestQueue;

.field private mShopTypeName:Ljava/lang/String;

.field private mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;)V
    .registers 13

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    new-array v1, v3, [Ljava/util/HashMap;

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    new-array v1, v3, [Lcom/pinguo/camera360/shop/model/entity/Shop;

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    iput-object p1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    new-instance v1, Lcom/pinguo/camera360/shop/model/ShopPreferences;

    iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/pinguo/camera360/shop/model/ShopPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mPreferences:Lcom/pinguo/camera360/shop/model/ShopPreferences;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v1, v9

    invoke-static {}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->values()[Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_39
    if-lt v1, v4, :cond_3f

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->initDbHelper()V

    return-void

    :cond_3f
    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    aget-object v5, v5, v2

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shop"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Shop.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    aget-object v5, v5, v9

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "shop"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/IShopModel$SHOP_TYPE;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "Shop.json"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_39
.end method

.method static synthetic access$0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->doUpdateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/model/ShopDataManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doUpdateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/lang/String;ILjava/lang/String;Ljava/util/concurrent/ExecutorService;)V
    .registers 13

    sget-object v0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Do update front image with url: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " signature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getFrontImageVersion()I

    move-result v6

    if-le p3, v6, :cond_3b

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p4

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Ljava/lang/String;Ljava/lang/String;ILcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p5, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$3;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;->onPostExecute(Z)V

    goto :goto_3a
.end method

.method private initDbHelper()V
    .registers 6

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "shop.db"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    return-void
.end method


# virtual methods
.method public buy(Ljava/lang/String;)V
    .registers 11

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/pinguo/cloudshare/support/HelperConsole;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Lcom/pinguo/camera360/shop/model/ShopDataManager$8;

    invoke-direct {v4, p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager$8;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V

    new-instance v5, Lcom/pinguo/camera360/shop/model/ShopDataManager$9;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager$9;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V

    new-instance v0, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;

    const/4 v2, 0x1

    const-string/jumbo v3, "http://store.camera360.com/v1/order/create"

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/shop/model/ShopDataManager$10;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Ljava/lang/String;)V

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/StringRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_36
    return-void
.end method

.method public destroy()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    :cond_e
    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->close()V

    iput-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    :cond_19
    return-void
.end method

.method public download(Ljava/lang/String;ZLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "get shop list with url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Add request to request queue"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_35
    return-void
.end method

.method protected getFrontImageURLWithSignature()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "id=2960de4668ac4413abac9d869b2c"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "http://store.camera360.com/download/guid/2960de4668ac4413abac9d869b2c?sig="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized getIndex(Z)I
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_7

    :try_start_3
    iget v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_e

    :goto_5
    monitor-exit p0

    return v0

    :cond_7
    :try_start_7
    iget v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x2
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_e

    goto :goto_5

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInstalledProductKeySet()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    if-nez v4, :cond_7

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->initDbHelper()V

    :cond_7
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_e
    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    invoke-virtual {v4}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v4, "SELECT key FROM product_installation WHERE installation = 1"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1f} :catch_3c

    move-result v4

    if-nez v4, :cond_33

    if-eqz v0, :cond_27

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_27
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_32
    :goto_32
    return-object v3

    :cond_33
    const/4 v4, 0x0

    :try_start_34
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_53
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3b} :catch_3c

    goto :goto_1c

    :catch_3c
    move-exception v2

    :try_start_3d
    sget-object v4, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_53

    if-eqz v0, :cond_47

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_47
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_32

    :catchall_53
    move-exception v4

    if-eqz v0, :cond_59

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_59
    if-eqz v1, :cond_64

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_64

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_64
    throw v4
.end method

.method public getJsonFilePath(Z)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getIndex(Z)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public declared-synchronized getShopInfo(Z)Lcom/pinguo/camera360/shop/model/entity/Shop;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getIndex(Z)I

    move-result v1

    aget-object v0, v0, v1
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getShopJsonFileName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "Shop.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/pinguo/lib/util/LocaleSupport;->getLocaleString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getShopPreferences()Lcom/pinguo/camera360/shop/model/ShopPreferences;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mPreferences:Lcom/pinguo/camera360/shop/model/ShopPreferences;

    return-object v0
.end method

.method public init()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mPreferences:Lcom/pinguo/camera360/shop/model/ShopPreferences;

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->getActiveIndex()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mActiveIdx:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->shopJsonFileExisted(Z)Z
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_58

    move-result v1

    if-nez v1, :cond_42

    :try_start_27
    iget-object v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopJsonFileName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mJsonFilePath:[Ljava/util/Map;

    iget v4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    aget-object v1, v1, v4

    iget-object v4, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/pinguo/lib/util/AssetsUtils;->copyAssetsToDataFiles(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_27 .. :try_end_42} :catchall_58
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_42} :catch_4a

    :cond_42
    :try_start_42
    monitor-exit p0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_58

    invoke-static {}, Lcom/pinguo/Camera360Lib/network/HttpRequestQueue;->getInstance()Lcom/android/volley/RequestQueue;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    :goto_49
    return-void

    :catch_4a
    move-exception v0

    :try_start_4b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Copy shop json from assets to data files failed! ShopDataManager init failed!"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    goto :goto_49

    :catchall_58
    move-exception v1

    monitor-exit p0
    :try_end_5a
    .catchall {:try_start_4b .. :try_end_5a} :catchall_58

    throw v1
.end method

.method public declared-synchronized load(Z)Z
    .registers 15

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getJsonFilePath(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, ""
    :try_end_2b
    .catchall {:try_start_2 .. :try_end_2b} :catchall_b0

    :try_start_2b
    invoke-static {v3}, Lcom/pinguo/lib/util/FileUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_b0
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_8b

    move-result-object v5

    :try_start_2f
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Load from file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " and json string:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_b0

    const/4 v7, 0x0

    :try_start_50
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Lcom/pinguo/camera360/shop/model/ShopDataManager$4;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager$4;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V

    invoke-virtual {v10}, Lcom/pinguo/camera360/shop/model/ShopDataManager$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-virtual {v1, v5, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pinguo/camera360/shop/model/entity/ShopJson;
    :try_end_64
    .catchall {:try_start_50 .. :try_end_64} :catchall_b0
    .catch Ljava/lang/RuntimeException; {:try_start_50 .. :try_end_64} :catch_b3

    :try_start_64
    invoke-static {v7}, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->isValid(Lcom/pinguo/camera360/shop/model/entity/ShopJson;)Z

    move-result v10

    if-eqz v10, :cond_c2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getIndex(Z)I

    move-result v2

    iget-object v9, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    aget-object v9, v9, v2

    if-nez v9, :cond_7d

    iget-object v9, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    new-instance v10, Lcom/pinguo/camera360/shop/model/entity/Shop;

    invoke-direct {v10}, Lcom/pinguo/camera360/shop/model/entity/Shop;-><init>()V

    aput-object v10, v9, v2

    :cond_7d
    iget-object v9, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    aget-object v6, v9, v2

    iget-object v9, v6, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;

    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_64 .. :try_end_88} :catchall_b0

    const/4 v9, 0x1

    :goto_89
    monitor-exit p0

    return v9

    :catch_8b
    move-exception v0

    :try_start_8c
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Open json file: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " fail!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_8c .. :try_end_af} :catchall_b0

    goto :goto_89

    :catchall_b0
    move-exception v9

    monitor-exit p0

    throw v9

    :catch_b3
    move-exception v0

    :try_start_b4
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Parse json string to shopJson object fail!"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_89

    :cond_c2
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Load shop json fail! ShopJson object is not valid"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_b4 .. :try_end_ca} :catchall_b0

    goto :goto_89
.end method

.method public declared-synchronized reload()V
    .registers 13

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getShopJsonFileName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v5, ""
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_8e

    :try_start_c
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Lcom/pinguo/lib/util/AssetsUtils;->getAssetsFileContent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_8e
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_13} :catch_7f

    move-result-object v5

    const/4 v7, 0x0

    :try_start_15
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v10, Lcom/pinguo/camera360/shop/model/ShopDataManager$5;

    invoke-direct {v10, p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager$5;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V

    invoke-virtual {v10}, Lcom/pinguo/camera360/shop/model/ShopDataManager$5;->getType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/pinguo/camera360/shop/model/entity/ShopJson;

    move-object v7, v0
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_8e
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_2b} :catch_91

    :goto_2b
    :try_start_2b
    invoke-static {v7}, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->isValid(Lcom/pinguo/camera360/shop/model/entity/ShopJson;)Z

    move-result v10

    if-eqz v10, :cond_a0

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getIndex(Z)I

    move-result v3

    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    aget-object v10, v10, v3

    if-nez v10, :cond_45

    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    new-instance v11, Lcom/pinguo/camera360/shop/model/entity/Shop;

    invoke-direct {v11}, Lcom/pinguo/camera360/shop/model/entity/Shop;-><init>()V

    aput-object v11, v10, v3

    :cond_45
    iget-object v10, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    aget-object v6, v10, v3

    iget-object v10, v6, Lcom/pinguo/camera360/shop/model/entity/Shop;->shopJsons:Ljava/util/Map;

    iget-object v11, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShopTypeName:Ljava/lang/String;

    invoke-interface {v10, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getJsonFilePath(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v10, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;

    invoke-direct {v10, p0, v8, v4}, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/shop/model/ShopDataManager$6;->execute([Ljava/lang/Object;)Lcom/pinguo/lib/os/AsyncTask;
    :try_end_7d
    .catchall {:try_start_2b .. :try_end_7d} :catchall_8e

    :goto_7d
    monitor-exit p0

    return-void

    :catch_7f
    move-exception v1

    :try_start_80
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Load json string from assets fail!"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8d
    .catchall {:try_start_80 .. :try_end_8d} :catchall_8e

    goto :goto_7d

    :catchall_8e
    move-exception v10

    monitor-exit p0

    throw v10

    :catch_91
    move-exception v1

    :try_start_92
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Parse json string to shopJson object fail!"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v10, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2b

    :cond_a0
    sget-object v10, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v11, "Load shop json fail! ShopJson object is not valid"

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_92 .. :try_end_a8} :catchall_8e

    goto :goto_7d
.end method

.method protected shopJsonFileExisted(Z)Z
    .registers 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getJsonFilePath(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2e

    const/4 v2, 0x1

    :goto_2d
    return v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public declared-synchronized switchLib()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    iget v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "switchLib:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mPreferences:Lcom/pinguo/camera360/shop/model/ShopPreferences;

    iget v2, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mActiveIdx:I

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/model/ShopPreferences;->putActiveIndex(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mShops:[Lcom/pinguo/camera360/shop/model/entity/Shop;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_30

    monitor-exit p0

    return-void

    :catchall_30
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V
    .registers 9

    new-instance v4, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/pinguo/camera360/shop/model/ShopDataManager$1;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V

    new-instance v5, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;

    invoke-direct {v5, p0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager$2;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)V

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Add request to request queue"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->getFrontImageURLWithSignature()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    sget-object v1, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/JsonObjectRequest;->setTag(Ljava/lang/Object;)Lcom/android/volley/Request;

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mRequestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    :cond_2b
    return-void
.end method

.method public updateFrontImage(Ljava/util/concurrent/ExecutorService;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->updateFrontImage(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method protected updateProductInstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
    .registers 15

    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    if-nez v7, :cond_7

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->initDbHelper()V

    :cond_7
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_d
    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    invoke-virtual {v7}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v7, "SELECT key,type,installation,installTime FROM product_installation WHERE key=? and type=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b7

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v7, 0x1

    if-ne v7, v4, :cond_76

    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Product is already installed, key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_53
    .catchall {:try_start_d .. :try_end_53} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_53} :catch_97

    if-eqz v0, :cond_58

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_58
    if-eqz v1, :cond_63

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_63

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_63
    if-eqz p3, :cond_74

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {p3, v7}, Lcom/pinguo/camera360/base/BaseModel$Callback;->onExecute([Ljava/lang/Object;)V

    :cond_74
    const/4 v7, 0x1

    :goto_75
    return v7

    :cond_76
    :try_start_76
    const-string/jumbo v7, "UPDATE product_installation set installation=?, installTime=? WHERE key=? and type=?"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_96
    .catchall {:try_start_76 .. :try_end_96} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_96} :catch_97

    goto :goto_4d

    :catch_97
    move-exception v2

    :try_start_98
    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Update product installation fail!"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_102

    if-eqz v0, :cond_aa

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_aa
    if-eqz v1, :cond_b5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_b5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b5
    const/4 v7, 0x0

    goto :goto_75

    :cond_b7
    :try_start_b7
    const-string/jumbo v7, "INSERT INTO product_installation values(null,?,?,?,?,?,?,?,?,?,?)"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_100
    .catchall {:try_start_b7 .. :try_end_100} :catchall_102
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_100} :catch_97

    goto/16 :goto_4d

    :catchall_102
    move-exception v7

    if-eqz v0, :cond_108

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_108
    if-eqz v1, :cond_113

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_113

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_113
    throw v7
.end method

.method public updateProductUninstallation(Lcom/pinguo/camera360/shop/model/entity/Product;Ljava/lang/String;Lcom/pinguo/camera360/base/BaseModel$Callback;)Z
    .registers 15

    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    if-nez v7, :cond_7

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager;->initDbHelper()V

    :cond_7
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :try_start_d
    iget-object v7, p0, Lcom/pinguo/camera360/shop/model/ShopDataManager;->mDbHelper:Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;

    invoke-virtual {v7}, Lcom/pinguo/camera360/shop/model/ShopDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string/jumbo v7, "SELECT key,type,installation,installTime FROM product_installation WHERE key=? and type=?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b6

    const/4 v7, 0x2

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_75

    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Product is already uninstalled, key="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4c
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_52
    .catchall {:try_start_d .. :try_end_52} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_52} :catch_96

    if-eqz v0, :cond_57

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_57
    if-eqz v1, :cond_62

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_62

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_62
    if-eqz p3, :cond_73

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x64

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {p3, v7}, Lcom/pinguo/camera360/base/BaseModel$Callback;->onExecute([Ljava/lang/Object;)V

    :cond_73
    const/4 v7, 0x1

    :goto_74
    return v7

    :cond_75
    :try_start_75
    const-string/jumbo v7, "UPDATE product_installation set installation=?, installTime=? WHERE key=? and type=?"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x3

    aput-object p2, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_75 .. :try_end_95} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_95} :catch_96

    goto :goto_4c

    :catch_96
    move-exception v2

    :try_start_97
    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Update product uninstallation fail!"

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_101

    if-eqz v0, :cond_a9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a9
    if-eqz v1, :cond_b4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_b4
    const/4 v7, 0x0

    goto :goto_74

    :cond_b6
    :try_start_b6
    const-string/jumbo v7, "INSERT INTO product_installation values(null,?,?,?,?,?,?,?,?,?,?)"

    const/16 v8, 0xa

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->guid:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->name:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    aput-object p2, v8, v9

    const/4 v9, 0x3

    iget-object v10, p1, Lcom/pinguo/camera360/shop/model/entity/Product;->categoryId:Ljava/lang/String;

    aput-object v10, v8, v9

    const/4 v9, 0x4

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x7

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/16 v9, 0x8

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    const/16 v9, 0x9

    const-string/jumbo v10, ""

    aput-object v10, v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_ff
    .catchall {:try_start_b6 .. :try_end_ff} :catchall_101
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_ff} :catch_96

    goto/16 :goto_4c

    :catchall_101
    move-exception v7

    if-eqz v0, :cond_107

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_107
    if-eqz v1, :cond_112

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v8

    if-eqz v8, :cond_112

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_112
    throw v7
.end method

.method protected verifyJsonObject(Lorg/json/JSONObject;)Z
    .registers 9

    const/4 v4, 0x0

    if-nez p1, :cond_c

    sget-object v5, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Json Object is null"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    return v4

    :cond_c
    :try_start_c
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v5, Lcom/pinguo/camera360/shop/model/ShopDataManager$7;

    invoke-direct {v5, p0}, Lcom/pinguo/camera360/shop/model/ShopDataManager$7;-><init>(Lcom/pinguo/camera360/shop/model/ShopDataManager;)V

    invoke-virtual {v5}, Lcom/pinguo/camera360/shop/model/ShopDataManager$7;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/shop/model/entity/ShopJson;
    :try_end_24
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_24} :catch_29

    invoke-static {v2}, Lcom/pinguo/camera360/shop/model/entity/ShopJson;->isValid(Lcom/pinguo/camera360/shop/model/entity/ShopJson;)Z

    move-result v4

    goto :goto_b

    :catch_29
    move-exception v0

    sget-object v5, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "Parse json string to shopJson object fail!"

    invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/pinguo/camera360/shop/model/ShopDataManager;->TAG:Ljava/lang/String;

    invoke-static {v5, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method
