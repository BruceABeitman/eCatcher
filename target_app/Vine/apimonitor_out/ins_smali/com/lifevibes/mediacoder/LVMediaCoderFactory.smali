.class public Lcom/lifevibes/mediacoder/LVMediaCoderFactory;
.super Ljava/lang/Object;
.source "LVMediaCoderFactory.java"
.field private static final TAG:Ljava/lang/String; = "LVMediaCoderFactory"
.field private static inputAudioFile:Ljava/io/File;
.field private static inputVideoFile:Ljava/io/File;
.field private static mLogFile:Ljava/io/File;
.field private static mPrintLogStream:Ljava/io/PrintStream;
.field private static mUnsupportedColorFormat:Ljava/lang/String;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static checkColorFormat()Z
.registers 15
const/4 v12, 0x0
const/4 v8, 0x0
sget-boolean v13, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz v13, :cond_47
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
:goto_b
const/4 v6, 0x0
:goto_c
invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I
move-result v13
if-ge v6, v13, :cond_ac
invoke-static {v6}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
move-result-object v2
sget-boolean v13, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz v13, :cond_3e
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "[LVMediaCoderFactory] Encoder "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, ": "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v13, v12}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
:cond_3e
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->isEncoder()Z
move-result v13
if-nez v13, :cond_49
:cond_44
:goto_44
add-int/lit8 v6, v6, 0x1
goto :goto_c
:cond_47
const/4 v5, 0x0
goto :goto_b
:cond_49
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;
move-result-object v10
move-object v0, v10
array-length v9, v0
const/4 v7, 0x0
:goto_50
if-ge v7, v9, :cond_44
aget-object v11, v0, v7
const-string v13, "avc"
invoke-virtual {v11, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v13
if-eqz v13, :cond_a9
sget-boolean v13, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz v13, :cond_a7
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "[LVMediaCoderFactory] Encoder "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, "/"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I
move-result v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, ": "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v2}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, " supports ["
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, "]"
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v13, v12}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
if-eqz v5, :cond_a7
invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_a7
move v8, v6
goto :goto_44
:cond_a9
add-int/lit8 v7, v7, 0x1
goto :goto_50
:cond_ac
invoke-static {v8}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;
move-result-object v13
const-string v14, "video/avc"
invoke-virtual {v13, v14}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;
move-result-object v1
sget-boolean v13, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz v13, :cond_db
iget-object v0, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I
array-length v9, v0
const/4 v7, 0x0
:goto_be
if-ge v7, v9, :cond_db
aget v3, v0, v7
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v14, "[LVMediaCoderFactory] Color Format: "
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v13, v12}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
add-int/lit8 v7, v7, 0x1
goto :goto_be
:cond_db
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
const/4 v6, 0x0
:goto_e1
iget-object v13, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I
array-length v13, v13
if-ge v6, v13, :cond_f4
iget-object v13, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->colorFormats:[I
aget v13, v13, v6
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v6, v6, 0x1
goto :goto_e1
:cond_f4
const/16 v13, 0x13
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_131
const/16 v13, 0x14
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_131
const/16 v13, 0x15
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_131
const/16 v13, 0x27
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v13
if-nez v13, :cond_131
const v13, 0x7f000100
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-virtual {v4, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v13
if-eqz v13, :cond_133
:cond_131
const/4 v12, 0x1
:goto_132
return v12
:cond_133
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v13
const-string v14, ""
invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
sput-object v13, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mUnsupportedColorFormat:Ljava/lang/String;
goto :goto_132
.end method
.method public static create(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)Lcom/lifevibes/mediacoder/LVMediaCoderImpl;
.registers 5
sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v0, :cond_2b
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "/Twitter/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v0
if-nez v0, :cond_2b
const-string v0, "Logs may not be working."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
:cond_2b
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xf
if-gt v0, v1, :cond_3d
const/4 v0, 0x1
sput-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;->isRunningOnICS:Z
:cond_34
invoke-static {p1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->validateConfiguration(Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V
new-instance v0, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;
invoke-direct {v0, p0, p1}, Lcom/lifevibes/mediacoder/LVMediaCoderImpl;-><init>(Landroid/content/Context;Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V
return-object v0
:cond_3d
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->checkColorFormat()Z
move-result v0
if-nez v0, :cond_34
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Currently color format "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mUnsupportedColorFormat:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is NOT supported"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method static dumpInputAudioData([B)V
.registers 5
sget-boolean v2, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z
if-nez v2, :cond_9
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
if-nez v2, :cond_9
:goto_8
return-void
:cond_9
:try_start_9
new-instance v1, Ljava/io/FileOutputStream;
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1b
goto :goto_8
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_8
.end method
.method static dumpInputVideoData([B)V
.registers 5
sget-boolean v2, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z
if-nez v2, :cond_9
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
if-nez v2, :cond_9
:goto_8
return-void
:cond_9
:try_start_9
new-instance v1, Ljava/io/FileOutputStream;
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_1a
.catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_1b
goto :goto_8
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_8
.end method
.method static printLog(Ljava/lang/String;Z)V
.registers 5
sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
if-eqz v0, :cond_15
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
if-eqz v0, :cond_15
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_1d
:cond_15
const-string v0, "LVMediaCoderFactory"
const-string v1, "Exception while writing to the log file."
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_4
:cond_1d
const-string v0, "LVMediaCoderFactory"
const-string v1, "[LVMediaCoderFactory] "
const-string v2, ""
invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
if-eqz p1, :cond_38
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
const-string v1, "======================= EXCEPTION [START] ======================="
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
:cond_38
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
if-eqz p1, :cond_4
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
const-string v1, "======================== EXCEPTION [END] ========================"
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
goto :goto_4
.end method
.method public static setDumpingEnabled(Z)V
.registers 3
sput-boolean p0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DUMPS:Z
if-eqz p0, :cond_4c
new-instance v0, Ljava/io/File;
const-string v1, "/mnt/sdcard/Twitter/"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdir()Z
new-instance v0, Ljava/io/File;
const-string v1, "/mnt/sdcard/Twitter/Twitter_Input_Video.raw"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "/mnt/sdcard/Twitter/Twitter_Input_Audio.raw"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2d
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_2d
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_3a
sget-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:cond_3a
new-instance v0, Ljava/io/File;
const-string v1, "/mnt/sdcard/Twitter/Twitter_Input_Video.raw"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputVideoFile:Ljava/io/File;
new-instance v0, Ljava/io/File;
const-string v1, "/mnt/sdcard/Twitter/Twitter_Input_Audio.raw"
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->inputAudioFile:Ljava/io/File;
:cond_4c
return-void
.end method
.method public static setLoggingEnabled(Z)V
.registers 4
sput-boolean p0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz p0, :cond_36
new-instance v1, Ljava/io/File;
const-string v2, "/mnt/sdcard/Twitter/"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
new-instance v1, Ljava/io/File;
const-string v2, "/mnt/sdcard/Twitter/LVMediaCoderLog.txt"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
sget-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_24
sget-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
invoke-virtual {v1}, Ljava/io/File;->delete()Z
:cond_24
new-instance v1, Ljava/io/File;
const-string v2, "/mnt/sdcard/Twitter/LVMediaCoderLog.txt"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
:try_start_2d
new-instance v1, Ljava/io/PrintStream;
sget-object v2, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mLogFile:Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/File;)V
sput-object v1, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->mPrintLogStream:Ljava/io/PrintStream;
:goto_36
:cond_36
:try_end_36
.catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_36} :catch_37
return-void
:catch_37
move-exception v0
invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
goto :goto_36
.end method
.method private static validateConfiguration(Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;)V
.registers 4
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "Configuration is null."
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sget-boolean v0, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->DEBUG:Z
if-eqz v0, :cond_63
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "[LVMediaCoderFactory] Session configuration:\n\t\t\t\t Video BitRate:\t\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n\t\t\t\t Video Frame Rate:\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n\t\t\t\t Video I-Frame Int:\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoIFrameInterval:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n\t\t\t\t Audio Bit Rate:\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n\t\t\t\t Audio Channels:\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\n\t\t\t\t Audio Sample Rate:\t"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/lifevibes/mediacoder/LVMediaCoderFactory;->printLog(Ljava/lang/String;Z)V
:cond_63
iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoIFrameInterval:I
if-gtz v0, :cond_6f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Video IFrame interval should be greater than 0."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6f
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedVideoBitrates()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoBitRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " video bit-rate is not supported. Use LVMediaCoderProperties.getSupportedBitrates() to get the list of supported video bit-rates."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_9a
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedHeightAndWidth()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ba
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedHeightAndWidth()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_e7
:cond_ba
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Video resolution: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not supported. Please use LVMediaCoderProperties.getSupportedHeightAndWidth() to get the list of supported Heights and Widths."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e7
iget v0, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I
if-eq v0, v1, :cond_11a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Video resolution: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoWidth:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "x"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoHeight:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not supported. Currenly only aspect ratio of 1:1 is supported."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_11a
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedFrameRates()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_145
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->videoFrameRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " frame-rate is not supported. Use LVMediaCoderProperties.getSupportedFrameRates() to get the list of supported frame-rates."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_145
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedAudioBitrates()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_170
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioBitRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " audio bit-rate is not supported. Use LVMediaCoderProperties.getSupportedBitrates() to get the list of supported audio bit-rates."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_170
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedChannelCounts()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_19b
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioChannelCount:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " audio channel count is not supported. Use LVMediaCoderProperties.getSupportedChannelCounts() to get the list of supported audio channel counts."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_19b
invoke-static {}, Lcom/lifevibes/mediacoder/LVMediaCoderProperties;->getSupportedSampleRates()Ljava/util/ArrayList;
move-result-object v0
iget v1, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1c6
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget v2, p0, Lcom/lifevibes/mediacoder/LVMediaCoderConfiguration;->audioSampleRate:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " audio sample rate is not supported. Use LVMediaCoderProperties.getSupportedSampleRates()to get the list of supported audio sample rates."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1c6
return-void
.end method