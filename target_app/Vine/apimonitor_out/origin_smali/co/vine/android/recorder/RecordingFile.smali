.class public Lco/vine/android/recorder/RecordingFile;
.super Ljava/lang/Object;
.source "RecordingFile.java"


# instance fields
.field public editedSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation
.end field

.field public final folder:Ljava/io/File;

.field public isDirty:Z

.field public final isLastSession:Z

.field public isSavedSession:Z

.field private mHash:Ljava/lang/String;

.field private mSession:Lco/vine/android/recorder/RecordSession;

.field public final version:Lco/vine/android/recorder/RecordSessionVersion;


# direct methods
.method public constructor <init>(Ljava/io/File;Lco/vine/android/recorder/RecordSession;ZZZ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v1, :cond_14

    const-string v1, "[session] New file created: {}."

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_14
    iput-object p2, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    iget-object v1, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordSession;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/recorder/RecordingFile;->version:Lco/vine/android/recorder/RecordSessionVersion;

    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    iput-boolean p3, p0, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z

    iput-boolean p5, p0, Lco/vine/android/recorder/RecordingFile;->isLastSession:Z

    iput-boolean p4, p0, Lco/vine/android/recorder/RecordingFile;->isDirty:Z

    :try_start_26
    iget-object v1, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v1}, Lorg/apache/commons/io/FileUtils;->forceMkdir(Ljava/io/File;)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".last."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHash()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->mHash:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFramePath()Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lco/vine/android/recorder/RecordingFile;->getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_15

    :goto_14
    return-object v1

    :cond_15
    move-object v1, v0

    goto :goto_14
.end method

.method public getPreviewThumbnailPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->getPreviewThumbnailPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewVideoPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->version:Lco/vine/android/recorder/RecordSessionVersion;

    iget-object v1, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordSessionManager;->getPreviewVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentThumbnailPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->getSegmentThumbnailPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentVideoPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->version:Lco/vine/android/recorder/RecordSessionVersion;

    iget-object v1, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordSessionManager;->getSegmentVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lco/vine/android/recorder/RecordSession;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    return-object v0
.end method

.method public getThumbnailPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0}, Lco/vine/android/recorder/RecordSessionManager;->getThumbnailPath(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->version:Lco/vine/android/recorder/RecordSessionVersion;

    iget-object v1, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    invoke-static {v0, v1}, Lco/vine/android/recorder/RecordSessionManager;->getVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasData()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public invalidateGhostThumbnail()V
    .registers 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getPreviewThumbnailPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lco/vine/android/recorder/RecordingFile;->getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lco/vine/android/recorder/RecordingFile;->getLastFramePathThumbnailFromThumbnailPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_25
    return-void
.end method

.method public isValid()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public setHash(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->mHash:Ljava/lang/String;

    return-void
.end method

.method public setSession(Lco/vine/android/recorder/RecordSession;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "Folder: {}, isLastSession: {}, isDirty: {}, isSavedSession: {}, Session: {}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordingFile;->isLastSession:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordingFile;->isDirty:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lco/vine/android/recorder/RecordingFile;->mSession:Lco/vine/android/recorder/RecordSession;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
