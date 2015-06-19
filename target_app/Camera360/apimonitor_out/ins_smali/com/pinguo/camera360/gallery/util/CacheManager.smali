.class public Lcom/pinguo/camera360/gallery/util/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"
.field private static final KEY_CACHE_UP_TO_DATE:Ljava/lang/String; = "cache-up-to-date"
.field private static final TAG:Ljava/lang/String; = "CacheManager"
.field private static sCacheMap:Ljava/util/HashMap;
.field private static sOldCheckDone:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/camera360/gallery/util/CacheManager;->sOldCheckDone:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCache(Landroid/content/Context;Ljava/lang/String;III)Lcom/pinguo/camera360/gallery/util/BlobCache;
.registers 15
sget-object v9, Lcom/pinguo/camera360/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;
monitor-enter v9
:try_start_3
sget-boolean v2, Lcom/pinguo/camera360/gallery/util/CacheManager;->sOldCheckDone:Z
if-nez v2, :cond_d
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/CacheManager;->removeOldFilesIfNecessary(Landroid/content/Context;)V
const/4 v2, 0x1
sput-boolean v2, Lcom/pinguo/camera360/gallery/util/CacheManager;->sOldCheckDone:Z
:cond_d
sget-object v2, Lcom/pinguo/camera360/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;
invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/gallery/util/BlobCache;
const-string/jumbo v1, ""
if-nez v6, :cond_7e
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v7
if-eqz v7, :cond_4c
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_3b
.catchall {:try_start_3 .. :try_end_3b} :catchall_79
move-result-object v1
:try_start_3c
:goto_3c
new-instance v0, Lcom/pinguo/camera360/gallery/util/BlobCache;
const/4 v4, 0x0
move v2, p2
move v3, p3
move v5, p4
invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/util/BlobCache;-><init>(Ljava/lang/String;IIZI)V
:try_end_45
.catchall {:try_start_3c .. :try_end_45} :catchall_79
.catch Ljava/io/IOException; {:try_start_3c .. :try_end_45} :catch_6d
:try_start_45
sget-object v2, Lcom/pinguo/camera360/gallery/util/CacheManager;->sCacheMap:Ljava/util/HashMap;
invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_4a
:try_start_4a
:try_end_4a
.catchall {:try_start_45 .. :try_end_4a} :catchall_79
.catch Ljava/io/IOException; {:try_start_45 .. :try_end_4a} :catch_7c
monitor-exit v9
return-object v0
:cond_4c
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
goto :goto_3c
:catch_6d
move-exception v8
move-object v0, v6
:goto_6f
const-string/jumbo v2, "CacheManager"
const-string/jumbo v3, "Cannot instantiate cache!"
invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_4a
:catchall_79
move-exception v2
monitor-exit v9
:try_end_7b
.catchall {:try_start_4a .. :try_end_7b} :catchall_79
throw v2
:catch_7c
move-exception v8
goto :goto_6f
:cond_7e
move-object v0, v6
goto :goto_4a
.end method
.method private static removeOldFilesIfNecessary(Landroid/content/Context;)V
.registers 8
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const/4 v1, 0x0
:try_start_5
const-string/jumbo v4, "cache-up-to-date"
const/4 v5, 0x0
invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
:try_end_c
.catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_c} :catch_81
move-result v1
:goto_d
if-eqz v1, :cond_10
:goto_f
return-void
:cond_10
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v4
const-string/jumbo v5, "cache-up-to-date"
const/4 v6, 0x1
invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
new-instance v4, Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "/"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "imgcache"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFiles(Ljava/lang/String;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "rev_geocoding"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFiles(Ljava/lang/String;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v5, "bookmark"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFiles(Ljava/lang/String;)V
goto :goto_f
:catch_81
move-exception v4
goto :goto_d
.end method