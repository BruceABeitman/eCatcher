.class public Lco/vine/android/recorder/RecordSession;
.super Ljava/lang/Object;
.source "RecordSession.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field private static final sInstanceCounter:Lco/vine/android/util/InstanceCounter; = null

.field private static final sLock:[I = null

.field private static final serialVersionUID:J = 0x773660a9759c8145L


# instance fields
.field private mAudioData:Lco/vine/android/recorder/AudioArray;

.field private mAudioDataCount:I

.field private mConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

.field private final mSegments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Lco/vine/android/recorder/RecordSessionVersion;

.field private mVideoData:[B

.field private mVideoDataCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lco/vine/android/util/InstanceCounter;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lco/vine/android/util/InstanceCounter;-><init>(I)V

    sput-object v0, Lco/vine/android/recorder/RecordSession;->sInstanceCounter:Lco/vine/android/util/InstanceCounter;

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lco/vine/android/recorder/RecordSession;->sLock:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    iput v1, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    iput v1, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    return-void
.end method

.method public constructor <init>(Lco/vine/android/recorder/RecordSessionVersion;)V
    .registers 4

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    iput v1, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    iput v1, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    sget-object v1, Lco/vine/android/recorder/RecordSession;->sLock:[I

    monitor-enter v1

    :try_start_12
    iput-object p1, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lco/vine/android/recorder/RecordSession;->sInstanceCounter:Lco/vine/android/util/InstanceCounter;

    invoke-virtual {v0, p0}, Lco/vine/android/util/InstanceCounter;->onCreate(Ljava/lang/Object;)I

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public static makeVideoWithVideoData(ILjava/io/File;Ljava/util/ArrayList;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;[B)I
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;",
            "Lcom/googlecode/javacv/cpp/opencv_core$IplImage;",
            "Landroid/graphics/Bitmap;",
            "[B)I"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1e0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move v1, p0

    invoke-static/range {v0 .. v5}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Z)Lco/vine/android/recorder/SwVineFrameRecorder;

    move-result-object v6

    new-instance v0, Lco/vine/android/recorder/SwCombiningRunnable;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p5

    move-object v5, p2

    move-object v8, p4

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    :try_start_1f
    invoke-virtual {v6}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V

    invoke-virtual {v0}, Lco/vine/android/recorder/SwCombiningRunnable;->combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_39
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_1f .. :try_end_25} :catch_2b

    invoke-virtual {v6}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    iget v1, v0, Lco/vine/android/recorder/SwCombiningRunnable;->mVideoSize:I

    :goto_2a
    return v1

    :catch_2b
    move-exception v10

    :try_start_2c
    const-string v1, "Failed to make video"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v10, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_39

    const/4 v1, -0x1

    invoke-virtual {v6}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    goto :goto_2a

    :catchall_39
    move-exception v1

    invoke-virtual {v6}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    throw v1
.end method

.method public static newSession(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Lco/vine/android/recorder/RecordSessionVersion;)Lco/vine/android/recorder/RecordSession;
    .registers 6

    new-instance v0, Lco/vine/android/recorder/RecordSession;

    invoke-direct {v0, p1}, Lco/vine/android/recorder/RecordSession;-><init>(Lco/vine/android/recorder/RecordSessionVersion;)V

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->getVideoBufferMax(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    new-instance v1, Lco/vine/android/recorder/AudioArray;

    invoke-static {p0}, Lco/vine/android/recorder/RecordConfigUtils;->getMaxAudioBufferSize(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)I

    move-result v2

    invoke-virtual {p1}, Lco/vine/android/recorder/RecordSessionVersion;->getAudioArrayType()Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lco/vine/android/recorder/AudioArray;-><init>(ILco/vine/android/recorder/AudioArray$AudioArrayType;)V

    iput-object v1, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    iput-object p0, v0, Lco/vine/android/recorder/RecordSession;->mConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    return-object v0
.end method

.method private transcode(Ljava/io/File;Ljava/io/File;II[BLjava/util/ArrayList;)I
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "II[B",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/VideoData;",
            ">;)I"
        }
    .end annotation

    new-instance v14, Lco/vine/android/recorder/VineFrameGrabber;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Lco/vine/android/recorder/VineFrameGrabber;-><init>(Ljava/lang/String;)V

    :try_start_9
    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->start()V
    :try_end_c
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_9 .. :try_end_c} :catch_43

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v2, p3

    invoke-static/range {v1 .. v6}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IILcom/googlecode/javacv/cpp/avcodec$AVPacket;Lcom/googlecode/javacv/cpp/avcodec$AVPacket;Z)Lco/vine/android/recorder/SwVineFrameRecorder;

    move-result-object v2

    :try_start_1b
    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V
    :try_end_1e
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_1b .. :try_end_1e} :catch_51

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    :cond_2a
    :goto_2a
    :try_start_2a
    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->grab()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    :try_end_2d
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_2a .. :try_end_2d} :catch_c4

    move-result-object v3

    if-eqz v3, :cond_70

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, p0

    move/from16 v5, p4

    move-object/from16 v6, p5

    :try_start_38
    invoke-direct/range {v1 .. v6}, Lco/vine/android/recorder/RecordSession;->upgradeVideoData(Lco/vine/android/recorder/SwVineFrameRecorder;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/util/LinkedList;I[B)I
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3b} :catch_62
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_38 .. :try_end_3b} :catch_c4

    move-result v15

    if-lez v15, :cond_2a

    add-int/lit8 v12, v12, 0x1

    move/from16 p4, v15

    goto :goto_2a

    :catch_43
    move-exception v11

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    const-string v1, "Failed to start decoder"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11, v1, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, -0x1

    :goto_50
    return v1

    :catch_51
    move-exception v11

    const-string v1, "Failed to start encoder"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v11, v1, v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    const/4 v1, -0x1

    goto :goto_50

    :catch_62
    move-exception v11

    :try_start_63
    const-string v1, "Error re-encoding..."

    invoke-static {v1, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
    :try_end_6e
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_63 .. :try_end_6e} :catch_c4

    const/4 v1, -0x1

    goto :goto_50

    :cond_70
    :goto_70
    :try_start_70
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I
    :try_end_73
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_70 .. :try_end_73} :catch_b6
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_70 .. :try_end_73} :catch_c4

    move-result v1

    if-lez v1, :cond_98

    const/4 v7, 0x0

    move-object/from16 v5, p0

    move-object v6, v2

    move-object v8, v4

    move/from16 v9, p4

    move-object/from16 v10, p5

    :try_start_7f
    invoke-direct/range {v5 .. v10}, Lco/vine/android/recorder/RecordSession;->upgradeVideoData(Lco/vine/android/recorder/SwVineFrameRecorder;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/util/LinkedList;I[B)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_8a
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_7f .. :try_end_82} :catch_b6
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_7f .. :try_end_82} :catch_c4

    move-result v15

    if-lez v15, :cond_98

    add-int/lit8 v12, v12, 0x1

    move/from16 p4, v15

    goto :goto_70

    :catch_8a
    move-exception v11

    :try_start_8b
    const-string v1, "Error re-encoding..."

    invoke-static {v1, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    const/4 v1, -0x1

    goto :goto_50

    :cond_98
    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->stopEncoding()V
    :try_end_9b
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_8b .. :try_end_9b} :catch_b6
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_8b .. :try_end_9b} :catch_c4

    :try_start_9b
    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->stop()V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V
    :try_end_a1
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_9b .. :try_end_a1} :catch_c4

    const-string v1, "Grabbed {} frames."

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "Encoded {} frames."

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    move/from16 v1, p4

    goto :goto_50

    :catch_b6
    move-exception v11

    :try_start_b7
    const-string v1, "Error flushing..."

    invoke-static {v1, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V
    :try_end_c2
    .catch Lco/vine/android/recorder/VineFrameGrabber$Exception; {:try_start_b7 .. :try_end_c2} :catch_c4

    const/4 v1, -0x1

    goto :goto_50

    :catch_c4
    move-exception v11

    const-string v1, "Failed to grab."

    invoke-static {v1, v11}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v14}, Lco/vine/android/recorder/VineFrameGrabber;->release()V

    invoke-virtual {v2}, Lco/vine/android/recorder/SwVineFrameRecorder;->release()V

    const/4 v1, -0x1

    goto/16 :goto_50
.end method

.method private upgradeVideoData(Lco/vine/android/recorder/SwVineFrameRecorder;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Ljava/util/LinkedList;I[B)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/recorder/SwVineFrameRecorder;",
            "Lcom/googlecode/javacv/cpp/opencv_core$IplImage;",
            "Ljava/util/LinkedList",
            "<",
            "Lco/vine/android/recorder/VideoData;",
            ">;I[B)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/VideoData;

    :try_start_6
    iput p4, v0, Lco/vine/android/recorder/VideoData;->start:I

    const/4 v2, 0x1

    iput-boolean v2, v0, Lco/vine/android/recorder/VideoData;->keyFrame:Z

    invoke-virtual {p1, p2, p5, p4}, Lco/vine/android/recorder/SwVineFrameRecorder;->encode(Lcom/googlecode/javacv/cpp/opencv_core$IplImage;[BI)I

    move-result v2

    iput v2, v0, Lco/vine/android/recorder/VideoData;->size:I
    :try_end_11
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_6 .. :try_end_11} :catch_1d

    iget v2, v0, Lco/vine/android/recorder/VideoData;->size:I

    if-lez v2, :cond_29

    iget v2, v0, Lco/vine/android/recorder/VideoData;->size:I

    add-int/2addr p4, v2

    invoke-virtual {p3}, Ljava/util/LinkedList;->pop()Ljava/lang/Object;

    move v2, p4

    :goto_1c
    return v2

    :catch_1d
    move-exception v1

    const-string v2, "Error re-encoding..."

    invoke-static {v2, v1}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_29
    const/4 v2, -0x1

    goto :goto_1c
.end method


# virtual methods
.method public add(Lco/vine/android/recorder/RecordSegment;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public calculateAudioCount()I
    .registers 5

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/recorder/RecordSegment;

    iget-boolean v3, v1, Lco/vine/android/recorder/RecordSegment;->removed:Z

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;

    move-result-object v3

    iget v3, v3, Lco/vine/android/recorder/AudioData;->size:I

    add-int/2addr v2, v3

    goto :goto_7

    :cond_1f
    return v2
.end method

.method public calculateVideoCount()I
    .registers 8

    const/4 v4, 0x0

    iget-object v6, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lco/vine/android/recorder/RecordSegment;

    iget-boolean v6, v3, Lco/vine/android/recorder/RecordSegment;->removed:Z

    if-nez v6, :cond_7

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/VideoData;

    iget v6, v0, Lco/vine/android/recorder/VideoData;->size:I

    if-lez v6, :cond_1f

    iget v6, v0, Lco/vine/android/recorder/VideoData;->size:I

    add-int/2addr v4, v6

    goto :goto_1f

    :cond_33
    return v4
.end method

.method public getAudioData()Lco/vine/android/recorder/AudioArray;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    return-object v0
.end method

.method public getAudioDataCount()I
    .registers 3

    iget v0, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    :cond_b
    iget v0, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    return v0
.end method

.method public getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    return-object v0
.end method

.method public getSegments()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVersion()Lco/vine/android/recorder/RecordSessionVersion;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    if-nez v0, :cond_8

    sget-object v0, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;

    iput-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    :cond_8
    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    return-object v0
.end method

.method public getVideoData()[B
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    return-object v0
.end method

.method public getVideoDataCount()I
    .registers 3

    iget v0, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    :cond_b
    iget v0, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [B

    if-eqz v2, :cond_25

    check-cast v1, [B

    check-cast v1, [B

    iput-object v1, p0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    :goto_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Lco/vine/android/recorder/AudioArray;

    invoke-direct {v2, v0}, Lco/vine/android/recorder/AudioArray;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    iget-object v3, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_25
    check-cast v1, Lco/vine/android/recorder/RecordSessionVersion;

    iput-object v1, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    check-cast v2, [B

    iput-object v2, p0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    goto :goto_e
.end method

.method public setAudioDataCount(I)V
    .registers 5

    sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I

    move-result v0

    if-eq p1, v0, :cond_1b

    const-string v0, "Audio Counts does not match: {} {}."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    iput p1, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    return-void
.end method

.method public setConfig(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordSession;->mConfig:Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    return-void
.end method

.method public setVideoDataCount(I)V
    .registers 5

    sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I

    move-result v0

    if-eq p1, v0, :cond_1b

    const-string v0, "Video Counts does not match: {} {}."

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1b
    iput p1, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    const-string v0, "\nVideoData Count: {}, AudioData Count: {}, Segments: {}"

    iget v1, p0, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/edisonwang/android/slog/MessageFormatter;->format(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/edisonwang/android/slog/FormattingTuple;

    move-result-object v0

    invoke-virtual {v0}, Lcom/edisonwang/android/slog/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public upgrade(Landroid/content/Context;Lco/vine/android/recorder/RecordSessionVersion;Lco/vine/android/recorder/RecordSessionVersion;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;)Lco/vine/android/recorder/RecordSession;
    .registers 25

    move-object/from16 v15, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    if-eq v0, v1, :cond_1b8

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordSession;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;

    move-result-object v2

    move-object/from16 v0, p2

    if-ne v0, v2, :cond_1b8

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1b2

    new-instance v12, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lco/vine/android/recorder/RecordSession;->newSession(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Lco/vine/android/recorder/RecordSessionVersion;)Lco/vine/android/recorder/RecordSession;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v2}, Lco/vine/android/recorder/AudioArray;->getType()Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-result-object v2

    iget-object v5, v15, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v5}, Lco/vine/android/recorder/AudioArray;->getType()Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-result-object v5

    if-ne v2, v5, :cond_16e

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v2}, Lco/vine/android/recorder/AudioArray;->getType()Lco/vine/android/recorder/AudioArray$AudioArrayType;

    move-result-object v2

    sget-object v5, Lco/vine/android/recorder/AudioArray$AudioArrayType;->BYTE:Lco/vine/android/recorder/AudioArray$AudioArrayType;

    if-ne v2, v5, :cond_153

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v2}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, v15, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v6}, Lco/vine/android/recorder/AudioArray;->getDataByte()[B

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    iget v10, v10, Lco/vine/android/recorder/AudioArray;->length:I

    invoke-static {v2, v5, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_5c
    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    iput v2, v15, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_73
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_192

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lco/vine/android/recorder/RecordSegment;

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_73

    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draft_upgrade_input_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v12, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v2 .. v7}, Lco/vine/android/recorder/RecordSession;->makeVideoWithVideoData(ILjava/io/File;Ljava/util/ArrayList;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;[B)I

    move-result v18

    if-lez v18, :cond_176

    add-int v16, v16, v9

    new-instance v7, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "draft_upgrade_output_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget v8, v12, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->targetFrameRate:I

    iget-object v10, v15, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v11

    move-object/from16 v5, p0

    move-object v6, v3

    invoke-direct/range {v5 .. v11}, Lco/vine/android/recorder/RecordSession;->transcode(Ljava/io/File;Ljava/io/File;II[BLjava/util/ArrayList;)I

    move-result v9

    const-string v2, "Had {} frames."

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "Delete temp file2: {}"

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-gez v9, :cond_13d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No video data found, invalid segment: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_13d
    :goto_13d
    const-string v2, "Delete temp file: {}"

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v13, :cond_73

    const-string v2, "Error encounted while upgrading: {}."

    invoke-static {v2, v13}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_152
    return-object v2

    :cond_153
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v2}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S

    move-result-object v2

    const/4 v5, 0x0

    iget-object v6, v15, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v6}, Lco/vine/android/recorder/AudioArray;->getDataShort()[S

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    iget v10, v10, Lco/vine/android/recorder/AudioArray;->length:I

    invoke-static {v2, v5, v6, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_5c

    :cond_16e
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v5, "Audio type mismatch, byte <-> short conversions not yet implemented."

    invoke-direct {v2, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to make output video: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_13d

    :cond_192
    iput v9, v15, Lco/vine/android/recorder/RecordSession;->mVideoDataCount:I

    move-object/from16 v0, p0

    iget v2, v0, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    iput v2, v15, Lco/vine/android/recorder/RecordSession;->mAudioDataCount:I

    iget-object v2, v15, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v2, "Transcoding complete on sizes: mpeg4: {}, vp8: {}."

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1b0
    move-object v2, v15

    goto :goto_152

    :cond_1b2
    const-string v2, "Empty session, skip conversion"

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_1b0

    :cond_1b8
    const-string v2, "Data file already upgraded, skip conversion."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V

    goto :goto_1b0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVersion:Lco/vine/android/recorder/RecordSessionVersion;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mVideoData:[B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mAudioData:Lco/vine/android/recorder/AudioArray;

    invoke-virtual {v0}, Lco/vine/android/recorder/AudioArray;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordSession;->mSegments:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    return-void
.end method
