.class public Lcom/pinguo/camera360/gallery/util/AlbumUtils;
.super Ljava/lang/Object;
.source "AlbumUtils.java"
.field private static final CAMERA_LAUNCHER_NAME:Ljava/lang/String; = "com.android.camera.CameraLauncher"
.field private static final DIR_TYPE_IMAGE:Ljava/lang/String; = "vnd.android.cursor.dir/image"
.field private static final DIR_TYPE_VIDEO:Ljava/lang/String; = "vnd.android.cursor.dir/video"
.field private static final EARTH_RADIUS_METERS:D = 6367000.0
.field private static final KEY_CAMERA_UPDATE:Ljava/lang/String; = "camera-update"
.field private static final KEY_HAS_CAMERA:Ljava/lang/String; = "has-camera"
.field public static final KEY_PACKAGES_VERSION:Ljava/lang/String; = "packages-version"
.field private static final MAPS_CLASS_NAME:Ljava/lang/String; = "com.google.android.maps.MapsActivity"
.field private static final MAPS_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.maps"
.field private static final MIME_TYPE_ALL:Ljava/lang/String; = "*/*"
.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"
.field private static final MIME_TYPE_VIDEO:Ljava/lang/String; = "video/*"
.field private static final PREFIX_HAS_PHOTO_EDITOR:Ljava/lang/String; = "has-editor-"
.field private static final PREFIX_PHOTO_EDITOR_UPDATE:Ljava/lang/String; = "editor-update-"
.field private static final RAD_PER_DEG:D = 0.017453292519943295
.field private static final TAG:Ljava/lang/String; = "GalleryUtils"
.field private static sCameraAvailable:Z
.field private static sCameraAvailableInitialized:Z
.field private static volatile sCurrentThread:Ljava/lang/Thread;
.field private static volatile sWarned:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailableInitialized:Z
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static accurateDistanceMeters(DDDD)D
.registers 22
const-wide/high16 v6, 0x3fe0
sub-double v8, p4, p0
mul-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v0
const-wide/high16 v6, 0x3fe0
sub-double v8, p6, p2
mul-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D
move-result-wide v2
mul-double v6, v0, v0
mul-double v8, v2, v2
invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D
move-result-wide v10
mul-double/2addr v8, v10
invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D
move-result-wide v10
mul-double/2addr v8, v10
add-double v4, v6, v8
const-wide/high16 v6, 0x4000
invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v8
const-wide/16 v10, 0x0
const-wide/high16 v12, 0x3ff0
sub-double/2addr v12, v4
invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D
move-result-wide v10
invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v10
invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v8
mul-double/2addr v6, v8
const-wide v8, 0x415849c600000000L
mul-double/2addr v6, v8
return-wide v6
.end method
.method public static assertNotInRenderThread()V
.registers 3
sget-boolean v0, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sWarned:Z
if-nez v0, :cond_1d
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCurrentThread:Ljava/lang/Thread;
if-ne v0, v1, :cond_1d
const/4 v0, 0x1
sput-boolean v0, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sWarned:Z
const-string/jumbo v0, "GalleryUtils"
new-instance v1, Ljava/lang/Throwable;
const-string/jumbo v2, "Should not do this in render thread"
invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V
invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
:cond_1d
return-void
.end method
.method public static deleteDir(Ljava/io/File;)V
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_11
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_11
const/4 v3, 0x0
:goto_e
array-length v4, v0
if-lt v3, v4, :cond_29
:cond_11
if-nez v1, :cond_28
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v4
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v4
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_28
invoke-virtual {p0}, Ljava/io/File;->delete()Z
:cond_28
return-void
:cond_29
aget-object v2, v0, v3
invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_36
add-int/lit8 v1, v1, 0x1
:goto_33
:cond_33
add-int/lit8 v3, v3, 0x1
goto :goto_e
:cond_36
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "C360"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_33
invoke-virtual {v2}, Ljava/io/File;->delete()Z
goto :goto_33
.end method
.method public static fakeBusy(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;I)V
.registers 5
new-instance v0, Landroid/os/ConditionVariable;
invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V
new-instance v1, Lcom/pinguo/camera360/gallery/util/AlbumUtils$1;
invoke-direct {v1, v0}, Lcom/pinguo/camera360/gallery/util/AlbumUtils$1;-><init>(Landroid/os/ConditionVariable;)V
invoke-interface {p0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z
const/4 v1, 0x0
invoke-interface {p0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->setCancelListener(Lcom/pinguo/camera360/gallery/util/ThreadPool$CancelListener;)V
return-void
.end method
.method public static fastDistanceMeters(DDDD)D
.registers 20
sub-double v8, p0, p4
invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D
move-result-wide v8
const-wide v10, 0x3f91df46a2529d39L
cmpl-double v8, v8, v10
if-gtz v8, :cond_1e
sub-double v8, p2, p6
invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D
move-result-wide v8
const-wide v10, 0x3f91df46a2529d39L
cmpl-double v8, v8, v10
if-lez v8, :cond_23
:cond_1e
invoke-static/range {p0 .. p7}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->accurateDistanceMeters(DDDD)D
move-result-wide v8
:goto_22
return-wide v8
:cond_23
sub-double v2, p0, p4
sub-double v4, p2, p6
add-double v8, p0, p4
const-wide/high16 v10, 0x4000
div-double/2addr v8, v10
invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D
move-result-wide v0
mul-double/2addr v0, v0
mul-double v8, v2, v2
mul-double v10, v0, v4
mul-double/2addr v10, v4
add-double v6, v8, v10
invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v6
const-wide v8, 0x415849c600000000L
mul-double/2addr v8, v6
goto :goto_22
.end method
.method public static formatDuration(Landroid/content/Context;I)Ljava/lang/String;
.registers 12
const/4 v9, 0x2
const/4 v8, 0x1
const/4 v7, 0x0
div-int/lit16 v1, p1, 0xe10
mul-int/lit16 v4, v1, 0xe10
sub-int v4, p1, v4
div-int/lit8 v2, v4, 0x3c
mul-int/lit16 v4, v1, 0xe10
mul-int/lit8 v5, v2, 0x3c
add-int/2addr v4, v5
sub-int v3, p1, v4
if-nez v1, :cond_2e
const v4, 0x7f08009d
invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
new-array v5, v9, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v8
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_2d
return-object v0
:cond_2e
const v4, 0x7f08009e
invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v5, 0x3
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v7
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v8
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v9
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_2d
.end method
.method public static formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
.registers 9
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getBucketId(Ljava/lang/String;)I
.registers 2
sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public static getBytes(Ljava/lang/String;)[B
.registers 9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
mul-int/lit8 v4, v4, 0x2
new-array v3, v4, [B
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v5
array-length v6, v5
const/4 v4, 0x0
move v2, v1
:goto_10
if-lt v4, v6, :cond_13
return-object v3
:cond_13
aget-char v0, v5, v4
add-int/lit8 v1, v2, 0x1
and-int/lit16 v7, v0, 0xff
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v7, v0, 0x8
int-to-byte v7, v7
aput-byte v7, v3, v1
add-int/lit8 v4, v4, 0x1
goto :goto_10
.end method
.method public static declared-synchronized getPackagesVersion(Landroid/content/Context;)I
.registers 5
const-class v2, Lcom/pinguo/camera360/gallery/util/AlbumUtils;
monitor-enter v2
:try_start_3
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string/jumbo v1, "packages-version"
const/4 v3, 0x1
invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
:try_end_e
.catchall {:try_start_3 .. :try_end_e} :catchall_11
move-result v1
monitor-exit v2
return v1
:catchall_11
move-exception v1
monitor-exit v2
throw v1
.end method
.method public static hasSpaceForSize(J)Z
.registers 11
const/4 v4, 0x0
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "mounted"
invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_f
:cond_e
:goto_e
return v4
:cond_f
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v5
invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
:try_start_17
new-instance v2, Landroid/os/StatFs;
invoke-direct {v2, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v5
int-to-long v5, v5
invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
:try_end_24
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_24} :catch_2d
move-result v7
int-to-long v7, v7
mul-long/2addr v5, v7
cmp-long v5, v5, p0
if-lez v5, :cond_e
const/4 v4, 0x1
goto :goto_e
:catch_2d
move-exception v0
const-string/jumbo v5, "GalleryUtils"
const-string/jumbo v6, "Fail to access external storage"
invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_e
.end method
.method public static isAnyCameraAvailable(Landroid/content/Context;)Z
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->getPackagesVersion(Landroid/content/Context;)I
move-result v3
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
const-string/jumbo v6, "camera-update"
invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v6
if-eq v6, v3, :cond_3e
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
new-instance v6, Landroid/content/Intent;
const-string/jumbo v7, "android.media.action.STILL_IMAGE_CAMERA"
invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v6, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v0
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v6
const-string/jumbo v7, "camera-update"
invoke-interface {v6, v7, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v6
const-string/jumbo v7, "has-camera"
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v8
if-eqz v8, :cond_46
:goto_37
invoke-interface {v6, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v4
invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_3e
const-string/jumbo v4, "has-camera"
invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v4
return v4
:cond_46
move v4, v5
goto :goto_37
.end method
.method public static isCameraAvailable(Landroid/content/Context;)Z
.registers 6
const/4 v3, 0x1
sget-boolean v4, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailableInitialized:Z
if-eqz v4, :cond_8
sget-boolean v3, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailable:Z
:goto_7
return v3
:cond_8
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
new-instance v0, Landroid/content/ComponentName;
const-string/jumbo v4, "com.android.camera.CameraLauncher"
invoke-direct {v0, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V
invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
move-result v2
sput-boolean v3, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailableInitialized:Z
if-eqz v2, :cond_1f
if-eq v2, v3, :cond_1f
const/4 v3, 0x0
:cond_1f
sput-boolean v3, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailable:Z
sget-boolean v3, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCameraAvailable:Z
goto :goto_7
.end method
.method public static isEditorAvailable(Landroid/content/Context;Ljava/lang/String;)Z
.registers 12
const/4 v7, 0x1
const/4 v6, 0x0
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->getPackagesVersion(Landroid/content/Context;)I
move-result v5
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "editor-update-"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v8, Ljava/lang/StringBuilder;
const-string/jumbo v9, "has-editor-"
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
move-result v8
if-eq v8, v5, :cond_59
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
new-instance v8, Landroid/content/Intent;
const-string/jumbo v9, "android.intent.action.EDIT"
invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, p1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v8
invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
move-result-object v1
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v8
invoke-interface {v8, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
move-result-object v8
invoke-interface {v1}, Ljava/util/List;->isEmpty()Z
move-result v9
if-eqz v9, :cond_5e
:goto_52
invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v6
invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V
:cond_59
invoke-interface {v3, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
return v6
:cond_5e
move v6, v7
goto :goto_52
.end method
.method public static isPanorama(Lcom/pinguo/camera360/gallery/data/MediaItem;)Z
.registers 6
const/4 v2, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v2
:cond_4
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getHeight()I
move-result v0
if-lez v0, :cond_3
div-int v3, v1, v0
const/4 v4, 0x2
if-lt v3, v4, :cond_3
const/4 v2, 0x1
goto :goto_3
.end method
.method public static isValidLocation(DD)Z
.registers 7
const-wide/16 v1, 0x0
cmpl-double v0, p0, v1
if-nez v0, :cond_c
cmpl-double v0, p2, v1
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
const/4 v0, 0x1
goto :goto_b
.end method
.method public static setRenderThread()V
.registers 1
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->sCurrentThread:Ljava/lang/Thread;
return-void
.end method
.method public static setViewPointMatrix([FFFF)V
.registers 8
const/4 v3, 0x0
const/16 v0, 0x10
const/4 v1, 0x0
invoke-static {p0, v3, v0, v1}, Ljava/util/Arrays;->fill([FIIF)V
const/4 v0, 0x5
const/16 v1, 0xf
neg-float v2, p3
aput v2, p0, v1
aput v2, p0, v0
aput v2, p0, v3
const/16 v0, 0x8
aput p1, p0, v0
const/16 v0, 0x9
aput p2, p0, v0
const/16 v0, 0xa
const/16 v1, 0xb
const/high16 v2, 0x3f80
aput v2, p0, v1
aput v2, p0, v0
return-void
.end method
.method public static showOnMap(Landroid/content/Context;DD)V
.registers 13
:try_start_0
const-string/jumbo v5, "http://maps.google.com/maps?f=q&q=(%f,%f)"
invoke-static {v5, p1, p2, p3, p4}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
move-result-object v3
new-instance v0, Landroid/content/ComponentName;
const-string/jumbo v5, "com.google.android.apps.maps"
const-string/jumbo v6, "com.google.android.maps.MapsActivity"
invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
new-instance v5, Landroid/content/Intent;
const-string/jumbo v6, "android.intent.action.VIEW"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_25
:try_end_25
.catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_25} :catch_26
return-void
:catch_26
move-exception v1
const-string/jumbo v5, "GalleryUtils"
const-string/jumbo v6, "GMM activity not found!"
invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-string/jumbo v5, "geo:%f,%f"
invoke-static {v5, p1, p2, p3, p4}, Lcom/pinguo/camera360/gallery/util/AlbumUtils;->formatLatitudeLongitude(Ljava/lang/String;DD)Ljava/lang/String;
move-result-object v4
new-instance v2, Landroid/content/Intent;
const-string/jumbo v5, "android.intent.action.VIEW"
invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v6
invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_25
.end method
.method public static startCameraActivity(Landroid/content/Context;)V
.registers 4
new-instance v1, Landroid/content/Intent;
const-string/jumbo v2, "android.media.action.STILL_IMAGE_CAMERA"
invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v2, 0x1400
invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public static toMile(D)D
.registers 4
const-wide v0, 0x4099240000000000L
div-double v0, p0, v0
return-wide v0
.end method