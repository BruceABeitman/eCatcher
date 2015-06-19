.class public Lco/vine/android/recorder/RecordSessionManager;
.super Ljava/lang/Object;
.source "RecordSessionManager.java"
.field public static DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion; = null
.field private static final REQUIRED_SPACE_LIMIT:I = 0x1400000
.field private static final sDeletedSessions:Ljava/util/HashSet;
.field private final mDir:Ljava/io/File;
.field private final mVersion:Lco/vine/android/recorder/RecordSessionVersion;
.method static constructor <clinit>()V
.registers 2
sget-object v0, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;
sput-object v0, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;
if-ne v0, v1, :cond_16
sget-boolean v0, Lco/vine/android/recorder/RecordConfigUtils;->HW_ENABLED:Z
if-nez v0, :cond_16
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Invalidate version type, HW Encoding is off."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;
if-eq v0, v1, :cond_28
sget-boolean v0, Lco/vine/android/recorder/RecordConfigUtils;->SW_ENABLED:Z
if-nez v0, :cond_28
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Invalidate version type, HW Encoding is on."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_28
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
sput-object v0, Lco/vine/android/recorder/RecordSessionManager;->sDeletedSessions:Ljava/util/HashSet;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lco/vine/android/recorder/RecordSessionManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
const/4 v2, 0x0
const/4 v3, 0x0
:try_start_7
invoke-virtual {p1, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;
:try_end_a
.catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_a} :catch_5e
move-result-object v2
:goto_b
if-nez v2, :cond_16
const-string v3, "Failed to create drafts in external folder."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
:cond_16
new-instance v3, Ljava/io/File;
iget-object v4, p2, Lco/vine/android/recorder/RecordSessionVersion;->folder:Ljava/lang/String;
invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
iput-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
iget-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_34
iget-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v3
if-nez v3, :cond_34
iget-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V
:cond_34
iget-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
:try_start_39
iget-object v3, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getFreeSpace()J
move-result-wide v0
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-lez v3, :cond_54
const-wide/32 v3, 0x1400000
cmp-long v3, v0, v3
if-gez v3, :cond_54
new-instance v3, Lco/vine/android/recorder/RecordSessionManager$NotEnoughSpaceException;
invoke-direct {v3}, Lco/vine/android/recorder/RecordSessionManager$NotEnoughSpaceException;-><init>()V
throw v3
:catch_52
move-exception v3
:goto_53
return-void
:cond_54
const-string v3, "free space left: {}."
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_5d
.catch Ljava/lang/SecurityException; {:try_start_39 .. :try_end_5d} :catch_52
goto :goto_53
:catch_5e
move-exception v3
goto :goto_b
.end method
.method public static deleteSession(Ljava/io/File;Ljava/lang/String;)V
.registers 5
const-string v0, "Session deleted: {}, {}."
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p0, v1, v2
invoke-static {v0, v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->sDeletedSessions:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->size()I
move-result v0
const/16 v1, 0xa
if-le v0, v1, :cond_1d
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->sDeletedSessions:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
:cond_1d
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->sDeletedSessions:Ljava/util/HashSet;
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
return-void
.end method
.method public static getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;
.registers 2
.parameter
.end parameter
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->DEFAULT_VERSION:Lco/vine/android/recorder/RecordSessionVersion;
return-object v0
.end method
.method public static getDataFile(Ljava/io/File;Z)Ljava/io/File;
.registers 4
new-instance v1, Ljava/io/File;
if-eqz p1, :cond_a
const-string v0, "data.bin"
:goto_6
invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v1
:cond_a
const-string v0, "data.temp"
goto :goto_6
.end method
.method public static getFrameInfoFile(Ljava/io/File;)Ljava/io/File;
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "frame.info"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v0
.end method
.method public static getMetaFile(Ljava/io/File;)Ljava/io/File;
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "meta.bin"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
return-object v0
.end method
.method public static getNumberOfValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)I
.registers 4
invoke-static {p0, p1}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_b
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
:goto_a
return v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method public static getPreviewThumbnailPath(Ljava/io/File;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "preview.jpg"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getPreviewVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "preview"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getSegmentThumbnailPath(Ljava/io/File;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "segment.jpg"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getSegmentVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;
.registers 6
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "segment_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getThumbnailPath(Ljava/io/File;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/io/File;
const-string v1, "thumbnail.jpg"
invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getValidSessions(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)Ljava/util/ArrayList;
.registers 3
invoke-virtual {p1, p0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
move-result-object v0
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions()Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public static getVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;
.registers 5
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "video"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static isSessionSaved(Ljava/io/File;)Z
.registers 3
const/4 v0, 0x1
invoke-static {p0}, Lco/vine/android/recorder/RecordSessionManager;->getMetaFile(Ljava/io/File;)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_16
invoke-static {p0, v0}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v1
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_16
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static readDataObject(Ljava/io/File;)Lco/vine/android/recorder/RecordSession;
.registers 2
const/4 v0, 0x1
invoke-static {p0, v0}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->readObject(Ljava/io/File;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/RecordSession;
return-object v0
.end method
.method public static readMetaObject(Ljava/io/File;)Lco/vine/android/recorder/RecordSessionMeta;
.registers 2
invoke-static {p0}, Lco/vine/android/recorder/RecordSessionManager;->getMetaFile(Ljava/io/File;)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->readObject(Ljava/io/File;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/recorder/RecordSessionMeta;
return-object v0
.end method
.method private static readObject(Ljava/io/File;)Ljava/lang/Object;
.registers 9
:try_start_0
invoke-virtual {p0}, Ljava/io/File;->exists()Z
move-result v5
if-nez v5, :cond_2c
new-instance v5, Ljava/io/FileNotFoundException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "File not found: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V
throw v5
:catch_23
:try_end_23
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_23
move-exception v2
new-instance v5, Ljava/io/IOException;
const-string v6, "Invalid file found."
invoke-direct {v5, v6, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v5
:try_start_2c
:cond_2c
new-instance v3, Ljava/io/FileInputStream;
invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
new-instance v0, Ljava/io/BufferedInputStream;
invoke-direct {v0, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_36
.catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_36} :catch_23
:try_start_36
new-instance v4, Ljava/io/ObjectInputStream;
invoke-direct {v4, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_3b
.catch Ljava/io/EOFException; {:try_start_36 .. :try_end_3b} :catch_48
.catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_3b} :catch_23
:try_start_3b
invoke-interface {v4}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
:try_end_3e
.catchall {:try_start_3b .. :try_end_3e} :catchall_43
move-result-object v5
:try_start_3f
invoke-interface {v4}, Ljava/io/ObjectInput;->close()V
return-object v5
:catchall_43
move-exception v5
invoke-interface {v4}, Ljava/io/ObjectInput;->close()V
throw v5
:catch_48
:try_end_48
.catch Ljava/io/EOFException; {:try_start_3f .. :try_end_48} :catch_48
.catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_48} :catch_23
move-exception v1
:try_start_49
const-string v5, "Failed to read a corrupted file."
invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V
invoke-static {p0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
throw v1
:try_end_52
.catch Ljava/lang/ClassNotFoundException; {:try_start_49 .. :try_end_52} :catch_23
.end method
.method public static wasSessionJustDeleted(Ljava/io/File;)Z
.registers 3
sget-object v0, Lco/vine/android/recorder/RecordSessionManager;->sDeletedSessions:Ljava/util/HashSet;
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private static writeData(Ljava/io/File;Lco/vine/android/recorder/RecordSession;Z)V
.registers 4
invoke-static {p0, p2}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
invoke-static {v0, p1}, Lco/vine/android/recorder/RecordSessionManager;->writeObject(Ljava/io/File;Ljava/lang/Object;)V
if-eqz p2, :cond_11
const/4 v0, 0x0
invoke-static {p0, v0}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
:cond_11
return-void
.end method
.method private static writeMeta(Ljava/io/File;Lco/vine/android/recorder/RecordSessionMeta;)V
.registers 3
invoke-static {p0}, Lco/vine/android/recorder/RecordSessionManager;->getMetaFile(Ljava/io/File;)Ljava/io/File;
move-result-object v0
invoke-static {v0, p1}, Lco/vine/android/recorder/RecordSessionManager;->writeObject(Ljava/io/File;Ljava/lang/Object;)V
return-void
.end method
.method private static writeObject(Ljava/io/File;Ljava/lang/Object;)V
.registers 9
const/4 v5, 0x1
const/4 v6, 0x0
const-string v3, "Writing: {}."
new-array v4, v5, [Ljava/lang/Object;
aput-object p0, v4, v6
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-static {p0}, Lco/vine/android/util/SystemUtil;->quietlyEnsureParentExists(Ljava/io/File;)V
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
new-instance v0, Ljava/io/BufferedOutputStream;
invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v2, Ljava/io/ObjectOutputStream;
invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
:try_start_1d
invoke-interface {v2, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
:try_end_20
.catchall {:try_start_1d .. :try_end_20} :catchall_2d
invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V
const-string v3, "Closed: {}."
new-array v4, v5, [Ljava/lang/Object;
aput-object p0, v4, v6
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
:catchall_2d
move-exception v3
invoke-interface {v2}, Ljava/io/ObjectOutput;->close()V
const-string v4, "Closed: {}."
new-array v5, v5, [Ljava/lang/Object;
aput-object p0, v5, v6
invoke-static {v4, v5}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
throw v3
.end method
.method public static writeRecordingFile(Lco/vine/android/recorder/RecordingFile;Z)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v1
invoke-static {v0, v1, p1}, Lco/vine/android/recorder/RecordSessionManager;->writeRecordingFile(Ljava/io/File;Lco/vine/android/recorder/RecordSession;Z)V
return-void
.end method
.method public static writeRecordingFile(Ljava/io/File;Lco/vine/android/recorder/RecordSession;Z)V
.registers 5
invoke-static {p0, p1, p2}, Lco/vine/android/recorder/RecordSessionManager;->writeData(Ljava/io/File;Lco/vine/android/recorder/RecordSession;Z)V
if-eqz p2, :cond_1f
new-instance v0, Lco/vine/android/recorder/RecordSessionMeta;
invoke-virtual {p1}, Lco/vine/android/recorder/RecordSession;->getAudioDataCount()I
move-result v1
invoke-static {v1}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I
move-result v1
div-int/lit16 v1, v1, 0x3e8
invoke-direct {v0, v1}, Lco/vine/android/recorder/RecordSessionMeta;-><init>(I)V
invoke-static {p0, v0}, Lco/vine/android/recorder/RecordSessionManager;->writeMeta(Ljava/io/File;Lco/vine/android/recorder/RecordSessionMeta;)V
const/4 v0, 0x0
invoke-static {p0, v0}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
:cond_1f
return-void
.end method
.method public cleanUnusedFolders()V
.registers 15
const/4 v4, 0x0
iget-object v12, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v10
if-eqz v10, :cond_56
move-object v0, v10
array-length v8, v0
const/4 v5, 0x0
move v6, v5
:goto_d
if-ge v6, v8, :cond_56
aget-object v3, v0, v6
invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z
move-result v12
if-eqz v12, :cond_25
invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v11
if-eqz v11, :cond_25
array-length v12, v11
if-nez v12, :cond_29
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
add-int/lit8 v4, v4, 0x1
:goto_25
:cond_25
add-int/lit8 v5, v6, 0x1
move v6, v5
goto :goto_d
:cond_29
array-length v7, v11
move-object v1, v11
array-length v9, v1
const/4 v5, 0x0
:goto_2d
if-ge v5, v9, :cond_4e
aget-object v2, v1, v5
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v12
const-string v13, ".mp4"
invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v12
if-nez v12, :cond_49
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v12
const-string v13, ".mkv"
invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v12
if-eqz v12, :cond_4b
:cond_49
add-int/lit8 v7, v7, -0x1
:cond_4b
add-int/lit8 v5, v5, 0x1
goto :goto_2d
:cond_4e
if-nez v7, :cond_53
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
:cond_53
add-int/lit8 v4, v4, 0x1
goto :goto_25
:cond_56
const-string v12, "{} empty folders deleted."
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-static {v12, v13}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public createFolderForSession()Ljava/io/File;
.registers 5
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
invoke-static {v0}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
return-object v0
.end method
.method public getCrashedSession()Ljava/util/HashMap;
.registers 8
invoke-virtual {p0}, Lco/vine/android/recorder/RecordSessionManager;->getFolders()Ljava/util/ArrayList;
move-result-object v3
invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_8
:goto_8
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_35
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/io/File;
const/4 v6, 0x0
invoke-static {v2, v6}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_8
:try_start_1f
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->readObject(Ljava/io/File;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/recorder/RecordSession;
invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_2d
:try_end_2d
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_2d} :catch_2e
return-object v5
:catch_2e
move-exception v1
const-string v6, "Failed to read session object."
invoke-static {v6, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8
:cond_35
const/4 v5, 0x0
goto :goto_2d
.end method
.method public getFolderFromName(Ljava/lang/String;)Ljava/io/File;
.registers 4
if-eqz p1, :cond_a
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
:goto_9
return-object v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public getFolders()Ljava/util/ArrayList;
.registers 16
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v13, p0, Lco/vine/android/recorder/RecordSessionManager;->mDir:Ljava/io/File;
invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v11
if-nez v11, :cond_15
new-instance v13, Ljava/io/IOException;
const-string v14, "This should never happen."
invoke-direct {v13, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v13
:cond_15
move-object v0, v11
array-length v9, v0
const/4 v7, 0x0
move v8, v7
:goto_19
if-ge v8, v9, :cond_4f
aget-object v4, v0, v8
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v13
if-eqz v13, :cond_48
invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v3
if-eqz v3, :cond_48
const/4 v6, 0x0
move-object v1, v3
array-length v10, v1
const/4 v7, 0x0
:goto_2d
if-ge v7, v10, :cond_43
aget-object v2, v1, v7
invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;
move-result-object v12
iget-object v13, p0, Lco/vine/android/recorder/RecordSessionManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
iget-object v13, v13, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v13
if-eqz v13, :cond_4c
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
:cond_43
if-nez v6, :cond_48
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_48
add-int/lit8 v7, v8, 0x1
move v8, v7
goto :goto_19
:cond_4c
add-int/lit8 v7, v7, 0x1
goto :goto_2d
:cond_4f
return-object v5
.end method
.method public getValidSessions()Ljava/util/ArrayList;
.registers 13
invoke-virtual {p0}, Lco/vine/android/recorder/RecordSessionManager;->getFolders()Ljava/util/ArrayList;
move-result-object v4
new-instance v7, Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v10
invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_11
:goto_11
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_79
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/io/File;
:try_start_1d
invoke-static {v3}, Lco/vine/android/recorder/RecordSessionManager;->getMetaFile(Ljava/io/File;)Ljava/io/File;
move-result-object v10
invoke-virtual {v10}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_11
new-instance v8, Ljava/io/File;
invoke-static {v3}, Lco/vine/android/recorder/RecordSessionManager;->getThumbnailPath(Ljava/io/File;)Ljava/lang/String;
move-result-object v10
invoke-direct {v8, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
new-instance v9, Ljava/io/File;
iget-object v10, p0, Lco/vine/android/recorder/RecordSessionManager;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;
invoke-static {v10, v3}, Lco/vine/android/recorder/RecordSessionManager;->getVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const/4 v10, 0x1
invoke-static {v3, v10}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v0
const/4 v10, 0x0
invoke-static {v3, v10}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v1
invoke-static {v3}, Lco/vine/android/recorder/RecordSessionManager;->readMetaObject(Ljava/io/File;)Lco/vine/android/recorder/RecordSessionMeta;
move-result-object v6
invoke-virtual {v8}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_6f
invoke-virtual {v9}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_6f
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v10
if-nez v10, :cond_61
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_6f
:cond_61
new-instance v10, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
invoke-direct {v10, v3, v8, v9, v6}, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Lco/vine/android/recorder/RecordSessionMeta;)V
invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:try_end_69
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_69} :catch_6a
goto :goto_11
:catch_6a
move-exception v2
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_11
:try_start_6f
:cond_6f
const-string v10, "Invalid session found: {}."
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v11
invoke-static {v10, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
:try_end_78
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_78} :catch_6a
goto :goto_11
:cond_79
invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V
return-object v7
.end method