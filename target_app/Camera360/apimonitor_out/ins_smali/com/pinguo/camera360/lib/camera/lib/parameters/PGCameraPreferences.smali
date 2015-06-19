.class public final Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.super Ljava/lang/Object;
.source "PGCameraPreferences.java"
.field private static final LOCAL_KEY_SET:Ljava/util/Set;
.field private static final TAG:Ljava/lang/String;
.field private static lock:[B
.field private static mMap:Ljava/util/WeakHashMap;
.field private globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
.field private localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
.field private mPrefGlobal:Landroid/content/SharedPreferences;
.field private mPrefLocal:Landroid/content/SharedPreferences;
.method static constructor <clinit>()V
.registers 2
const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->TAG:Ljava/lang/String;
new-instance v0, Ljava/util/WeakHashMap;
invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mMap:Ljava/util/WeakHashMap;
const/4 v0, 0x0
new-array v0, v0, [B
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->lock:[B
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_picture_size"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_exposure"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "pref_open_camera_exposure_setting"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_flashmode"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_whitebalance"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_display_redress_enable"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_display_redress_value"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_jpeg_redress_enable"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_jpeg_redress_mirror"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_jpeg_redress_orientation"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "pref_camera_iso_key"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "key_camera_sharpness"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "pref_video_quality_key"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
const-string/jumbo v1, "pref_video_flashmode_key"
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "_global"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
return-void
.end method
.method private static clearAdvanceParameter(Landroid/content/SharedPreferences;)V
.registers 3
invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "key_camera_sharpness"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "key_camera_whitebalance"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "pref_camera_iso_key"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string/jumbo v1, "key_camera_exposure"
invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
return-void
.end method
.method public static clearAllCache()V
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mMap:Ljava/util/WeakHashMap;
invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V
return-void
.end method
.method public static clearPrefInAdvanceParameter(Landroid/app/Activity;)V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x1
invoke-static {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getPrefName(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->clearAdvanceParameter(Landroid/content/SharedPreferences;)V
invoke-static {p0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getPrefName(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->clearAdvanceParameter(Landroid/content/SharedPreferences;)V
return-void
.end method
.method private commitMapPreferences(Landroid/content/SharedPreferences;Ljava/util/concurrent/ConcurrentHashMap;)Z
.registers 11
if-nez p1, :cond_4
const/4 v2, 0x1
:cond_3
:goto_3
return v2
:cond_4
const/4 v2, 0x1
invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
move-result v4
if-lez v4, :cond_3
invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_17
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-nez v7, :cond_25
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
move-result v2
invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
goto :goto_3
:cond_25
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map$Entry;
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v5
invoke-direct {p0, v0, v3, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->updatePreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_17
.end method
.method public static get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
.registers 3
sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->lock:[B
monitor-enter v2
:try_start_3
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
if-nez v0, :cond_c
monitor-exit v2
const/4 v1, 0x0
:goto_b
return-object v1
:cond_c
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mMap:Ljava/util/WeakHashMap;
invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
monitor-exit v2
goto :goto_b
:catchall_16
move-exception v1
monitor-exit v2
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_16
throw v1
.end method
.method private static getPrefName(Landroid/content/Context;I)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "_local_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static initInApp()V
.registers 4
sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->lock:[B
monitor-enter v2
:try_start_3
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
if-nez v0, :cond_b
monitor-exit v2
:goto_a
return-void
:cond_b
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mMap:Ljava/util/WeakHashMap;
invoke-virtual {v1, v0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1d
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mMap:Ljava/util/WeakHashMap;
new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;
invoke-direct {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;-><init>(Landroid/content/Context;)V
invoke-virtual {v1, v0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1d
monitor-exit v2
goto :goto_a
:catchall_1f
move-exception v1
monitor-exit v2
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v1
.end method
.method public static isGlobal(Ljava/lang/String;)Z
.registers 2
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->LOCAL_KEY_SET:Ljava/util/Set;
invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
const/4 v0, 0x1
goto :goto_9
.end method
.method private updatePreferences(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
instance-of v0, p3, Ljava/lang/String;
if-eqz v0, :cond_a
check-cast p3, Ljava/lang/String;
invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
:goto_9
:cond_9
return-void
:cond_a
instance-of v0, p3, Ljava/lang/Integer;
if-eqz v0, :cond_18
check-cast p3, Ljava/lang/Integer;
invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
goto :goto_9
:cond_18
instance-of v0, p3, Ljava/lang/Boolean;
if-eqz v0, :cond_26
check-cast p3, Ljava/lang/Boolean;
invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
goto :goto_9
:cond_26
instance-of v0, p3, Ljava/lang/Long;
if-eqz v0, :cond_34
check-cast p3, Ljava/lang/Long;
invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
move-result-wide v0
invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
goto :goto_9
:cond_34
instance-of v0, p3, Ljava/lang/Float;
if-eqz v0, :cond_9
check-cast p3, Ljava/lang/Float;
invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
goto :goto_9
.end method
.method public clearModifiedCache()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method
.method public clearModifiedCache(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public commit()Z
.registers 5
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commitMapPreferences(Landroid/content/SharedPreferences;Ljava/util/concurrent/ConcurrentHashMap;)Z
move-result v0
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commitMapPreferences(Landroid/content/SharedPreferences;Ljava/util/concurrent/ConcurrentHashMap;)Z
move-result v1
if-eqz v0, :cond_16
if-eqz v1, :cond_16
const/4 v2, 0x1
:goto_15
return v2
:cond_16
const/4 v2, 0x0
goto :goto_15
.end method
.method public getAblumTopCaptureTipshown()J
.registers 4
const-string/jumbo v0, "album_top_capture_tip_show"
const-wide/16 v1, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getAblumTopCountTipshown()J
.registers 4
const-string/jumbo v0, "album_top_count_tip_show"
const-wide/16 v1, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getBoolean(Ljava/lang/String;Z)Z
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Boolean;
if-eqz v1, :cond_18
move-object v1, v0
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
:goto_17
return v1
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
goto :goto_17
:cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Boolean;
if-eqz v1, :cond_31
move-object v1, v0
check-cast v1, Ljava/lang/Boolean;
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
goto :goto_17
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
goto :goto_17
.end method
.method public getFloat(Ljava/lang/String;F)F
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Float;
if-eqz v1, :cond_18
move-object v1, v0
check-cast v1, Ljava/lang/Float;
invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
move-result v1
:goto_17
return v1
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
move-result v1
goto :goto_17
:cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Float;
if-eqz v1, :cond_31
move-object v1, v0
check-cast v1, Ljava/lang/Float;
invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F
move-result v1
goto :goto_17
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F
move-result v1
goto :goto_17
.end method
.method public getFrontImageVersion()I
.registers 3
const-string/jumbo v0, "key_front_image_version"
const/16 v1, 0x23
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public getGlobal()Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
return-object v0
.end method
.method public getInt(Ljava/lang/String;I)I
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_18
move-object v1, v0
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
:goto_17
return v1
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
goto :goto_17
:cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_31
move-object v1, v0
check-cast v1, Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
goto :goto_17
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v1
goto :goto_17
.end method
.method public getLocal()Landroid/content/SharedPreferences;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
return-object v0
.end method
.method public getLong(Ljava/lang/String;J)J
.registers 7
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_18
move-object v1, v0
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v1
:goto_17
return-wide v1
:cond_18
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
goto :goto_17
:cond_1f
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_31
move-object v1, v0
check-cast v1, Ljava/lang/Long;
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v1
goto :goto_17
:cond_31
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
goto :goto_17
.end method
.method public getReqUserCountryCodeTime()J
.registers 4
const-string/jumbo v0, "req_user_country_time"
const-wide/16 v1, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v0
return-wide v0
.end method
.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_14
move-object v1, v0
check-cast v1, Ljava/lang/String;
:goto_13
return-object v1
:cond_14
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefGlobal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_13
:cond_1b
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_29
move-object v1, v0
check-cast v1, Ljava/lang/String;
goto :goto_13
:cond_29
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
goto :goto_13
.end method
.method public getUserCountryCode()Ljava/lang/String;
.registers 3
const-string/jumbo v0, "user_country_code"
const-string/jumbo v1, ""
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getUserLoginToken()Ljava/lang/String;
.registers 3
const-string/jumbo v0, "album_user_login_token"
const-string/jumbo v1, ""
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public isAblumBottomTipshown()Z
.registers 3
const-string/jumbo v0, "album_bottom_tip_show"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public isAblumTopTipshown()Z
.registers 3
const-string/jumbo v0, "album_top_tip_show"
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
return v0
.end method
.method public isModifiedKey(Ljava/lang/String;)Z
.registers 3
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
goto :goto_c
.end method
.method public putBoolean(Ljava/lang/String;Z)V
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
.end method
.method public putFloat(Ljava/lang/String;F)V
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
.end method
.method public putFrontImageVersion(I)V
.registers 3
const-string/jumbo v0, "key_front_image_version"
invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public putInt(Ljava/lang/String;I)V
.registers 5
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
.end method
.method public putLong(Ljava/lang/String;J)V
.registers 6
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_f
.end method
.method public putString(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->isGlobal(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->globalModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_b
return-void
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_b
.end method
.method public setAblumBottomTipshown(Z)V
.registers 3
const-string/jumbo v0, "album_bottom_tip_show"
invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public setAblumTopCaptureTipshown(J)V
.registers 4
const-string/jumbo v0, "album_top_capture_tip_show"
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public setAblumTopCountTipshown(J)V
.registers 4
const-string/jumbo v0, "album_top_count_tip_show"
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public setAblumTopTipshown(Z)V
.registers 3
const-string/jumbo v0, "album_top_tip_show"
invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public setLocal(Landroid/content/Context;I)V
.registers 7
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u521d\u59cb\u5316\u76f8\u673a\u914d\u7f6e,CameraId="
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->localModifiedMap:Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->commitMapPreferences(Landroid/content/SharedPreferences;Ljava/util/concurrent/ConcurrentHashMap;)Z
invoke-static {p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getPrefName(Landroid/content/Context;I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->mPrefLocal:Landroid/content/SharedPreferences;
return-void
.end method
.method public setReqUserCountryCodeTime(J)V
.registers 4
const-string/jumbo v0, "req_user_country_time"
invoke-virtual {p0, v0, p1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putLong(Ljava/lang/String;J)V
return-void
.end method
.method public setUserCountryCode(Ljava/lang/String;)V
.registers 3
const-string/jumbo v0, "user_country_code"
invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setUserLoginToken(Ljava/lang/String;)V
.registers 3
const-string/jumbo v0, "album_user_login_token"
invoke-virtual {p0, v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method