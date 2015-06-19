.class public Lco/vine/android/recorder/RecordController;
.super Ljava/lang/Object;
.source "RecordController.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/hardware/Camera$PreviewCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/RecordController$AudioRecordRunnable;,
        Lco/vine/android/recorder/RecordController$OnRecorderControllerStateChangedListener;,
        Lco/vine/android/recorder/RecordController$GhostUpdateRunnable;,
        Lco/vine/android/recorder/RecordController$RecordControllerReadyStartedException;
    }
.end annotation


# static fields
.field private static sByteBufferQueue:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/recorder/ByteBufferQueue;",
            ">;"
        }
    .end annotation
.end field

.field private static sByteBufferQueueReal:Lco/vine/android/recorder/ByteBufferQueue;

.field public static sMaxKnownStopTime:J


# instance fields
.field private volatile isRecordingStarted:Z

.field private mAudioDataBufferMax:Lco/vine/android/recorder/AudioArray;

.field private mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

.field private mAudioThread:Ljava/lang/Thread;

.field private volatile mAudioTimeRecorded:J

.field private volatile mAudioTimestamp:J

.field private mAudioTrim:Z

.field private mAutoFocus:Z

.field private final mCameraManager:Lco/vine/android/recorder/CameraManager;

.field private final mContext:Landroid/content/Context;

.field private volatile mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

.field private mCurrentSegmentEverReceivedFrames:Z

.field private final mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lco/vine/android/recorder/VideoData;",
            ">;"
        }
    .end annotation
.end field

.field private mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

.field private mEncodingThreadWasRunning:Z

.field private final mFastEncoding:Z

.field private mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

.field private mFlash:Z

.field private mFrameRate:I

.field private mFrameTime:J

.field private mGhostBitmap:Landroid/graphics/Bitmap;

.field private mGhostCanvas:Landroid/graphics/Canvas;

.field private mGhostFrame:Lco/vine/android/recorder/VideoData;

.field private final mHardwareEncoding:Z

.field private mInvalidPreviewSizeException:Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;

.field private mIsFocusing:Z

.field private mIsRecordingEnded:Z

.field private mLastAudioRecordingSegment:Lco/vine/android/recorder/RecordSegment;

.field private mLastAudioTimestamp:J

.field private mLastCameraSetting:Lco/vine/android/recorder/CameraSetting;

.field private mLastFrame:Lco/vine/android/recorder/VideoData;

.field private mLastLastFrame:Lco/vine/android/recorder/VideoData;

.field private mLastVideoSegment:Lco/vine/android/recorder/RecordSegment;

.field private mOutput:Ljava/lang/String;

.field public mParent:Lco/vine/android/recorder/BasicVineRecorder;

.field private mProcessThread:Ljava/lang/Thread;

.field private mRotation:I

.field private volatile mRunAudioThread:Z

.field private mSession:Lco/vine/android/recorder/RecordSession;

.field private mSessionFeatureDisabled:Z

.field private mStartTime:J

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mTextureView:Landroid/view/TextureView;

.field private final mUseMp4:Z

.field private mVideoDataBufferMax:[B

.field private final mVideoRecordLock:[I

.field private mVideoTimestamp:J

.field private volatile recordingAudio:Z


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/app/Activity;ZZZ)V
    .registers 9

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-array v0, v1, [I

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iput-boolean v2, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mAudioTrim:Z

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    iput-boolean p3, p0, Lco/vine/android/recorder/RecordController;->mHardwareEncoding:Z

    iput-boolean p4, p0, Lco/vine/android/recorder/RecordController;->mFastEncoding:Z

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mContext:Landroid/content/Context;

    invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/CameraManager;->setController(Lco/vine/android/recorder/RecordController;)V

    iput-boolean p5, p0, Lco/vine/android/recorder/RecordController;->mUseMp4:Z

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/recorder/RecordController;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/recorder/RecordController;->updateGhostBitmap(Z)V

    return-void
.end method

.method static synthetic access$1000(Lco/vine/android/recorder/RecordController;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mAudioTrim:Z

    return v0
.end method

.method static synthetic access$1100(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/RecordSegment;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    return-object v0
.end method

.method static synthetic access$1200(Lco/vine/android/recorder/RecordController;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    return v0
.end method

.method static synthetic access$1300(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/RecordSegment;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastAudioRecordingSegment:Lco/vine/android/recorder/RecordSegment;

    return-object v0
.end method

.method static synthetic access$1302(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordSegment;)Lco/vine/android/recorder/RecordSegment;
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mLastAudioRecordingSegment:Lco/vine/android/recorder/RecordSegment;

    return-object p1
.end method

.method static synthetic access$1400(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/RecordSegment;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastVideoSegment:Lco/vine/android/recorder/RecordSegment;

    return-object v0
.end method

.method static synthetic access$200(Lco/vine/android/recorder/RecordController;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mOutput:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/recorder/RecordController;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    return-wide v0
.end method

.method static synthetic access$302(Lco/vine/android/recorder/RecordController;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    return-wide p1
.end method

.method static synthetic access$402(Lco/vine/android/recorder/RecordController;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/recorder/RecordController;->mAudioTimeRecorded:J

    return-wide p1
.end method

.method static synthetic access$500(Lco/vine/android/recorder/RecordController;)Lco/vine/android/recorder/AudioArray;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioDataBufferMax:Lco/vine/android/recorder/AudioArray;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/recorder/RecordController;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mHardwareEncoding:Z

    return v0
.end method

.method static synthetic access$700(Lco/vine/android/recorder/RecordController;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    return v0
.end method

.method static synthetic access$800(Lco/vine/android/recorder/RecordController;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    return-wide v0
.end method

.method static synthetic access$900(Lco/vine/android/recorder/RecordController;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mIsRecordingEnded:Z

    return v0
.end method

.method private clearLastFrames()V
    .registers 5

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v2, v2, Lco/vine/android/recorder/VideoData;->data:[B

    invoke-virtual {v0, v2}, Lco/vine/android/recorder/CameraManager;->isFrameAdded([B)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "[START] AHAHHHH"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v2, v2, Lco/vine/android/recorder/VideoData;->data:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    :cond_25
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    if-eqz v0, :cond_47

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v2, v2, Lco/vine/android/recorder/VideoData;->data:[B

    invoke-virtual {v0, v2}, Lco/vine/android/recorder/CameraManager;->isFrameAdded([B)Z

    move-result v0

    if-nez v0, :cond_47

    const-string v0, "[START] AHAHHHH"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v2, v2, Lco/vine/android/recorder/VideoData;->data:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lco/vine/android/recorder/CameraManager;->addBuffer([BZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    :cond_47
    monitor-exit v1

    return-void

    :catchall_49
    move-exception v0

    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_49

    throw v0
.end method

.method private onSurfaceCreated()V
    .registers 2

    const-string v0, "Surface created..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/BasicVineRecorder;->onSurfaceReady(Lco/vine/android/recorder/RecordController;)V

    return-void
.end method

.method private onSurfaceDestroyed()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    return-void
.end method

.method private onSurfaceUpdated()V
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v0, :cond_21

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "Surface updated. mCameraManager is previewing..."

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :try_start_11
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->stopPreview()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_16} :catch_22

    :goto_16
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    :cond_21
    return-void

    :catch_22
    move-exception v0

    goto :goto_16
.end method

.method private updateGhostBitmap(Z)V
    .registers 8

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPictureConverter()Lco/vine/android/recorder/PictureConverter;

    move-result-object v2

    iget-object v4, v2, Lco/vine/android/recorder/PictureConverter;->LOCK:[I

    monitor-enter v4

    :try_start_7
    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    iget-object v3, v3, Lco/vine/android/recorder/VideoData;->segment:Lco/vine/android/recorder/RecordSegment;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v0

    invoke-virtual {v2, v0}, Lco/vine/android/recorder/PictureConverter;->updateSettingsIfNeeded(Lco/vine/android/recorder/CameraSetting;)Z

    move-result v1

    iget v3, v0, Lco/vine/android/recorder/CameraSetting;->degrees:I

    iget-boolean v5, v0, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    invoke-virtual {v2, v3, v5}, Lco/vine/android/recorder/PictureConverter;->giveMatrixNewValuesWithScaleIfDegreeHasChangedWithKnownConfigs(IZ)V

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    invoke-virtual {v2, v0, v3, v1}, Lco/vine/android/recorder/PictureConverter;->convert(Lco/vine/android/recorder/CameraSetting;Lco/vine/android/recorder/VideoData;Z)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mGhostCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lco/vine/android/recorder/PictureConverter;->draw(Landroid/graphics/Canvas;)V

    if-eqz p1, :cond_34

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    if-eqz v3, :cond_34

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mGhostBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v5}, Lco/vine/android/recorder/BasicVineRecorder;->updateGhostBitmap(Landroid/graphics/Bitmap;)V

    :cond_34
    monitor-exit v4

    return-void

    :catchall_36
    move-exception v3

    monitor-exit v4
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_36

    throw v3
.end method

.method private writeToFile(Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;ZI)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;[B",
            "Lco/vine/android/recorder/AudioArray;",
            "ZI)",
            "Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;"
        }
    .end annotation

    :try_start_0
    const-string v2, "Write to file: {}"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iget-boolean v2, v2, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    if-eqz v2, :cond_23

    const-wide/16 v2, 0x14

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_9

    :catch_1d
    move-exception v19

    const-string v2, "No..."

    invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    :cond_23
    :try_start_23
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lco/vine/android/recorder/RecordController;->mHardwareEncoding:Z

    if-eqz v2, :cond_94

    if-eqz p4, :cond_72

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v4}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v4

    invoke-virtual {v4}, Lco/vine/android/recorder/RecordingFile;->getPreviewVideoPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".temp_video.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Landroid/content/Context;Ljava/lang/String;I)Lco/vine/android/recorder/HwVineFrameRecorder;

    move-result-object v7

    :goto_54
    new-instance v1, Lco/vine/android/recorder/HwCombiningRunnable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    move/from16 v3, p4

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v8}, Lco/vine/android/recorder/HwCombiningRunnable;-><init>(Lco/vine/android/recorder/RecordingFile;ZLco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;)V

    invoke-virtual {v1}, Lco/vine/android/recorder/HwCombiningRunnable;->combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v2

    :goto_71
    return-object v2

    :cond_72
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mOutput:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".video.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move/from16 v0, p5

    invoke-static {v2, v3, v0}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Landroid/content/Context;Ljava/lang/String;I)Lco/vine/android/recorder/HwVineFrameRecorder;

    move-result-object v7

    goto :goto_54

    :cond_94
    if-eqz p4, :cond_f7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getPreviewVideoPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".temp_video"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_CONTAINER_EXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mUseMp4:Z

    move/from16 v0, p5

    invoke-static {v2, v0, v3, v4}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;

    move-result-object v7

    :goto_c7
    invoke-virtual {v7}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V

    new-instance v1, Lco/vine/android/recorder/RecordController$2;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    move-object/from16 v16, v0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->getFrameBuffer()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v18

    move-object v8, v1

    move-object/from16 v9, p0

    move/from16 v11, p4

    move-object/from16 v12, p3

    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move-object v15, v7

    invoke-direct/range {v8 .. v18}, Lco/vine/android/recorder/RecordController$2;-><init>(Lco/vine/android/recorder/RecordController;Lco/vine/android/recorder/RecordingFile;ZLco/vine/android/recorder/AudioArray;[BLjava/util/ArrayList;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;)V

    invoke-virtual {v1}, Lco/vine/android/recorder/AbstractCombiningRunnable;->combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v2

    goto/16 :goto_71

    :cond_f7
    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/recorder/RecordController;->mOutput:Ljava/lang/String;

    const/16 v3, 0x1e0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mUseMp4:Z

    move/from16 v0, p5

    invoke-static {v2, v0, v3, v4}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_106} :catch_108

    move-result-object v7

    goto :goto_c7

    :catch_108
    move-exception v19

    const-string v2, "failed to write to file. "

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-static {v0, v2, v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto/16 :goto_71
.end method


# virtual methods
.method public autoFocus(II)V
    .registers 4

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/recorder/CameraManager;->setFocusAreas(II)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/CameraManager;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/recorder/BasicVineRecorder;->showFocusIndicator(II)V

    :cond_1c
    return-void
.end method

.method public canChangeFocus()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->canChangeFocus()Z

    move-result v0

    return v0
.end method

.method public finishLastIfNeeded()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_d

    :cond_9
    :goto_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mEncodingThreadWasRunning:Z

    return-void

    :catch_d
    move-exception v0

    goto :goto_9
.end method

.method public getCameraSetting()Lco/vine/android/recorder/CameraSetting;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v0

    return-object v0
.end method

.method public getFinishProcessTask()Lco/vine/android/recorder/BaseFinishProcessTask;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    return-object v0
.end method

.method public getFrameBuffer()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;
    .registers 2

    invoke-static {}, Lco/vine/android/service/ResourceService;->getFrameImage()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .registers 2

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 5

    const-string v0, "Recorder Timestamp: {}."

    iget-wide v1, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v0, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method protected initializeGhostBitmapsIfNeeded()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mGhostBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_13

    invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->createDefaultSizeBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mGhostBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mGhostBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mGhostCanvas:Landroid/graphics/Canvas;

    :cond_13
    return-void
.end method

.method public invalidateGhostFrame()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    return-void
.end method

.method public isAudioReady()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isCameraReady()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v0

    return v0
.end method

.method public isFlashSupported()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isFlashSupported()Z

    move-result v0

    return v0
.end method

.method public isPreviewing()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public isRecordingStarted()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    return v0
.end method

.method public isSurfaceReady()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_8

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public logPreviewSizeExceptionIfNeeded()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mInvalidPreviewSizeException:Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mInvalidPreviewSizeException:Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    :cond_9
    return-void
.end method

.method public makePreview(Lco/vine/android/recorder/RecordSegment;Z)V
    .registers 15

    if-nez p2, :cond_13

    :try_start_2
    iget-object v1, p1, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;

    if-eqz v1, :cond_13

    new-instance v1, Ljava/io/File;

    iget-object v2, p1, Lco/vine/android/recorder/RecordSegment;->videoPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5e

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v2}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->getPreviewVideoPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp_video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_CONTAINER_EXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mHardwareEncoding:Z

    if-eqz v1, :cond_5f

    invoke-virtual {p1}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v1

    iget v9, v1, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mContext:Landroid/content/Context;

    invoke-static {v1, v10, v9}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Landroid/content/Context;Ljava/lang/String;I)Lco/vine/android/recorder/HwVineFrameRecorder;

    move-result-object v3

    new-instance v0, Lco/vine/android/recorder/HwCombiningRunnable;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v1

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    move-object v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/HwCombiningRunnable;-><init>(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/HwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Z)V

    :goto_55
    invoke-virtual {v0}, Lco/vine/android/recorder/AbstractCombiningRunnable;->combineVideos()Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v11

    if-eqz v11, :cond_5e

    invoke-virtual {v11}, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->run()V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    invoke-virtual {p1}, Lco/vine/android/recorder/RecordSegment;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v1

    iget v1, v1, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    const/16 v2, 0x1e0

    iget-boolean v4, p0, Lco/vine/android/recorder/RecordController;->mUseMp4:Z

    invoke-static {v10, v1, v2, v4}, Lco/vine/android/recorder/RecordConfigUtils;->newVideoRecorder(Ljava/lang/String;IIZ)Lco/vine/android/recorder/SwVineFrameRecorder;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/recorder/SwVineFrameRecorder;->start()V

    new-instance v0, Lco/vine/android/recorder/SwCombiningRunnable;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v1

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->getFrameBuffer()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v6

    move-object v2, p1

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lco/vine/android/recorder/SwCombiningRunnable;-><init>(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/SwVineFrameRecorder;Lco/vine/android/recorder/BaseFinishProcessTask;Landroid/graphics/Bitmap;Lcom/googlecode/javacv/cpp/opencv_core$IplImage;Z)V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_87} :catch_88

    goto :goto_55

    :catch_88
    move-exception v8

    const-string v1, "Cannot make previews"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5e
.end method

.method public modifyAntiBanding(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyAntiBanding(Z)V

    return-void
.end method

.method public modifyColorEffects(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyColorEffects(Z)V

    return-void
.end method

.method public modifyExposure(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyExposure(Z)V

    return-void
.end method

.method public modifySceneMode(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifySceneMode(Z)V

    return-void
.end method

.method public modifyWhiteBalance(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyWhiteBalance(Z)V

    return-void
.end method

.method public modifyZoom(Z)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/CameraManager;->modifyZoom(Z)I

    return-void
.end method

.method public offerLastFrame(Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/VideoData;)V
    .registers 10

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    monitor-enter v2

    :try_start_3
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    if-eqz v1, :cond_6e

    iget-wide v3, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-wide v3, v1, Lco/vine/android/recorder/VideoData;->timestamp:J

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    cmp-long v1, v3, v5

    if-lez v1, :cond_1e

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-wide v3, v1, Lco/vine/android/recorder/VideoData;->timestamp:J

    iput-wide v3, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    :cond_1e
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    invoke-virtual {v1, p1}, Lco/vine/android/recorder/VideoData;->setSegment(Lco/vine/android/recorder/RecordSegment;)V

    invoke-virtual {p1}, Lco/vine/android/recorder/RecordSegment;->getVideoData()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->getSharedByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v1, v1, Lco/vine/android/recorder/VideoData;->data:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    new-instance v1, Lco/vine/android/recorder/VideoData;

    const-wide/16 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lco/vine/android/recorder/VideoData;-><init>(J[B)V

    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    invoke-virtual {v1, p1}, Lco/vine/android/recorder/VideoData;->setSegment(Lco/vine/android/recorder/RecordSegment;)V

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mLastVideoSegment:Lco/vine/android/recorder/RecordSegment;

    const-string v1, "Video timestamp {}, actual {}, segment: {}"

    iget-wide v3, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iget-wide v4, v4, Lco/vine/android/recorder/VideoData;->timestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    :goto_6c
    monitor-exit v2

    return-void

    :cond_6e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offer last frame failed, did we ever got a frame? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegmentEverReceivedFrames:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", are we in controller? "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v3}, Lco/vine/android/recorder/CameraManager;->getControllerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    goto :goto_6c

    :catchall_a1
    move-exception v1

    monitor-exit v2
    :try_end_a3
    .catchall {:try_start_3 .. :try_end_a3} :catchall_a1

    throw v1
.end method

.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0, p1}, Lco/vine/android/recorder/BasicVineRecorder;->onAutoFocusComplete(Z)V

    return-void
.end method

.method public onPause()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lco/vine/android/recorder/RecordController;->setRecording(Lco/vine/android/recorder/RecordSegment;)V

    const-string v0, "onPause"

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->setController(Lco/vine/android/recorder/RecordController;)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 14

    const-wide/16 v9, 0x3e8

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegmentEverReceivedFrames:Z

    sget-boolean v5, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v5, :cond_10

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v5}, Lco/vine/android/recorder/CameraManager;->onPreviewFrameReceived()V

    :cond_10
    sget v5, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I

    add-int/lit8 v5, v5, -0x1

    sput v5, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I

    iget-boolean v5, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    if-nez v5, :cond_1f

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v5}, Lco/vine/android/recorder/BasicVineRecorder;->receivedFirstFrameAfterStartingPreview()V

    :cond_1f
    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    cmp-long v5, v5, v3

    if-nez v5, :cond_43

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mStartTime:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_34

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lco/vine/android/recorder/RecordController;->mStartTime:J

    sub-long/2addr v5, v7

    mul-long v3, v5, v9

    :cond_34
    :goto_34
    if-nez p1, :cond_6d

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    new-instance v6, Lco/vine/android/VineLoggingException;

    const-string v7, "Camera is not supported yet."

    invoke-direct {v6, v7}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lco/vine/android/recorder/BasicVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V

    :goto_42
    return-void

    :cond_43
    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mLastAudioTimestamp:J

    iget-wide v7, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    cmp-long v5, v5, v7

    if-nez v5, :cond_52

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    iget-wide v7, p0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    add-long v3, v5, v7

    goto :goto_34

    :cond_52
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    iget-wide v7, p0, Lco/vine/android/recorder/RecordController;->mAudioTimeRecorded:J

    sub-long/2addr v5, v7

    div-long v0, v5, v9

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    add-long v3, v0, v5

    iget-wide v5, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    iput-wide v5, p0, Lco/vine/android/recorder/RecordController;->mLastAudioTimestamp:J

    const-string v5, "Offset {}."

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_34

    :cond_6d
    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v5, p1}, Lco/vine/android/recorder/CameraManager;->removeBufferFromAvailableQueue([B)V

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mVideoRecordLock:[I

    monitor-enter v6

    :try_start_75
    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    if-eqz v2, :cond_96

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    if-nez v5, :cond_8d

    new-instance v5, Lco/vine/android/recorder/VideoData;

    invoke-direct {v5, v3, v4, p1}, Lco/vine/android/recorder/VideoData;-><init>(J[B)V

    iput-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lco/vine/android/recorder/RecordController;->offerLastFrame(Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/VideoData;)V

    :goto_88
    monitor-exit v6

    goto :goto_42

    :catchall_8a
    move-exception v5

    monitor-exit v6
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_8a

    throw v5

    :cond_8d
    :try_start_8d
    new-instance v5, Lco/vine/android/recorder/VideoData;

    invoke-direct {v5, v3, v4, p1}, Lco/vine/android/recorder/VideoData;-><init>(J[B)V

    invoke-virtual {p0, v2, v5}, Lco/vine/android/recorder/RecordController;->offerLastFrame(Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/VideoData;)V

    goto :goto_88

    :cond_96
    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    if-eqz v5, :cond_a3

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v7, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    iget-object v7, v7, Lco/vine/android/recorder/VideoData;->data:[B

    invoke-virtual {v5, v7}, Lco/vine/android/recorder/CameraManager;->addCallbackBuffer([B)V

    :cond_a3
    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;

    iput-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    new-instance v5, Lco/vine/android/recorder/VideoData;

    invoke-direct {v5, v3, v4, p1}, Lco/vine/android/recorder/VideoData;-><init>(J[B)V

    iput-object v5, p0, Lco/vine/android/recorder/RecordController;->mLastFrame:Lco/vine/android/recorder/VideoData;
    :try_end_ae
    .catchall {:try_start_8d .. :try_end_ae} :catchall_8a

    goto :goto_88
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    return-void
.end method

.method public onZoomUpdated(IZ)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0, p1, p2}, Lco/vine/android/recorder/BasicVineRecorder;->onZoomUpdated(IZ)V

    :cond_9
    return-void
.end method

.method public openDefaultCamera(ZZ)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/VineNotSupportedException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v6, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v6

    iget v7, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    invoke-virtual {v5, v6, p1, v7, p2}, Lco/vine/android/recorder/CameraManager;->openDefaultCamera(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;ZIZ)Lco/vine/android/recorder/CameraSetting;

    move-result-object v0

    const-string v5, "Camera Open 1 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastCameraSetting:Lco/vine/android/recorder/CameraSetting;

    if-eqz v0, :cond_63

    const-string v5, "Received camera info."

    invoke-static {v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v5, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v6, v0, Lco/vine/android/recorder/CameraSetting;->originalW:I

    iget v7, v0, Lco/vine/android/recorder/CameraSetting;->originalH:I

    invoke-virtual {v5, v6, v7}, Lco/vine/android/recorder/CameraManager;->setPreviewSize(II)V

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->startPreview()V

    const-string v5, "Camera Open 2 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-boolean v4, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    iget-object v4, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v4, p0}, Lco/vine/android/recorder/BasicVineRecorder;->onCameraReady(Lco/vine/android/recorder/RecordController;)V

    const-string v4, "Camera Open 3 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_62
    return v3

    :cond_63
    const-string v5, "Failed to open camera: {}."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    goto :goto_62
.end method

.method public refreshBufferMax(Lco/vine/android/recorder/RecordSession;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mVideoDataBufferMax:[B

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioDataBufferMax:Lco/vine/android/recorder/AudioArray;

    return-void
.end method

.method public releaseCallbacks()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_e

    const-string v0, "releasing surface holder callback"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_e
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1d

    const-string v0, "releasing surface holder callback"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1d
    return-void
.end method

.method protected releaseCameraAndPreview(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Release camera and preview."

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Controller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->releaseCameraAndPreview(Ljava/lang/String;)V

    return-void
.end method

.method public releaseCameraResources()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->releaseCameraResources()V

    return-void
.end method

.method public releaseParent()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    return-void
.end method

.method public releaseResources()V
    .registers 3

    const/4 v1, 0x0

    const-string v0, "releaseResources"

    invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastAudioRecordingSegment:Lco/vine/android/recorder/RecordSegment;

    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mLastVideoSegment:Lco/vine/android/recorder/RecordSegment;

    iput-object v1, p0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public requestGhostDrawing(Z)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    if-eqz v0, :cond_d

    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->initializeGhostBitmapsIfNeeded()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/recorder/RecordController;->updateGhostBitmap(Z)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lco/vine/android/recorder/RecordController$GhostUpdateRunnable;

    invoke-direct {v1, p0}, Lco/vine/android/recorder/RecordController$GhostUpdateRunnable;-><init>(Lco/vine/android/recorder/RecordController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_d
.end method

.method public setAudioTimestamp(I)V
    .registers 4

    int-to-long v0, p1

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    return-void
.end method

.method public setAudioTrim(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mAudioTrim:Z

    return-void
.end method

.method public setAutoFocus(Z)V
    .registers 5

    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    :try_start_2
    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/CameraManager;->startContinuousAutoFocus(Landroid/hardware/Camera$Parameters;)Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-object v2, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/recorder/CameraManager;->stopContinuousFocus(Landroid/hardware/Camera$Parameters;)Z

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z

    if-nez v1, :cond_19

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1, p0}, Lco/vine/android/recorder/CameraManager;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v1, 0x1

    iput-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mIsFocusing:Z
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_40} :catch_41

    goto :goto_19

    :catch_41
    move-exception v0

    const-string v1, "It\'s ok if we failed to auto focus here."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_19
.end method

.method public setFinishProcessTask(Lco/vine/android/recorder/BaseFinishProcessTask;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    iget-object v1, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/AbstractEncodingRunnable;->setAsyncTask(Lco/vine/android/recorder/BaseFinishProcessTask;)V

    :cond_d
    return-void
.end method

.method public setPreviewSurface(Landroid/view/View;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0, p0}, Lco/vine/android/recorder/CameraManager;->setController(Lco/vine/android/recorder/RecordController;)V

    instance-of v0, p1, Landroid/view/TextureView;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/RecordController;->switchSurface(Landroid/view/TextureView;)V

    :cond_f
    instance-of v0, p1, Landroid/view/SurfaceView;

    if-eqz v0, :cond_18

    check-cast p1, Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/RecordController;->switchSurface(Landroid/view/SurfaceView;)V

    :cond_18
    return-void
.end method

.method public setRecording(Lco/vine/android/recorder/RecordSegment;)V
    .registers 4

    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_1c

    if-eqz p1, :cond_1a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegmentEverReceivedFrames:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/RecordController;->mStartTime:J

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lco/vine/android/recorder/RecordSegment;->setCameraSetting(Lco/vine/android/recorder/CameraSetting;)Lco/vine/android/recorder/RecordSegment;

    :cond_1a
    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    :cond_1c
    return-void
.end method

.method public setRecordingAudio(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->recordingAudio:Z

    return-void
.end method

.method public setSessionFeatureDisabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/recorder/RecordController;->mSessionFeatureDisabled:Z

    return-void
.end method

.method public setVideoTimeStamp(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    return-void
.end method

.method public declared-synchronized start(Landroid/app/Activity;Ljava/lang/String;II)Z
    .registers 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/recorder/RecordController$RecordControllerReadyStartedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v3}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v3

    if-nez v3, :cond_16

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You have to choose a camera via open() first."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_16
    :try_start_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-nez v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v3, :cond_2a

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "You have to set a preview surface via switchSurface first."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz v3, :cond_36

    new-instance v3, Lco/vine/android/recorder/RecordController$RecordControllerReadyStartedException;

    invoke-direct {v3}, Lco/vine/android/recorder/RecordController$RecordControllerReadyStartedException;-><init>()V

    throw v3

    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v3}, Lco/vine/android/recorder/CameraManager;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v38

    if-nez v38, :cond_48

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Camera is ready but camera setting is null, something is terribly wrong."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_48
    const-string v3, "START Recorder, with ResourceService ready? {}."

    sget-boolean v4, Lco/vine/android/service/ResourceService;->IS_READY:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_53
    .catchall {:try_start_16 .. :try_end_53} :catchall_13

    :try_start_53
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_13
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_208

    :goto_56
    :try_start_56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/recorder/RecordController;->mIsRecordingEnded:Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    if-eqz v3, :cond_86

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iget-boolean v3, v3, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    if-eqz v3, :cond_86

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->forceQuit:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_13

    if-eqz v3, :cond_86

    :try_start_7f
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_13
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_86} :catch_212

    :cond_86
    :goto_86
    :try_start_86
    new-instance v3, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v3, v0, v1, v2, v4}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;-><init>(Lco/vine/android/recorder/RecordController;Ljava/lang/String;ILco/vine/android/recorder/RecordController$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const-string v3, "Audio recorder initialized with count {}."

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "Starting timestamps: {}"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/recorder/RecordController;->mVideoTimestamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v5, v0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    invoke-direct/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->clearLastFrames()V

    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const-string v5, "AudioRunnable"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-wide/16 v3, 0x0

    move-object/from16 v0, p0

    iput-wide v3, v0, Lco/vine/android/recorder/RecordController;->mStartTime:J

    move-object/from16 v0, v38

    iget v9, v0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    const/16 v45, 0x1e0

    sget-boolean v3, Lco/vine/android/recorder/SwVineFrameRecorder;->hasEverSuccessfullyLoaded:Z
    :try_end_e0
    .catchall {:try_start_86 .. :try_end_e0} :catchall_13

    if-nez v3, :cond_e5

    :try_start_e2
    invoke-static/range {p1 .. p1}, Lco/vine/android/recorder/SwVineFrameRecorder;->tryLoad(Landroid/content/Context;)V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_13
    .catch Lco/vine/android/recorder/SwVineFrameRecorder$Exception; {:try_start_e2 .. :try_end_e5} :catch_21a

    :cond_e5
    :goto_e5
    :try_start_e5
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    invoke-virtual {v3}, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->updateTimestamp()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lco/vine/android/recorder/RecordConfigUtils;->VIDEO_CONTAINER_EXT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lco/vine/android/recorder/RecordController;->mOutput:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    iput v9, v0, Lco/vine/android/recorder/RecordController;->mFrameRate:I

    const-string v3, "start 1 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    invoke-static/range {p1 .. p1}, Lco/vine/android/service/ResourceService;->getThumbnailBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lco/vine/android/service/ResourceService;->getRenderScript(Landroid/content/Context;)Landroid/support/v8/renderscript/RenderScript;

    move-result-object v42

    invoke-static/range {p1 .. p1}, Lco/vine/android/service/ResourceService;->getThumbnailMatrix(Landroid/content/Context;)Landroid/graphics/Matrix;

    move-result-object v17

    invoke-static/range {p1 .. p1}, Lco/vine/android/service/ResourceService;->getThumbnailCanvas(Landroid/content/Context;)Landroid/graphics/Canvas;

    move-result-object v18

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPreviewCanvas()Landroid/graphics/Canvas;

    move-result-object v19

    const-string v3, "start 4 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    invoke-static {}, Lco/vine/android/service/ResourceService;->getPictureConverter()Lco/vine/android/recorder/PictureConverter;

    move-result-object v13

    if-eqz v13, :cond_227

    move-object/from16 v0, v38

    invoke-virtual {v13, v0}, Lco/vine/android/recorder/PictureConverter;->updateSettingsIfNeeded(Lco/vine/android/recorder/CameraSetting;)Z

    :goto_158
    const-string v3, "start 5 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    sget-boolean v3, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v3, :cond_196

    new-instance v40, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v40 .. v40}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v3, v3, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/app/ActivityManager;

    move-object/from16 v0, v37

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v3, "[mem] Avaliable bytes: {}."

    move-object/from16 v0, v40

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_196
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v3

    iget-wide v3, v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->memRatio:D

    const-wide/high16 v5, 0x3ff0

    cmpl-double v3, v3, v5

    if-nez v3, :cond_24c

    const/16 v46, 0x1

    :goto_1a8
    const/16 v16, 0x0

    sget-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueue:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_25b

    sget-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueueReal:Lco/vine/android/recorder/ByteBufferQueue;

    if-nez v3, :cond_25b

    new-instance v16, Lco/vine/android/recorder/ByteBufferQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v3

    iget v3, v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v4}, Lco/vine/android/recorder/CameraManager;->getFrameSize()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v5}, Lco/vine/android/recorder/BasicVineRecorder;->getMemoryResponder()Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5}, Lco/vine/android/recorder/ByteBufferQueue;-><init>(IILco/vine/android/recorder/ByteBufferQueue$MemoryResponder;)V

    if-eqz v46, :cond_250

    sput-object v16, Lco/vine/android/recorder/RecordController;->sByteBufferQueueReal:Lco/vine/android/recorder/ByteBufferQueue;

    :goto_1d7
    const-string v3, "start 6 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v3}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v3

    if-nez v3, :cond_2b3

    new-instance v3, Lco/vine/android/VineLoggingException;

    const-string v4, "Camera was released already. "

    invoke-direct {v3, v4}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->forceQuit:Z
    :try_end_205
    .catchall {:try_start_e5 .. :try_end_205} :catchall_13

    const/4 v3, 0x0

    :goto_206
    monitor-exit p0

    return v3

    :catch_208
    move-exception v39

    :try_start_209
    const-string v3, "Finish last if needed Failed."

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_56

    :catch_212
    move-exception v39

    const-string v3, "Error join audio thread."

    invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto/16 :goto_86

    :catch_21a
    move-exception v39

    const-string v3, "Failed to load native libraries."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v39

    invoke-static {v0, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_225
    .catchall {:try_start_209 .. :try_end_225} :catchall_13

    goto/16 :goto_e5

    :cond_227
    :try_start_227
    new-instance v41, Lco/vine/android/recorder/PictureConverter;

    const/16 v3, 0x1e0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v3, v2}, Lco/vine/android/recorder/PictureConverter;-><init>(Landroid/support/v8/renderscript/RenderScript;ILco/vine/android/recorder/CameraSetting;)V
    :try_end_234
    .catchall {:try_start_227 .. :try_end_234} :catchall_13
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_227 .. :try_end_234} :catch_23b

    :try_start_234
    invoke-static/range {v41 .. v41}, Lco/vine/android/service/ResourceService;->setPictureConverter(Lco/vine/android/recorder/PictureConverter;)V

    move-object/from16 v13, v41

    goto/16 :goto_158

    :catch_23b
    move-exception v39

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    new-instance v4, Lco/vine/android/VineLoggingException;

    const-string v5, "Camera is not supported yet."

    invoke-direct {v4, v5}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lco/vine/android/recorder/BasicVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V

    const/4 v3, 0x0

    goto :goto_206

    :cond_24c
    const/16 v46, 0x0

    goto/16 :goto_1a8

    :cond_250
    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueue:Ljava/lang/ref/WeakReference;

    goto/16 :goto_1d7

    :cond_25b
    if-eqz v46, :cond_28d

    sget-object v16, Lco/vine/android/recorder/RecordController;->sByteBufferQueueReal:Lco/vine/android/recorder/ByteBufferQueue;

    :cond_25f
    :goto_25f
    if-nez v16, :cond_29a

    new-instance v16, Lco/vine/android/recorder/ByteBufferQueue;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v3

    iget v3, v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v4}, Lco/vine/android/recorder/CameraManager;->getFrameSize()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v5}, Lco/vine/android/recorder/BasicVineRecorder;->getMemoryResponder()Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v0, v3, v4, v5}, Lco/vine/android/recorder/ByteBufferQueue;-><init>(IILco/vine/android/recorder/ByteBufferQueue$MemoryResponder;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueue:Ljava/lang/ref/WeakReference;

    goto/16 :goto_1d7

    :cond_28d
    sget-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueue:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_25f

    sget-object v3, Lco/vine/android/recorder/RecordController;->sByteBufferQueue:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lco/vine/android/recorder/ByteBufferQueue;

    goto :goto_25f

    :cond_29a
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v3}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v3

    iget v3, v3, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->bufferCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v4}, Lco/vine/android/recorder/CameraManager;->getFrameSize()I

    move-result v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Lco/vine/android/recorder/ByteBufferQueue;->reset(II)V

    goto/16 :goto_1d7

    :cond_2b3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lco/vine/android/recorder/RecordController;->mHardwareEncoding:Z

    if-eqz v3, :cond_304

    invoke-static {}, Lco/vine/android/service/ResourceService;->getFrameBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    new-instance v3, Lco/vine/android/recorder/HwEncodingRunnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v0, p0

    iget-object v6, v0, Lco/vine/android/recorder/RecordController;->mVideoDataBufferMax:[B

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v14, p4

    invoke-direct/range {v3 .. v19}, Lco/vine/android/recorder/HwEncodingRunnable;-><init>(Landroid/content/Context;Ljava/util/concurrent/ConcurrentLinkedQueue;[BLco/vine/android/recorder/RecordController;Ljava/lang/String;ILjava/nio/ByteBuffer;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lco/vine/android/recorder/PictureConverter;ILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/ByteBufferQueue;Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    :goto_2dc
    new-instance v3, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    const-string v5, "EncodingRunnable"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const-string v3, "start 7 took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v43

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v3, 0x1

    goto/16 :goto_206

    :cond_304
    new-instance v20, Lco/vine/android/recorder/SwEncodingRunnable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mDataQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mVideoDataBufferMax:[B

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/recorder/RecordController;->getFrameBuffer()Lcom/googlecode/javacv/cpp/opencv_core$IplImage;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordController;->mUseMp4:Z

    move/from16 v36, v0

    move-object/from16 v23, p0

    move-object/from16 v24, p2

    move/from16 v25, v9

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move-object/from16 v29, v13

    move/from16 v30, p4

    move-object/from16 v32, v16

    move-object/from16 v33, v17

    move-object/from16 v34, v18

    move-object/from16 v35, v19

    invoke-direct/range {v20 .. v36}, Lco/vine/android/recorder/SwEncodingRunnable;-><init>(Ljava/util/concurrent/ConcurrentLinkedQueue;[BLco/vine/android/recorder/RecordController;Ljava/lang/String;ILcom/googlecode/javacv/cpp/opencv_core$IplImage;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Lco/vine/android/recorder/PictureConverter;ILco/vine/android/recorder/CameraManager;Lco/vine/android/recorder/ByteBufferQueue;Landroid/graphics/Matrix;Landroid/graphics/Canvas;Landroid/graphics/Canvas;Z)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;
    :try_end_341
    .catchall {:try_start_234 .. :try_end_341} :catchall_13

    goto :goto_2dc
.end method

.method public startPreview()V
    .registers 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->isPreviewing()Z

    move-result v1

    if-nez v1, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v9

    if-eqz v9, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v3, v9, Lco/vine/android/recorder/CameraSetting;->originalFrameRate:I

    invoke-virtual {v1, v3}, Lco/vine/android/recorder/CameraManager;->setFrameRate(I)I

    move-result v1

    iput v1, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iget v1, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    if-lez v1, :cond_7b

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v2

    const-wide/32 v3, 0xf4240

    iget v1, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    int-to-long v5, v1

    div-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    const-string v1, "Determined frame rate: {}, frame time: {}."

    iget v3, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/recorder/RecordController;->mFrameTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_54
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_7c

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget v6, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/recorder/RecordController;->mRotation:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/graphics/SurfaceTexture;ZZIII)V

    :cond_7b
    :goto_7b
    return-void

    :cond_7c
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget v6, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/recorder/RecordController;->mRotation:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;ZZIII)V
    :try_end_9d
    .catch Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException; {:try_start_54 .. :try_end_9d} :catch_9e

    goto :goto_7b

    :catch_9e
    move-exception v11

    const/16 v1, 0xf0

    iput v1, v9, Lco/vine/android/recorder/CameraSetting;->originalH:I

    const/16 v1, 0x140

    iput v1, v9, Lco/vine/android/recorder/CameraSetting;->originalW:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CAUGHT INVALID PREVIEW SIZE, trying to use a smaller size again: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v9, Lco/vine/android/recorder/CameraSetting;->originalW:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " * "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v9, Lco/vine/android/recorder/CameraSetting;->originalH:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ff: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, v9, Lco/vine/android/recorder/CameraSetting;->frontFacing:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    if-eqz v1, :cond_109

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v1, v1, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_109

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v1, v1, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lco/vine/android/util/SystemUtil;->getDisplaySize(Landroid/app/Activity;)Landroid/graphics/Point;

    move-result-object v10

    const-string v1, "Screen size: {} * {}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v10, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, v10, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_109
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v1}, Lco/vine/android/recorder/CameraManager;->printSupportedPreviewSizes()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lco/vine/android/recorder/RecordController;->mInvalidPreviewSizeException:Lco/vine/android/recorder/CameraManager$InvalidPreviewSizeException;

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget v3, v9, Lco/vine/android/recorder/CameraSetting;->originalW:I

    iget v4, v9, Lco/vine/android/recorder/CameraSetting;->originalH:I

    invoke-virtual {v1, v3, v4}, Lco/vine/android/recorder/CameraManager;->setPreviewSize(II)V

    :try_start_11f
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    if-eqz v1, :cond_14f

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget v6, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/recorder/RecordController;->mRotation:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/graphics/SurfaceTexture;ZZIII)V
    :try_end_146
    .catch Ljava/lang/Exception; {:try_start_11f .. :try_end_146} :catch_148

    goto/16 :goto_7b

    :catch_148
    move-exception v12

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_14f
    :try_start_14f
    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lco/vine/android/recorder/RecordController;->mAutoFocus:Z

    iget v6, v9, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move-object/from16 v0, p0

    iget v7, v0, Lco/vine/android/recorder/RecordController;->mRotation:I

    move-object/from16 v0, p0

    iget-wide v13, v0, Lco/vine/android/recorder/RecordController;->mAudioTimestamp:J

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    long-to-int v8, v13

    invoke-virtual/range {v1 .. v8}, Lco/vine/android/recorder/CameraManager;->startPreview(Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;Landroid/view/Surface;ZZIII)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_170} :catch_148

    goto/16 :goto_7b
.end method

.method public stop(ZZ)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
    .registers 15

    const/4 v11, 0x0

    const/4 v10, 0x0

    iget-boolean v8, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-nez v8, :cond_12

    sget-boolean v8, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z

    if-eqz v8, :cond_12

    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "You can\'t stop before you have start it."

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v8, "Stop audio runnable and recording."

    invoke-static {v8}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lco/vine/android/recorder/RecordController;->mRunAudioThread:Z

    iget-boolean v8, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz v8, :cond_5c

    const-string v8, "Finishing recording, calling stop and release on recorder"

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    if-eqz p2, :cond_8d

    iget-boolean v8, p0, Lco/vine/android/recorder/RecordController;->mFastEncoding:Z

    if-eqz v8, :cond_7e

    new-instance v3, Ljava/lang/Thread;

    new-instance v8, Lco/vine/android/recorder/RecordController$1;

    invoke-direct {v8, p0}, Lco/vine/android/recorder/RecordController$1;-><init>(Lco/vine/android/recorder/RecordController;)V

    invoke-direct {v3, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_39} :catch_84

    :try_start_39
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3c} :catch_f4

    move-object v2, v3

    :goto_3d
    :try_start_3d
    const-string v8, "Waiting..........."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    const/4 v8, 0x0

    iput-boolean v8, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz p1, :cond_9e

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    if-eqz v8, :cond_50

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mEncodingRunnable:Lco/vine/android/recorder/AbstractEncodingRunnable;

    invoke-virtual {v8}, Lco/vine/android/recorder/AbstractEncodingRunnable;->terminate()V

    :cond_50
    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    if-eqz v8, :cond_59

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mProcessThread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->interrupt()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_59} :catch_84

    :cond_59
    :try_start_59
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_94

    :cond_5c
    :goto_5c
    const/4 v8, 0x1

    :try_start_5d
    iput-boolean v8, p0, Lco/vine/android/recorder/RecordController;->mIsRecordingEnded:Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5f} :catch_84

    :goto_5f
    iput-boolean v10, p0, Lco/vine/android/recorder/RecordController;->isRecordingStarted:Z

    if-eqz p2, :cond_e3

    const-string v8, "Force stop"

    invoke-virtual {p0, v8}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview(Ljava/lang/String;)V

    :goto_68
    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    if-eqz v8, :cond_73

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mFinishProcessTask:Lco/vine/android/recorder/BaseFinishProcessTask;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, Lco/vine/android/recorder/BaseFinishProcessTask;->publish(I)V

    :cond_73
    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_78
    .catch Ljava/lang/InterruptedException; {:try_start_75 .. :try_end_78} :catch_ed

    :cond_78
    :goto_78
    const-string v8, "Recorder is stopped."

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    return-object v1

    :cond_7e
    :try_start_7e
    const-string v8, "Stop"

    invoke-virtual {p0, v8}, Lco/vine/android/recorder/RecordController;->releaseCameraAndPreview(Ljava/lang/String;)V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_83} :catch_84

    goto :goto_3d

    :catch_84
    move-exception v0

    :goto_85
    const-string v8, "Stop failed"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5f

    :cond_8d
    :try_start_8d
    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lco/vine/android/recorder/CameraManager;->setController(Lco/vine/android/recorder/RecordController;)V

    goto :goto_3d

    :catch_94
    move-exception v0

    const-string v8, "discard failed."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0, v8, v9}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5c

    :cond_9e
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    if-ne v8, v9, :cond_ac

    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/recorder/RecordController;->mEncodingThreadWasRunning:Z

    goto :goto_5c

    :cond_ac
    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v8}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z

    move-result v8

    if-nez v8, :cond_b7

    const/4 v8, 0x1

    iput-boolean v8, p0, Lco/vine/android/recorder/RecordController;->mEncodingThreadWasRunning:Z

    :cond_b7
    invoke-virtual {p0}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v8}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z

    move-result v8

    if-nez v8, :cond_5c

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lco/vine/android/recorder/RecordController;->writeToFile(Z)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v4

    const-string v8, "Stop wait time: {}."

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V

    sget-wide v8, Lco/vine/android/recorder/RecordController;->sMaxKnownStopTime:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_5c

    sput-wide v6, Lco/vine/android/recorder/RecordController;->sMaxKnownStopTime:J
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_e1} :catch_84

    goto/16 :goto_5c

    :cond_e3
    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->clearLastFrames()V

    iget-object v8, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v8, v11}, Lco/vine/android/recorder/CameraManager;->setController(Lco/vine/android/recorder/RecordController;)V

    goto/16 :goto_68

    :catch_ed
    move-exception v0

    const-string v8, "Camera still not released?!"

    invoke-static {v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;)V

    goto :goto_78

    :catch_f4
    move-exception v0

    move-object v2, v3

    goto :goto_85
.end method

.method public stopZoom()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->stopSmoothZoom()Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceUpdated()V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 3

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurface:Landroid/view/Surface;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceCreated()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->onSurfaceDestroyed()V

    return-void
.end method

.method public swapSession()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mVideoDataBufferMax:[B

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioDataBufferMax:Lco/vine/android/recorder/AudioArray;

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    invoke-direct {p0}, Lco/vine/android/recorder/RecordController;->clearLastFrames()V

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastLastFrame:Lco/vine/android/recorder/VideoData;

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastVideoSegment:Lco/vine/android/recorder/RecordSegment;

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mLastAudioRecordingSegment:Lco/vine/android/recorder/RecordSegment;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mIsRecordingEnded:Z

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mOutput:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iget-boolean v0, v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->isInitialized:Z

    if-eqz v0, :cond_45

    const-string v0, "Force quit audio runnable."

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lco/vine/android/recorder/RecordController$AudioRecordRunnable;->forceQuit:Z

    :cond_45
    :try_start_45
    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_4a
    .catch Ljava/lang/InterruptedException; {:try_start_45 .. :try_end_4a} :catch_51

    :cond_4a
    :goto_4a
    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mAudioThread:Ljava/lang/Thread;

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mAudioRunnable:Lco/vine/android/recorder/RecordController$AudioRecordRunnable;

    iput-object v2, p0, Lco/vine/android/recorder/RecordController;->mGhostFrame:Lco/vine/android/recorder/VideoData;

    return-void

    :catch_51
    move-exception v0

    goto :goto_4a
.end method

.method public switchFlash()V
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    iget-boolean v1, p0, Lco/vine/android/recorder/RecordController;->mFlash:Z

    invoke-virtual {v0, v1}, Lco/vine/android/recorder/CameraManager;->changeFlashState(Z)V

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public switchImageStabilization()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->switchImageStabilization()V

    return-void
.end method

.method public switchSurface(Landroid/view/SurfaceView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public switchSurface(Landroid/view/TextureView;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/recorder/RecordController;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :cond_1e
    return-void
.end method

.method public updateRotation(Landroid/app/Activity;)V
    .registers 3

    invoke-static {p1}, Lco/vine/android/recorder/CameraManager;->getCameraRotation(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lco/vine/android/recorder/RecordController;->mRotation:I

    return-void
.end method

.method public waitForPreviewToStart()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mCameraManager:Lco/vine/android/recorder/CameraManager;

    invoke-virtual {v0}, Lco/vine/android/recorder/CameraManager;->waitForPreviewToStart()V

    return-void
.end method

.method public wasEncodingThreadRunning()Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/RecordController;->mEncodingThreadWasRunning:Z

    return v0
.end method

.method public writeToFile(Z)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
    .registers 9

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mParent:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;

    move-result-object v6

    invoke-virtual {v6}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v6}, Lco/vine/android/recorder/RecordSession;->getVideoData()[B

    move-result-object v2

    invoke-virtual {v6}, Lco/vine/android/recorder/RecordSession;->getAudioData()Lco/vine/android/recorder/AudioArray;

    move-result-object v3

    iget-object v0, p0, Lco/vine/android/recorder/RecordController;->mLastCameraSetting:Lco/vine/android/recorder/CameraSetting;

    iget v5, v0, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    move-object v0, p0

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/RecordController;->writeToFile(Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;ZI)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v0

    return-object v0
.end method

.method public writeToFile(Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/recorder/RecordSegment;",
            ">;[B",
            "Lco/vine/android/recorder/AudioArray;",
            "I)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/RecordController;->writeToFile(Ljava/util/ArrayList;[BLco/vine/android/recorder/AudioArray;ZI)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    move-result-object v6

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;->run()V

    :cond_f
    return-void
.end method
