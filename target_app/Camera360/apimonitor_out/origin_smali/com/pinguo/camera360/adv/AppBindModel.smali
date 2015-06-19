.class public Lcom/pinguo/camera360/adv/AppBindModel;
.super Ljava/lang/Object;
.source "AppBindModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
    }
.end annotation


# static fields
.field public static final APP_BIND_AREA:Ljava/lang/String; = "a664282a931565e9fc991b4ce3a70a97"

.field public static final PREF_APPDOWNLOAD:Ljava/lang/String; = "pref_appdownload"

.field public static final PREF_APPDOWNLOAD_APPNAME:Ljava/lang/String; = "pref_appdownload_appname"

.field public static final PREF_APPDOWNLOAD_DONE:Ljava/lang/String; = "pref_appdownload_done"

.field public static final PREF_APPDOWNLOAD_LINK:Ljava/lang/String; = "pref_appdownload_link"

.field private static final TAG:Ljava/lang/String; = "AppBind"


# instance fields
.field private mAllAppPackageList:Lorg/json/JSONObject;

.field private mContext:Landroid/content/Context;

.field public mItem:Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;

.field mPosters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;


# direct methods
.method public constructor <init>()V
    .registers 9

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    iget-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_35

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mAllAppPackageList:Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2f
    :goto_2f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4a

    :cond_35
    iget-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "pref_appdownload"

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPreferences:Landroid/content/SharedPreferences;

    new-instance v5, Lcom/pinguo/camera360/adv/AppBindModel$1;

    iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v6}, Lcom/pinguo/camera360/adv/AppBindModel$1;-><init>(Lcom/pinguo/camera360/adv/AppBindModel;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    return-void

    :cond_4a
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_2f

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :try_start_56
    iget-object v6, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mAllAppPackageList:Lorg/json/JSONObject;

    invoke-virtual {v6, v4, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5b
    .catch Lorg/json/JSONException; {:try_start_56 .. :try_end_5b} :catch_5c

    goto :goto_2f

    :catch_5c
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2f
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/adv/AppBindModel;)Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/adv/AppBindModel;Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/adv/AppBindModel;->decodePoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/adv/AppBindModel;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private decodePoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/adv/AppBindModel;->isPosterReady(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/adv/AppBindModel;->getPosterPath(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method


# virtual methods
.method public clearPosters()V
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void

    :cond_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_a
.end method

.method public getAppBindItems()Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;",
            ">;"
        }
    .end annotation

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v20, "/banner/banner.json"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v3, ""

    :try_start_25
    new-instance v4, Ljava/lang/String;

    invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_3d

    move-object v3, v4

    :cond_31
    :goto_31
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_5d

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :goto_3c
    return-object v19

    :catch_3d
    move-exception v6

    const-string/jumbo v19, "AppBind"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_31

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V

    goto :goto_31

    :cond_5d
    :try_start_5d
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v19, "data"

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v19, "area"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v10, 0x0

    :goto_75
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_78
    .catch Lorg/json/JSONException; {:try_start_5d .. :try_end_78} :catch_e9

    move-result v19

    move/from16 v0, v19

    if-lt v10, v0, :cond_83

    :goto_7d
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3c

    :cond_83
    :try_start_83
    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "guid"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v19, "a664282a931565e9fc991b4ce3a70a97"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_9c

    :cond_99
    add-int/lit8 v10, v10, 0x1

    goto :goto_75

    :cond_9c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v17, v19, v21

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "opTimeStamp"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "expireTimeStamp"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v19, v17, v14

    if-ltz v19, :cond_99

    cmp-long v19, v17, v7

    if-gtz v19, :cond_99

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    const-string/jumbo v20, "appPopularize"

    invoke-virtual/range {v19 .. v20}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v19, Lcom/pinguo/camera360/adv/AppBindModel$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/adv/AppBindModel$3;-><init>(Lcom/pinguo/camera360/adv/AppBindModel;)V

    invoke-virtual/range {v19 .. v19}, Lcom/pinguo/camera360/adv/AppBindModel$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    new-instance v19, Lcom/google/gson/Gson;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/Gson;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v11, v13}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/List;
    :try_end_e7
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_e7} :catch_e9

    goto/16 :goto_3c

    :catch_e9
    move-exception v6

    const-string/jumbo v19, "AppBind"

    move-object/from16 v0, v19

    invoke-static {v0, v6}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V

    goto :goto_7d
.end method

.method public getInfo()Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mItem:Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;

    return-object v0
.end method

.method public getPoster(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Landroid/graphics/Bitmap;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    iget-object v1, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "AppBind"

    const-string/jumbo v1, "getPoster start"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPosters:Ljava/util/Map;

    iget-object v1, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getPosterPath(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Ljava/lang/String;
    .registers 7

    iget-object v3, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string/jumbo v0, ""

    :goto_b
    return-object v0

    :cond_c
    iget-object v3, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->showPic:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string/jumbo v0, ""

    goto :goto_b

    :cond_20
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "/banner"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public isPackageInstalled(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Z
    .registers 8

    iget-object v3, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->packagename:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_11

    const/4 v2, 0x0

    :goto_9
    iget-object v3, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->packagename:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_13

    :cond_11
    const/4 v3, 0x1

    :goto_12
    return v3

    :cond_13
    iget-object v3, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mAllAppPackageList:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->packagename:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_65

    iput-object p1, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mItem:Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;

    const-string/jumbo v3, "AppBind"

    const-string/jumbo v4, "package not exist"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->appname:Ljava/lang/String;

    iget-object v1, p1, Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;->downloadLink:Ljava/lang/String;

    const-string/jumbo v3, "AppBind"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "appName: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "pref_appdownload_appname"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "pref_appdownload_link"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v3, 0x0

    goto :goto_12

    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public isPosterReady(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Z
    .registers 4

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/adv/AppBindModel;->getPosterPath(Lcom/pinguo/camera360/adv/AppBindModel$AppBindItem;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return v1

    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_b
.end method

.method public updateAndDownload()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AppBindModel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->currentNetType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    new-instance v0, Lcom/pinguo/camera360/adv/AppBindModel$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/adv/AppBindModel$2;-><init>(Lcom/pinguo/camera360/adv/AppBindModel;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AppBindModel$2;->start()V

    :cond_11
    return-void
.end method
