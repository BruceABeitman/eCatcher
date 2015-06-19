.class public Lcom/pinguo/camera360/adv/AdvertisementModel;
.super Ljava/lang/Object;
.source "AdvertisementModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
    }
.end annotation


# static fields
.field public static final CAMERA_EFFECT_SHOP_BANNER_AREA:Ljava/lang/String; = "1479bb9995f248098041e500c49fb069"

.field public static final CAMERA_MODE_SHOP_BANNER_AREA:Ljava/lang/String; = "b794d9510b54453c87bb3177e170c05a"

.field private static final DEFAULT_INTERVAL:I = 0x5

.field public static final ONEDAYs_INTERVAL:I = 0x15180

.field public static final ORDER_COUPON_SHOP_BANNER_AREA:Ljava/lang/String; = "41fc0e30803144cec27dd0600075672b"

.field public static final RECOMMEND_APP_BANNER_AREA:Ljava/lang/String; = "ec830992736c66df10aae7ba5381bec5"

.field public static final RECOMMEND_APP_ICON_AREA:Ljava/lang/String; = "0839b0a91febc14be3e85bf985cb260a"

.field public static final TAG:Ljava/lang/String; = null

.field private static final UPDATION_KEY:Ljava/lang/String; = "shop_banner"

.field private static mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

.field private static sRecommendAppCount:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->sRecommendAppCount:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    iput-object p1, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/adv/AdvertisementModel;)Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    return-object v0
.end method

.method public static createInstance(Landroid/content/Context;)Lcom/pinguo/camera360/adv/AdvertisementModel;
    .registers 2

    sget-object v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/adv/AdvertisementModel;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    :cond_b
    sget-object v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    return-object v0
.end method

.method private getDefaultItems(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/adv/AdvertisementModel$Item;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v3, "b794d9510b54453c87bb3177e170c05a"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    new-instance v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v1}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "default_camera_mode_1"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const-string/jumbo v3, "default camera mode 1"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f020123

    iput v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, "app://camera360/camera?cameraId=c205e3582b514d6fb5c21a953e1e901e"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "default_camera_mode_2"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const-string/jumbo v3, "default camera mode 2"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f020122

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, "app://camera360/cloud"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_55
    :goto_55
    return-object v2

    :cond_56
    const-string/jumbo v3, "1479bb9995f248098041e500c49fb069"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a6

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "default_camera_effect_1"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const-string/jumbo v3, "default camera effect 1"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f020115

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, "app://camera360/effect?effectId=74adc1cd62d80653ad71cb6e95d9f646"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v1}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "default_camera_effect_2"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const-string/jumbo v3, "default camera effect 2"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f020116

    iput v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, "app://camera360/effect?effectId=e421d34bffc71a5c50ed00f124df3aa0"

    iput-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_a6
    const-string/jumbo v3, "0839b0a91febc14be3e85bf985cb260a"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "recommendation"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const v3, 0x7f080337

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->nameDefault:I

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f0202cd

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_55

    :cond_d3
    const-string/jumbo v3, "ec830992736c66df10aae7ba5381bec5"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    const-string/jumbo v3, "default_banner_image"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    const-string/jumbo v3, "default banner image"

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const v3, 0x7f020158

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    const-string/jumbo v3, ""

    iput-object v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    iput v4, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_55
.end method

.method public static getInstance()Lcom/pinguo/camera360/adv/AdvertisementModel;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mAdvertisementModel:Lcom/pinguo/camera360/adv/AdvertisementModel;

    return-object v0
.end method


# virtual methods
.method public getItems(Ljava/lang/String;)Ljava/util/List;
    .registers 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/adv/AdvertisementModel$Item;",
            ">;"
        }
    .end annotation

    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "/banner/banner.json"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v5, ""

    :try_start_25
    new-instance v6, Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_30} :catch_3c

    move-object v5, v6

    :cond_31
    :goto_31
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_5b

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getDefaultItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    :cond_3b
    :goto_3b
    return-object v15

    :catch_3c
    move-exception v8

    sget-object v24, Lcom/pinguo/camera360/adv/AdvertisementModel;->TAG:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_31

    const/16 v24, 0x4

    invoke-static/range {v24 .. v24}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V

    goto :goto_31

    :cond_5b
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :try_start_60
    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v24, "data"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v24, "area"

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v12, 0x0

    :goto_7c
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_7f
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_7f} :catch_15a

    move-result v24

    move/from16 v0, v24

    if-lt v12, v0, :cond_8f

    :goto_84
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_3b

    invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getDefaultItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    goto :goto_3b

    :cond_8f
    :try_start_8f
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "guid"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_a5

    :cond_a2
    add-int/lit8 v12, v12, 0x1

    goto :goto_7c

    :cond_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v22, v24, v26

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "opTimeStamp"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "expireTimeStamp"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    cmp-long v24, v22, v19

    if-ltz v24, :cond_a2

    cmp-long v24, v22, v9

    if-gtz v24, :cond_a2

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "name"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "areaId"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v24

    const-string/jumbo v25, "imageList"

    invoke-virtual/range {v24 .. v25}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    const/4 v13, 0x0

    :goto_ed
    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONArray;->length()I

    move-result v24

    move/from16 v0, v24

    if-ge v13, v0, :cond_a2

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v16

    new-instance v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    invoke-direct {v14}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V

    iput-object v2, v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    if-nez v13, :cond_13d

    move-object/from16 v24, v3

    :goto_106
    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    const-string/jumbo v24, "imageUrl"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    const-string/jumbo v24, "clickUrl"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    const-string/jumbo v24, "interval"

    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v24

    iput v0, v14, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_ed

    :cond_13d
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v25, "-"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_158
    .catch Lorg/json/JSONException; {:try_start_8f .. :try_end_158} :catch_15a

    move-result-object v24

    goto :goto_106

    :catch_15a
    move-exception v8

    sget-object v24, Lcom/pinguo/camera360/adv/AdvertisementModel;->TAG:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v0, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 v24, 0x5

    invoke-static/range {v24 .. v24}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V

    goto/16 :goto_84
.end method

.method public getRecommendAppItem()Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
    .registers 6

    const-string/jumbo v3, "0839b0a91febc14be3e85bf985cb260a"

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/adv/AdvertisementModel;->getItems(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    sget v3, Lcom/pinguo/camera360/adv/AdvertisementModel;->sRecommendAppCount:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    rem-int v2, v3, v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    const v3, 0x7f080337

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->nameDefault:I

    const v3, 0x7f0202cd

    iput v3, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    sget v3, Lcom/pinguo/camera360/adv/AdvertisementModel;->sRecommendAppCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/pinguo/camera360/adv/AdvertisementModel;->sRecommendAppCount:I

    return-object v0
.end method

.method public isItemAvailable(Lcom/pinguo/camera360/adv/AdvertisementModel$Item;)Z
    .registers 3

    iget-object v0, p1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/Interaction;->isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public update()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/adv/AdvertisementModel$1;-><init>(Lcom/pinguo/camera360/adv/AdvertisementModel;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$1;->start()V

    :cond_14
    return-void
.end method

.method public update(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementModel;->mUpdationTask:Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->shouldUpdate(I)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/pinguo/camera360/adv/AdvertisementModel$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/adv/AdvertisementModel$2;-><init>(Lcom/pinguo/camera360/adv/AdvertisementModel;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/adv/AdvertisementModel$2;->start()V

    :cond_14
    return-void
.end method
