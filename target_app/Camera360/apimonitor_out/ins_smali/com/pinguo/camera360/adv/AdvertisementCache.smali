.class public Lcom/pinguo/camera360/adv/AdvertisementCache;
.super Ljava/lang/Object;
.source "AdvertisementCache.java"
.field public static final TAG:Ljava/lang/String;
.field private mBannerJson:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/adv/AdvertisementCache;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/adv/AdvertisementCache;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/banner/banner.json"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:try_start_1f
new-instance v2, Ljava/lang/String;
invoke-static {v1}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
iput-object v2, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
:goto_2a
:try_end_2a
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_2a} :catch_2b
return-void
:catch_2b
move-exception v0
sget-object v2, Lcom/pinguo/camera360/adv/AdvertisementCache;->TAG:Ljava/lang/String;
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, ""
iput-object v2, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
goto :goto_2a
.end method
.method public getCache()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
return-object v0
.end method
.method public getItems(Ljava/lang/String;)Ljava/util/List;
.registers 26
new-instance v12, Ljava/util/ArrayList;
invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
move-object/from16 v20, v0
invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v20
if-eqz v20, :cond_12
:cond_11
:goto_11
return-object v12
:cond_12
:try_start_12
new-instance v15, Lorg/json/JSONObject;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v20
invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v20, "data"
move-object/from16 v0, v20
invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
const-string/jumbo v20, "area"
move-object/from16 v0, v20
invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v3
const/4 v9, 0x0
:goto_32
invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
move-result v20
move/from16 v0, v20
if-ge v9, v0, :cond_11
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "guid"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
move-object/from16 v0, p1
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v20
if-nez v20, :cond_50
:cond_4d
add-int/lit8 v9, v9, 0x1
goto :goto_32
:cond_50
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v20
const-wide/16 v22, 0x3e8
div-long v18, v20, v22
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "opTimeStamp"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v16
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "expireTimeStamp"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v6
cmp-long v20, v18, v16
if-ltz v20, :cond_4d
cmp-long v20, v18, v6
if-gtz v20, :cond_4d
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "name"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "areaId"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v20
const-string/jumbo v21, "imageList"
invoke-virtual/range {v20 .. v21}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v14
const/4 v10, 0x0
:goto_98
invoke-virtual {v14}, Lorg/json/JSONArray;->length()I
move-result v20
move/from16 v0, v20
if-ge v10, v0, :cond_4d
invoke-virtual {v14, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v13
new-instance v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
invoke-direct {v11}, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;-><init>()V
iput-object v1, v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;
if-nez v10, :cond_e0
move-object/from16 v20, v2
:goto_af
move-object/from16 v0, v20
iput-object v0, v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;
const-string/jumbo v20, "imageUrl"
move-object/from16 v0, v20
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
iput-object v0, v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;
const-string/jumbo v20, "clickUrl"
move-object/from16 v0, v20
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
iput-object v0, v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interactionUri:Ljava/lang/String;
const-string/jumbo v20, "interval"
move-object/from16 v0, v20
invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v20
move/from16 v0, v20
iput v0, v11, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I
invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v10, v10, 0x1
goto :goto_98
:cond_e0
new-instance v20, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v21
invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v21, "-"
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v21
invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_fb
.catch Lorg/json/JSONException; {:try_start_12 .. :try_end_fb} :catch_fd
move-result-object v20
goto :goto_af
:catch_fd
move-exception v5
sget-object v20, Lcom/pinguo/camera360/adv/AdvertisementCache;->TAG:Ljava/lang/String;
move-object/from16 v0, v20
invoke-static {v0, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_11
.end method
.method public getVersion()I
.registers 6
iget-object v4, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-eqz v4, :cond_a
const/4 v3, 0x0
:goto_9
return v3
:cond_a
const/4 v3, 0x0
:try_start_b
new-instance v2, Lorg/json/JSONObject;
iget-object v4, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "data"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v4, "version"
invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_1f
.catch Lorg/json/JSONException; {:try_start_b .. :try_end_1f} :catch_21
move-result v3
goto :goto_9
:catch_21
move-exception v1
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementCache;->TAG:Ljava/lang/String;
invoke-static {v4, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public isAvailable()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/adv/AdvertisementCache;->mBannerJson:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method