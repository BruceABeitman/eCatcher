.class public Lco/vine/android/recorder/RecordConfigUtils;
.super Ljava/lang/Object;
.source "RecordConfigUtils.java"
.field public static final AUDIO_BIT_RATE:I = 0x0
.field public static final AUDIO_BUFFER_SIZE:I = 0x0
.field public static final AUDIO_FORMAT:I = 0x10
.field public static final AUDIO_RUNNABLE_SAMPLE_SIZE:I = 0x0
.field public static final AUDIO_SAMPLE_PER_MS_MAX:I = 0x30
.field public static final AUDIO_SAMPLE_PER_NS_EXACT:D = 0.0441
.field public static final AUDIO_SAMPLE_RATE_HZ:I = 0xac44
.field private static DCIM:Ljava/lang/String; = null
.field public static final DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config; = null
.field public static final DEFAULT_TARGET_SIZE:I = 0x1e0
.field public static final FOLDER_ROOT_DIRECT_UPLOAD:Ljava/io/File; = null
.field public static final FOLDER_ROOT_PROCESS:Ljava/lang/String; = "process"
.field private static final FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File; = null
.field private static final FOLDER_ROOT_SAVE:Ljava/lang/String; = null
.field public static final FOLDER_ROOT_TO_UPLOAD:Ljava/lang/String; = "upload"
.field public static final HIGHEST_PROFILE:I = 0x4
.field public static final HW_ENABLED:Z = false
.field public static final MAX_DRAFTS:I = 0x9
.field public static final N_AUDIO_CHANNELS:I = 0x1
.field public static final N_IMAGE_CHANNELS:I = 0x4
.field public static final PREF_CAN_LOAD:Ljava/lang/String; = "canLoad"
.field public static final PROGRESS_THRESHOLD_MESSAGING:I = 0x42
.field public static final PROGRESS_THRESHOLD_REGULAR:I = 0x3e8
.field public static final PROGRESS_TIMER_SLEEP:I = 0x23
.field public static final SW_ENABLED:Z = false
.field public static final THUMBNAIL_MODE_MEDIA_UTILS:Z = false
.field public static final THUMBNAIL_MODE_OPENCV:Z = true
.field private static final UPLOAD_IMAGE_EXTENSION:Ljava/lang/String; = "_image"
.field public static final VIDEO_BIT_RATE:I
.field public static final VIDEO_CONTAINER_EXT:Ljava/lang/String;
.field private static sEncoderConfig:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
.field private static sGenericConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
.method static constructor <clinit>()V
.registers 4
const-string v1, "sw"
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, "hw"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
sput-boolean v1, Lco/vine/android/recorder/RecordConfigUtils;->HW_ENABLED:Z
const-string v1, "sw"
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
const-string v2, "sw"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
sput-boolean v1, Lco/vine/android/recorder/RecordConfigUtils;->SW_ENABLED:Z
sget-object v1, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
iget-boolean v1, v1, Lco/vine/android/recorder/RecordSessionVersion;->willEventuallyTranscoded:Z
if-eqz v1, :cond_8f
const v1, 0x1e8480
:goto_25
sput v1, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_BIT_RATE:I
sget-object v1, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
iget-boolean v1, v1, Lco/vine/android/recorder/RecordSessionVersion;->willEventuallyTranscoded:Z
if-eqz v1, :cond_93
const v1, 0x1f400
:goto_30
sput v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BIT_RATE:I
const v1, 0xac44
const/16 v2, 0x10
const/4 v3, 0x2
invoke-static {v1, v2, v3}, Landroid/media/AudioRecord;->getMinBufferSize(III)I
move-result v1
sput v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I
sget v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I
if-lez v1, :cond_97
sget v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_BUFFER_SIZE:I
:goto_44
sput v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_RUNNABLE_SAMPLE_SIZE:I
sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;
sget-object v1, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
iget-object v1, v1, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_CONTAINER_EXT:Ljava/lang/String;
:try_start_50
sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DCIM:Ljava/lang/String;
:goto_54
:try_end_54
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_54} :catch_9a
new-instance v1, Ljava/io/File;
sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DCIM:Ljava/lang/String;
invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
const-string v3, "Vine"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v1
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_SAVE:Ljava/lang/String;
new-instance v1, Ljava/io/File;
sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DCIM:Ljava/lang/String;
invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
const-string v3, "vine_capture"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File;
new-instance v1, Ljava/io/File;
sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->DCIM:Ljava/lang/String;
invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v2
const-string v3, "vine_upload"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_DIRECT_UPLOAD:Ljava/io/File;
sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v1, :cond_8e
sget-object v1, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_DIRECT_UPLOAD:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
:cond_8e
return-void
:cond_8f
const v1, 0xf4240
goto :goto_25
:cond_93
const v1, 0xfa00
goto :goto_30
:cond_97
const/16 v1, 0x1e00
goto :goto_44
:catch_9a
move-exception v0
const-string v1, "DCIM"
sput-object v1, Lco/vine/android/recorder/RecordConfigUtils;->DCIM:Ljava/lang/String;
goto :goto_54
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Ljava/io/File;
.registers 1
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_PROCESS_DEBUG:Ljava/io/File;
return-object v0
.end method
.method public static copyForUpload(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.registers 5
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {p0, p2}, Lco/vine/android/recorder/RecordConfigUtils;->getUploadFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
move-result-object v1
invoke-static {v0, v1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
return-object v1
.end method
.method public static copySilently(Ljava/io/File;Ljava/io/File;)Z
.registers 4
:try_start_0
invoke-static {p0, p1}, Lorg/apache/commons/io/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)V
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
const/4 v1, 0x1
:goto_4
return v1
:catch_5
move-exception v0
const-string v1, "Failed to copy"
invoke-static {v1, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_4
.end method
.method public static createAudioArray(Lco/vine/android/recorder/AudioArray$AudioArrayType;)Lco/vine/android/recorder/AudioArray;
.registers 3
new-instance v0, Lco/vine/android/recorder/AudioArray;
sget v1, Lco/vine/android/recorder/RecordConfigUtils;->AUDIO_RUNNABLE_SAMPLE_SIZE:I
invoke-direct {v0, v1, p0}, Lco/vine/android/recorder/AudioArray;-><init>(ILco/vine/android/recorder/AudioArray$AudioArrayType;)V
return-object v0
.end method
.method public static createDefaultSizeBitmap()Landroid/graphics/Bitmap;
.registers 2
const/16 v1, 0x1e0
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->DEFAULT_BITMAP_CONFIG:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public static deleteNonFolders(Ljava/io/File;)V
.registers 6
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v4
if-eqz v4, :cond_16
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v0
array-length v3, v0
const/4 v2, 0x0
:goto_c
if-ge v2, v3, :cond_16
aget-object v1, v0, v2
invoke-static {v1}, Lco/vine/android/recorder/RecordConfigUtils;->deleteNonFolders(Ljava/io/File;)V
add-int/lit8 v2, v2, 0x1
goto :goto_c
:cond_16
return-void
.end method
.method public static deletePreProcess(Ljava/io/File;)V
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "process"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->deleteNonFolders(Ljava/io/File;)V
return-void
.end method
.method public static declared-synchronized getCameraRollFile(Landroid/content/Context;JLjava/lang/String;)Ljava/io/File;
.registers 16
const-class v11, Lco/vine/android/recorder/RecordConfigUtils;
monitor-enter v11
const/4 v9, 0x0
:try_start_4
const-string v0, "mounted"
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1d
new-instance v10, Ljava/io/File;
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->FOLDER_ROOT_SAVE:Ljava/lang/String;
invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_68
move-object v9, v10
:cond_18
:goto_18
if-nez v9, :cond_6b
const/4 v0, 0x0
:goto_1b
monitor-exit v11
return-object v0
:cond_1d
const/4 v0, 0x3
:try_start_1e
new-array v2, v0, [Ljava/lang/String;
const/4 v0, 0x0
const-string v1, "_id"
aput-object v1, v2, v0
const/4 v0, 0x1
const-string v1, "_data"
aput-object v1, v2, v0
const/4 v0, 0x2
const-string v1, "datetaken"
aput-object v1, v2, v0
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;
const/4 v3, 0x0
const/4 v4, 0x0
const-string v5, "datetaken DESC"
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_18
invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-eqz v0, :cond_18
new-instance v10, Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "_data"
invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
move-result v1
invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;
move-result-object v0
const-string v1, "Vine"
invoke-direct {v10, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_5f
.catchall {:try_start_1e .. :try_end_5f} :catchall_68
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_5f} :catch_61
move-object v9, v10
goto :goto_18
:catch_61
move-exception v7
:try_start_62
const-string v0, "Failed to get internal path"
invoke-static {v0, v7}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_67
.catchall {:try_start_62 .. :try_end_67} :catchall_68
goto :goto_18
:catchall_68
move-exception v0
monitor-exit v11
throw v0
:cond_6b
:try_start_6b
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_88
invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z
move-result v0
if-nez v0, :cond_88
const-string v0, "Failed to make dirs."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Failed to make directories. You will be doomed."
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_1b
:cond_88
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "yyyy_MM_dd_HH_mm_sss"
invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v3, "."
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_c1
.catchall {:try_start_6b .. :try_end_c1} :catchall_68
goto/16 :goto_1b
.end method
.method public static getEncoderConfiguration()Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
.registers 1
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sEncoderConfig:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
if-nez v0, :cond_b
new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
invoke-direct {v0}, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;-><init>()V
sput-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sEncoderConfig:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
:cond_b
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sEncoderConfig:Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;
return-object v0
.end method
.method public static getFrameInfoPath(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".info"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getGenericConfig(Landroid/content/Context;)Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
.registers 2
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sGenericConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
if-nez v0, :cond_b
new-instance v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
invoke-direct {v0, p0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V
sput-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sGenericConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
:cond_b
sget-object v0, Lco/vine/android/recorder/RecordConfigUtils;->sGenericConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
return-object v0
.end method
.method public static getMaxAudioBufferSize(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)I
.registers 5
iget v0, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
mul-int/lit8 v0, v0, 0x30
int-to-double v0, v0
const-wide v2, 0x3ff199999999999aL
mul-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method public static declared-synchronized getPreProcessFile(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.registers 6
const-class v1, Lco/vine/android/recorder/RecordConfigUtils;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->processDir:Ljava/io/File;
invoke-static {v0, p1, p2, p3}, Lco/vine/android/recorder/RecordConfigUtils;->getPreProcessFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
:try_end_8
.catchall {:try_start_3 .. :try_end_8} :catchall_b
move-result-object v0
monitor-exit v1
return-object v0
:catchall_b
move-exception v0
monitor-exit v1
throw v0
.end method
.method public static declared-synchronized getPreProcessFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
.registers 10
const-class v2, Lco/vine/android/recorder/RecordConfigUtils;
monitor-enter v2
:try_start_3
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/io/File;
const-string v3, "process"
invoke-direct {v1, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_2b
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_2b
const-string v1, "Failed to make dirs."
invoke-static {v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v1, Ljava/lang/RuntimeException;
const-string v3, "Failed to make directories. You will be doomed."
invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_28
:try_end_28
.catchall {:try_start_3 .. :try_end_28} :catchall_28
move-exception v1
monitor-exit v2
throw v1
:try_start_2b
:cond_2b
new-instance v3, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-eqz p3, :cond_66
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "."
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:goto_59
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:try_end_64
.catchall {:try_start_2b .. :try_end_64} :catchall_28
monitor-exit v2
return-object v3
:cond_66
:try_start_66
const-string v1, ""
:try_end_68
.catchall {:try_start_66 .. :try_end_68} :catchall_28
goto :goto_59
.end method
.method public static getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_image"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getTimeStampInNsFromSampleCounted(I)I
.registers 5
int-to-double v0, p0
const-wide v2, 0x3fa694467381d7dcL
div-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method private static declared-synchronized getUploadFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
.registers 6
const-class v2, Lco/vine/android/recorder/RecordConfigUtils;
monitor-enter v2
:try_start_3
new-instance v0, Ljava/io/File;
const-string v1, "upload"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_26
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_26
const-string v1, "Failed to make dirs: {},"
invoke-static {v1, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
new-instance v1, Ljava/lang/RuntimeException;
const-string v3, "Failed to make directories. You will be doomed."
invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:catchall_23
:try_end_23
.catchall {:try_start_3 .. :try_end_23} :catchall_23
move-exception v1
monitor-exit v2
throw v1
:cond_26
:try_start_26
new-instance v1, Ljava/io/File;
invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:try_end_2b
.catchall {:try_start_26 .. :try_end_2b} :catchall_23
monitor-exit v2
return-object v1
.end method
.method public static getVideoBufferMax(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)I
.registers 5
sget v0, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_BIT_RATE:I
int-to-double v0, v0
const-wide v2, 0x3ff199999999999aL
mul-double/2addr v0, v2
iget v2, p0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
int-to-double v2, v2
mul-double/2addr v0, v2
const-wide v2, 0x408f400000000000L
div-double/2addr v0, v2
double-to-int v0, v0
return v0
.end method
.method public static isDefaultFrontFacing()Z
.registers 1
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static isFastEncoding(Z)Z
.registers 3
if-eqz p0, :cond_a
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static loadWasEverSuccessful(Landroid/content/Context;)Z
.registers 5
const/4 v3, 0x0
const-class v2, Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
const-string v2, "canLoad"
invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v2
return v2
.end method
.method public static newVideoRecorder(Landroid/content/Context;Ljava/lang/String;I)Lco/vine/android/recorder/HwVineFrameRecorder;
.registers 4
new-instance v0, Lco/vine/android/recorder/HwVineFrameRecorder;
invoke-direct {v0, p0, p1, p2}, Lco/vine/android/recorder/HwVineFrameRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;I)V
return-object v0
.end method
.method public static newVideoRecorder(Ljava/lang/String;IILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Z)Lco/vine/android/recorder/SwVineFrameRecorder;
.registers 13
new-instance v0, Lco/vine/android/recorder/SwVineFrameRecorder;
const/4 v4, 0x1
move-object v1, p0
move v2, p2
move v3, p2
move-object v5, p3
move-object v6, p4
invoke-direct/range {v0 .. v6}, Lco/vine/android/recorder/SwVineFrameRecorder;-><init>(Ljava/lang/String;IIILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;)V
if-eqz p5, :cond_28
const/16 v1, 0xd
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setVideoCodec(I)V
const v1, 0x15002
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setAudioCodec(I)V
const-string v1, "mp4"
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFormat(Ljava/lang/String;)V
:goto_1d
const v1, 0xac44
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setSampleRate(I)V
int-to-double v1, p1
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFrameRate(D)V
return-object v0
:cond_28
const-string v1, "libvorbis"
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setAudioCodecName(Ljava/lang/String;)V
const-string v1, "libvpx"
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setVideoCodecName(Ljava/lang/String;)V
const-string v1, "webm"
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SwVineFrameRecorder;->setFormat(Ljava/lang/String;)V
goto :goto_1d
.end method
.method public static newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;
.registers 10
const/4 v3, 0x0
move-object v0, p0
move v1, p1
move v2, p2
move-object v4, v3
move v5, p3
invoke-static/range {v0 .. v5}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Z)Lco/vine/android/recorder/SwVineFrameRecorder;
move-result-object v0
return-object v0
.end method
.method public static setLoadWasEverSuccessful(Landroid/content/Context;Z)V
.registers 4
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
const-class v0, Lco/vine/android/recorder/SwVineFrameRecorder;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v0
const-string v1, "canLoad"
invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
goto :goto_2
.end method