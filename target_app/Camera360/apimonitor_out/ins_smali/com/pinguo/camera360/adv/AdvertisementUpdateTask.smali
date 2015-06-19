.class public Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
.super Ljava/lang/Object;
.source "AdvertisementUpdateTask.java"
.field public static final LOCAL_RELATIVE_PATH:Ljava/lang/String; = "/banner/banner.json"
.field public static final ROOT_PATH:Ljava/lang/String; = "/banner"
.field public static final TAG:Ljava/lang/String;
.field private mContext:Landroid/content/Context;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
return-void
.end method
.method public getAdaptedContent()Ljava/lang/String;
.registers 8
const-string/jumbo v2, ""
:try_start_3
invoke-virtual {p0}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->getRemoteContent()Ljava/lang/String;
move-result-object v2
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "adaptedSchedule():"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_1c
:try_end_1c
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_2e
.catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_1c} :catch_44
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "status"
invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_27
.catch Lorg/json/JSONException; {:try_start_1c .. :try_end_27} :catch_5a
move-result v3
const/16 v4, 0xc8
if-ne v3, v4, :cond_64
move-object v4, v2
:goto_2d
return-object v4
:catch_2e
move-exception v0
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x0
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
new-instance v4, Lcom/pinguo/camera360/adv/AdvertisementCache;
iget-object v5, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-direct {v4, v5}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getCache()Ljava/lang/String;
move-result-object v4
goto :goto_2d
:catch_44
move-exception v0
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x1
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
new-instance v4, Lcom/pinguo/camera360/adv/AdvertisementCache;
iget-object v5, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-direct {v4, v5}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getCache()Ljava/lang/String;
move-result-object v4
goto :goto_2d
:catch_5a
move-exception v0
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x3
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
:cond_64
new-instance v4, Lcom/pinguo/camera360/adv/AdvertisementCache;
iget-object v5, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-direct {v4, v5}, Lcom/pinguo/camera360/adv/AdvertisementCache;-><init>(Landroid/content/Context;)V
invoke-virtual {v4}, Lcom/pinguo/camera360/adv/AdvertisementCache;->getCache()Ljava/lang/String;
move-result-object v4
goto :goto_2d
.end method
.method public getRemoteContent()Ljava/lang/String;
.registers 11
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string/jumbo v7, "platform"
const-string/jumbo v8, "android"
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "appversion"
invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getVersionName()Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "locale"
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v8
invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "version"
invoke-virtual {p0}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->getVersion()I
move-result v8
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "channel"
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v8
const v9, 0x7f080084
invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v7, "imei"
iget-object v8, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-static {v8}, Lorg/pinguo/cloudshare/support/ToolUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCachedGeoLocation()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_72
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-nez v7, :cond_72
const-string/jumbo v7, ","
invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v7, v0
const/4 v8, 0x1
if-ne v7, v8, :cond_72
const-string/jumbo v7, "geoinfo"
invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_72
const-string/jumbo v1, ""
invoke-static {v3}, Lcom/pinguo/lib/network/NetworkUtils;->getSigByParamMap(Ljava/util/Map;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v7, "http://store.camera360.com/v1/advertisement/list"
invoke-static {v7, v3}, Lcom/pinguo/lib/network/HttpUtils;->getUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
move-result-object v5
new-instance v7, Ljava/lang/StringBuilder;
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "&sig="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "send request : "
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
const/4 v7, 0x0
invoke-static {v6, v7}, Lcom/pinguo/lib/network/HttpUtils;->get(Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public getVersion()I
.registers 10
new-instance v7, Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/banner/banner.json"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
const-string/jumbo v0, ""
:try_start_21
new-instance v1, Ljava/lang/String;
invoke-static {v5}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
move-result-object v7
invoke-direct {v1, v7}, Ljava/lang/String;-><init>([B)V
:try_end_2a
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_33
move-object v0, v1
:goto_2b
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v7
if-eqz v7, :cond_3e
const/4 v6, 0x0
:goto_32
return v6
:catch_33
move-exception v3
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2b
:cond_3e
const/4 v6, 0x0
:try_start_3f
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "data"
invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
const-string/jumbo v7, "version"
invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
:try_end_51
.catch Lorg/json/JSONException; {:try_start_3f .. :try_end_51} :catch_53
move-result v6
goto :goto_32
:catch_53
move-exception v3
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v7, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_32
.end method
.method public saveContent(Lorg/json/JSONObject;)V
.registers 8
:try_start_0
const-string/jumbo v4, "status"
invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v3
const/16 v4, 0xc8
if-ne v3, v4, :cond_34
invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v2
new-instance v4, Ljava/lang/StringBuilder;
iget-object v5, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "/banner/banner.json"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_2c
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_40
move-result-object v1
:try_start_2d
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v4
invoke-static {v4, v1}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:goto_34
:cond_34
:try_end_34
.catch Ljava/io/IOException; {:try_start_2d .. :try_end_34} :catch_35
.catch Lorg/json/JSONException; {:try_start_2d .. :try_end_34} :catch_40
return-void
:catch_35
move-exception v0
:try_start_36
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x2
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
:try_end_3f
.catch Lorg/json/JSONException; {:try_start_36 .. :try_end_3f} :catch_40
goto :goto_34
:catch_40
move-exception v0
sget-object v4, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v4, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v4, 0x3
invoke-static {v4}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
goto :goto_34
.end method
.method public schedule()Ljava/lang/String;
.registers 11
const-string/jumbo v2, ""
:try_start_3
invoke-virtual {p0}, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->getRemoteContent()Ljava/lang/String;
move-result-object v2
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "schedule():"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_start_1c
:try_end_1c
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_57
.catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_1c} :catch_63
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v7, "status"
invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v6
const/16 v7, 0xc8
if-ne v6, v7, :cond_55
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v5
new-instance v7, Ljava/lang/StringBuilder;
iget-object v8, p0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v8
invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v8
invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v8, "/banner/banner.json"
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_4d
.catch Lorg/json/JSONException; {:try_start_1c .. :try_end_4d} :catch_7a
move-result-object v4
:try_start_4e
invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B
move-result-object v7
invoke-static {v7, v4}, Lcom/pinguo/lib/util/FileUtils;->saveFile([BLjava/lang/String;)V
:try_end_55
.catch Ljava/io/IOException; {:try_start_4e .. :try_end_55} :catch_6f
.catch Lorg/json/JSONException; {:try_start_4e .. :try_end_55} :catch_7a
:goto_55
:cond_55
move-object v3, v2
:goto_56
return-object v3
:catch_57
move-exception v0
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v7, 0x0
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
move-object v3, v2
goto :goto_56
:catch_63
move-exception v0
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v7, 0x1
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
move-object v3, v2
goto :goto_56
:catch_6f
move-exception v0
:try_start_70
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v7, 0x2
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
:try_end_79
.catch Lorg/json/JSONException; {:try_start_70 .. :try_end_79} :catch_7a
goto :goto_55
:catch_7a
move-exception v0
sget-object v7, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v7, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v7, 0x3
invoke-static {v7}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Another;->anotherStoreBannerError(I)V
goto :goto_55
.end method
.method  shouldUpdate()Z
.registers 20
new-instance v15, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v16
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v16, "/banner/banner.json"
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
const-string/jumbo v2, ""
:try_start_25
new-instance v3, Ljava/lang/String;
invoke-static {v12}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
move-result-object v15
invoke-direct {v3, v15}, Ljava/lang/String;-><init>([B)V
:try_end_2e
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_2e} :catch_37
move-object v2, v3
:goto_2f
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v15
if-eqz v15, :cond_42
const/4 v15, 0x1
:goto_36
return v15
:catch_37
move-exception v8
sget-object v15, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v16
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f
:cond_42
const/4 v9, 0x0
const-string/jumbo v11, ""
const-wide/16 v5, 0x0
:try_start_48
new-instance v10, Lorg/json/JSONObject;
invoke-direct {v10, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v15, "data"
invoke-virtual {v10, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v7
const-string/jumbo v15, "interval"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v9
const-string/jumbo v15, "language"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
const-string/jumbo v15, "currentTime"
invoke-virtual {v7, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v15
const-string/jumbo v16, "yyyy-MM-dd HH:mm:ss"
invoke-static/range {v15 .. v16}, Lcom/pinguo/lib/util/TimeUtils;->getTimeStamp(Ljava/lang/String;Ljava/lang/String;)J
:try_end_6f
.catch Lorg/json/JSONException; {:try_start_48 .. :try_end_6f} :catch_83
move-result-wide v5
:goto_70
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v15
invoke-virtual {v15}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v15
if-nez v15, :cond_8a
invoke-static {v12}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
const/4 v15, 0x1
goto :goto_36
:catch_83
move-exception v8
sget-object v15, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v15, v8}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_70
:cond_8a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v15
const-wide/16 v17, 0x3e8
div-long v13, v15, v17
sub-long v15, v13, v5
int-to-long v0, v9
move-wide/from16 v17, v0
cmp-long v15, v15, v17
if-lez v15, :cond_9d
const/4 v15, 0x1
goto :goto_36
:cond_9d
const/4 v15, 0x0
goto :goto_36
.end method
.method  shouldUpdate(I)Z
.registers 19
new-instance v13, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->mContext:Landroid/content/Context;
invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v14
invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v14
invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v14
invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v14, "/banner/banner.json"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
const-string/jumbo v1, ""
:try_start_23
new-instance v2, Ljava/lang/String;
invoke-static {v10}, Lcom/pinguo/lib/util/FileUtils;->getFileData(Ljava/lang/String;)[B
move-result-object v13
invoke-direct {v2, v13}, Ljava/lang/String;-><init>([B)V
:try_end_2c
.catch Ljava/io/IOException; {:try_start_23 .. :try_end_2c} :catch_35
move-object v1, v2
:goto_2d
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v13
if-eqz v13, :cond_40
const/4 v13, 0x1
:goto_34
return v13
:catch_35
move-exception v7
sget-object v13, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v14
invoke-static {v13, v14}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2d
:cond_40
const-string/jumbo v9, ""
const-wide/16 v4, 0x0
:try_start_45
new-instance v8, Lorg/json/JSONObject;
invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string/jumbo v13, "data"
invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v6
const-string/jumbo v13, "language"
invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string/jumbo v13, "currentTime"
invoke-virtual {v6, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string/jumbo v14, "yyyy-MM-dd HH:mm:ss"
invoke-static {v13, v14}, Lcom/pinguo/lib/util/TimeUtils;->getTimeStamp(Ljava/lang/String;Ljava/lang/String;)J
:try_end_65
.catch Lorg/json/JSONException; {:try_start_45 .. :try_end_65} :catch_79
move-result-wide v4
:goto_66
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v13
invoke-virtual {v13}, Ljava/util/Locale;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v13
if-nez v13, :cond_80
invoke-static {v10}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
const/4 v13, 0x1
goto :goto_34
:catch_79
move-exception v7
sget-object v13, Lcom/pinguo/camera360/adv/AdvertisementUpdateTask;->TAG:Ljava/lang/String;
invoke-static {v13, v7}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_66
:cond_80
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v13
const-wide/16 v15, 0x3e8
div-long v11, v13, v15
sub-long v13, v11, v4
move/from16 v0, p1
int-to-long v15, v0
cmp-long v13, v13, v15
if-lez v13, :cond_93
const/4 v13, 0x1
goto :goto_34
:cond_93
const/4 v13, 0x0
goto :goto_34
.end method