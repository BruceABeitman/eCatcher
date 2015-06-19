.class public final enum Lco/vine/android/recorder/RecordSessionVersion;
.super Ljava/lang/Enum;
.source "RecordSessionVersion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lco/vine/android/recorder/RecordSessionVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lco/vine/android/recorder/RecordSessionVersion;

.field public static final enum HW:Lco/vine/android/recorder/RecordSessionVersion;

.field public static final enum SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

.field public static final enum SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;


# instance fields
.field public final folder:Ljava/lang/String;

.field public final localTranscodeRequired:Z

.field private manager:Lco/vine/android/recorder/RecordSessionManager;

.field public final mimeType:Ljava/lang/String;

.field public final videoOutputExtension:Ljava/lang/String;

.field public final willEventuallyTranscoded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v2, 0x0

    new-instance v0, Lco/vine/android/recorder/RecordSessionVersion;

    const-string v1, "HW"

    const-string v3, "drafts_hw"

    const-string v4, ".mp4"

    const-string v6, "video/mp4"

    move v5, v2

    move v7, v2

    invoke-direct/range {v0 .. v7}, Lco/vine/android/recorder/RecordSessionVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v0, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;

    new-instance v3, Lco/vine/android/recorder/RecordSessionVersion;

    const-string v4, "SW_MP4"

    const-string v6, "drafts"

    const-string v7, ".mp4"

    const-string v9, "video/mp4"

    move v5, v11

    move v8, v11

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lco/vine/android/recorder/RecordSessionVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v3, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    new-instance v3, Lco/vine/android/recorder/RecordSessionVersion;

    const-string v4, "SW_WEBM"

    const-string v6, "drafts_webm"

    const-string v7, ".webm"

    const-string v9, "video/webm"

    move v5, v12

    move v8, v2

    move v10, v11

    invoke-direct/range {v3 .. v10}, Lco/vine/android/recorder/RecordSessionVersion;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v3, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    const/4 v0, 0x3

    new-array v0, v0, [Lco/vine/android/recorder/RecordSessionVersion;

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;

    aput-object v1, v0, v2

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    aput-object v1, v0, v11

    sget-object v1, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    aput-object v1, v0, v12

    sput-object v0, Lco/vine/android/recorder/RecordSessionVersion;->$VALUES:[Lco/vine/android/recorder/RecordSessionVersion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lco/vine/android/recorder/RecordSessionVersion;->folder:Ljava/lang/String;

    iput-object p4, p0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    iput-boolean p5, p0, Lco/vine/android/recorder/RecordSessionVersion;->localTranscodeRequired:Z

    iput-object p6, p0, Lco/vine/android/recorder/RecordSessionVersion;->mimeType:Ljava/lang/String;

    iput-boolean p7, p0, Lco/vine/android/recorder/RecordSessionVersion;->willEventuallyTranscoded:Z

    return-void
.end method

.method public static deleteSessionWithName(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lco/vine/android/recorder/RecordSessionVersion;->values()[Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_22

    aget-object v4, v0, v1

    invoke-virtual {v4, p0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Lco/vine/android/recorder/RecordSessionManager;->getFolderFromName(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1f

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v5, "Done with session."

    invoke-static {v3, v5}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method public static getValuesWithManagers(Landroid/content/Context;)[Lco/vine/android/recorder/RecordSessionVersion;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lco/vine/android/recorder/RecordSessionVersion;->values()[Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v0

    array-length v2, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v2, :cond_10

    aget-object v3, v0, v1

    invoke-virtual {v3, p0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    invoke-static {}, Lco/vine/android/recorder/RecordSessionVersion;->values()[Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v4

    return-object v4
.end method

.method public static upgrade(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;)V
    .registers 26

    const-string v3, "Draft upgrade requested."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lco/vine/android/recorder/RecordSessionManager;->getCurrentVersion(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    sget-object v3, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    if-ne v8, v3, :cond_13a

    const-string v3, "Upgrading drafts from {} to {}"

    sget-object v4, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    sget-object v5, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v16, 0x0

    const/4 v14, 0x0

    :try_start_1d
    sget-object v3, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_fd

    move-result-object v16

    :goto_25
    :try_start_25
    sget-object v3, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lco/vine/android/recorder/RecordSessionVersion;->getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_2c} :catch_105

    move-result-object v14

    :goto_2d
    if-eqz v16, :cond_ed

    if-eqz v14, :cond_ed

    const/16 v19, 0x0

    :try_start_33
    invoke-virtual/range {v16 .. v16}, Lco/vine/android/recorder/RecordSessionManager;->getValidSessions()Ljava/util/ArrayList;
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_10d

    move-result-object v19

    :goto_37
    if-eqz v19, :cond_ed

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v20

    const-string v3, "Found {} sessions."

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;->onCountChanged(I)V

    if-lez v20, :cond_e7

    const/16 v3, 0x1e0

    const/16 v4, 0x1e0

    const/16 v5, 0x8

    const/16 v23, 0x4

    :try_start_57
    move/from16 v0, v23

    invoke-static {v3, v4, v5, v0}, Lcom/googlecode/javacv/cpp/opencv_core$IplImage;->create(IIII)Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->createDefaultSizeBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_65
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;
    :try_end_71
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_71} :catch_de

    :try_start_71
    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    invoke-static {v3}, Lco/vine/android/recorder/RecordSessionManager;->readDataObject(Ljava/io/File;)Lco/vine/android/recorder/RecordSession;

    move-result-object v2

    if-eqz v2, :cond_d4

    sget-object v4, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    sget-object v5, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v7}, Lco/vine/android/recorder/RecordSession;->upgrade(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;Lco/vine/android/recorder/RecordSessionVersion;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;)Lco/vine/android/recorder/RecordSession;

    move-result-object v15

    if-eqz v15, :cond_d4

    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Lco/vine/android/recorder/RecordSessionManager;->getFolderFromName(Ljava/lang/String;)Ljava/io/File;
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_8e} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_8e} :catch_de

    move-result-object v13

    :try_start_8f
    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    invoke-static {v3, v13}, Lorg/apache/commons/io/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    new-instance v17, Ljava/io/File;

    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->video:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-direct {v0, v13, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v18, 0x0

    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->video:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c2

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_c2

    new-instance v3, Ljava/io/File;

    sget-object v4, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-static {v4, v13}, Lco/vine/android/recorder/RecordSessionManager;->getVideoPath(Lco/vine/android/recorder/RecordSessionVersion;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    :cond_c2
    const-string v3, "Video file rename: {}"

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    invoke-static {v13, v15, v3}, Lco/vine/android/recorder/RecordSessionManager;->writeRecordingFile(Ljava/io/File;Lco/vine/android/recorder/RecordSession;Z)V

    iget-object v3, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_d4} :catch_115
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_d4} :catch_de

    :cond_d4
    :goto_d4
    add-int/lit8 v20, v20, -0x1

    :try_start_d6
    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;->onCountChanged(I)V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_d6 .. :try_end_dd} :catch_de

    goto :goto_65

    :catch_de
    move-exception v10

    const-string v3, "Failed to upgrade drafts."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v10, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_e7
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lco/vine/android/recorder/RecordSessionVersion$OnDraftUpgradeCountChangedListener;->onCountChanged(I)V

    :cond_ed
    :goto_ed
    const-string v3, "Draft upgrade complete: {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_fd
    move-exception v10

    const-string v3, "Upgrade failed, failed to get old manager."

    invoke-static {v3, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    :catch_105
    move-exception v10

    const-string v3, "Upgrade failed, failed to get new manager."

    invoke-static {v3, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    :catch_10d
    move-exception v10

    const-string v3, "Upgrade failed, failed to get valid sessions."

    invoke-static {v3, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    :catch_115
    move-exception v10

    :try_start_116
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v9

    const-string v3, "Upgrade failed for {}, failed to copy folder."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    move-object/from16 v23, v0

    aput-object v23, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    aput-object v23, v4, v5

    invoke-static {v10, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_130
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_130} :catch_131
    .catch Ljava/lang/Throwable; {:try_start_116 .. :try_end_130} :catch_de

    goto :goto_d4

    :catch_131
    move-exception v10

    :try_start_132
    const-string v3, "Upgrade failed for {}, failed to read data."

    iget-object v4, v12, Lco/vine/android/recorder/RecordSessionManager$RecordSessionInfo;->folder:Ljava/io/File;

    invoke-static {v3, v4, v10}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_139
    .catch Ljava/lang/Throwable; {:try_start_132 .. :try_end_139} :catch_de

    goto :goto_d4

    :cond_13a
    const-string v3, "Nothing to upgrade, current device is still rocking {}"

    sget-object v4, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_ed
.end method

.method public static valueOf(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;
    .registers 2

    const-class v0, Lco/vine/android/recorder/RecordSessionVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/RecordSessionVersion;

    return-object v0
.end method

.method public static values()[Lco/vine/android/recorder/RecordSessionVersion;
    .registers 1

    sget-object v0, Lco/vine/android/recorder/RecordSessionVersion;->$VALUES:[Lco/vine/android/recorder/RecordSessionVersion;

    invoke-virtual {v0}, [Lco/vine/android/recorder/RecordSessionVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lco/vine/android/recorder/RecordSessionVersion;

    return-object v0
.end method


# virtual methods
.method public getAudioArrayType()Lco/vine/android/recorder/AudioArray$AudioArrayType;
    .registers 2

    sget-object v0, Lco/vine/android/recorder/RecordSessionVersion;->HW:Lco/vine/android/recorder/RecordSessionVersion;

    if-ne p0, v0, :cond_7

    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lco/vine/android/recorder/AudioArray$AudioArrayType;->SHORT:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    goto :goto_6
.end method

.method public declared-synchronized getManager(Landroid/content/Context;)Lco/vine/android/recorder/RecordSessionManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lco/vine/android/recorder/RecordSessionVersion;->manager:Lco/vine/android/recorder/RecordSessionManager;

    if-nez v0, :cond_c

    new-instance v0, Lco/vine/android/recorder/RecordSessionManager;

    invoke-direct {v0, p1, p0}, Lco/vine/android/recorder/RecordSessionManager;-><init>(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSessionVersion;->manager:Lco/vine/android/recorder/RecordSessionManager;

    :cond_c
    iget-object v0, p0, Lco/vine/android/recorder/RecordSessionVersion;->manager:Lco/vine/android/recorder/RecordSessionManager;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
