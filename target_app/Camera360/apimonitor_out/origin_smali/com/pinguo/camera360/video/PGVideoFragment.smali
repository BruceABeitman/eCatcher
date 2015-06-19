.class public Lcom/pinguo/camera360/video/PGVideoFragment;
.super Lcom/pinguo/camera360/video/VideoFragment;
.source "PGVideoFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;
.implements Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;
.implements Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;,
        Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;,
        Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;
    }
.end annotation


# static fields
.field private static final CANCEL_ENTER_APP_SAVE_SCREEN:I = 0x3

.field private static final CLEAR_SCREEN_DELAY:I = 0x1

.field private static final SCREEN_DELAY:I = 0x1d4c0

.field private static final SET_VIDEO_PARAMETERS_WHEN_IDLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = null

.field private static final UPDATE_RECORD_TIME:I = 0x2


# instance fields
.field private final mAutoFocusCallback:Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoUri:Landroid/net/Uri;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private final mHandler:Landroid/os/Handler;

.field private mIsCanStoreVideoFile:Z

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field private mOrientation:I

.field private mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

.field private mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordingStartTime:J

.field private mRecordingTimeCountsDown:Z

.field private mSnapshotHelper:Lcom/pinguo/camera360/video/util/SnapshotHelper;

.field private mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

.field private mStorageSpace:J

.field private mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

.field private mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

.field private mUpdateSet:I

.field private mVideoFilename:Ljava/lang/String;

.field private mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

.field mVolumePressDelayHandler:Landroid/os/Handler;

.field mVolumePressDelayRunnable:Ljava/lang/Runnable;

.field protected redressJpeg:Z

.field protected redressJpegDegree:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/video/VideoFragment;-><init>()V

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    iput v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mOrientation:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingTimeCountsDown:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/camera360/video/PGVideoFragment$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/video/PGVideoFragment$1;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    iput v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    new-instance v0, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;

    invoke-direct {v0, p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$MainHandler;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;

    invoke-direct {v0, p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mAutoFocusCallback:Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/PGVideoFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateRecordingTime()V

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/video/PGVideoFragment;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V

    return-void
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopVideoRecording()V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/video/PGVideoFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateThumbnailButton(Z)V

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateMyCenterNewMsgView()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/video/PGVideoFragment;)Lcom/pinguo/camera360/video/view/PGVideoView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    return-object v0
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startVideoRecording()V

    return-void
.end method

.method private addVideoToMediaStore()V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "addVideoToMediaStore enter"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "content://media/external/video/media"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v4

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "addVideoToMediaStore length ="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "_size"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v4, v5}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoLength(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    sub-long v0, v7, v9

    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_b8

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "duration"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v0, v1}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoTime(J)V

    :goto_5f
    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "addVideoToMediaStore start"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_67
    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v8, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v7, v6, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "addVideoToMediaStore insert system DB done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    new-instance v7, Lcom/pinguo/camera360/video/PGVideoFragment$5;

    invoke-direct {v7, p0, v3}, Lcom/pinguo/camera360/video/PGVideoFragment$5;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/VideoInfo;)V

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/PGVideoFragment$5;->start()V

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "addVideoToMediaStore insert camera360 DB done"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v7, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v7, :cond_a0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "android.hardware.action.NEW_VIDEO"

    iget-object v10, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a0
    .catchall {:try_start_67 .. :try_end_a0} :catchall_ed
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_a0} :catch_ce

    :cond_a0
    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Current video URI: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b7
    return-void

    :cond_b8
    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Video duration <= 0 : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f

    :catch_ce
    move-exception v2

    const/4 v7, 0x0

    :try_start_d0
    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoFilename:Ljava/lang/String;
    :try_end_d5
    .catchall {:try_start_d0 .. :try_end_d5} :catchall_ed

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Current video URI: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b7

    :catchall_ed
    move-exception v7

    sget-object v8, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Current video URI: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    throw v7
.end method

.method private cleanupEmptyFile()V
    .registers 6

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    if-eqz v1, :cond_35

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_35

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Empty video file deleted: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    :cond_35
    return-void
.end method

.method private convertOutputFormatToFileExt(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const-string/jumbo v0, ".mp4"

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, ".3gp"

    goto :goto_6
.end method

.method private convertOutputFormatToMimeType(I)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const-string/jumbo v0, "video/mp4"

    :goto_6
    return-object v0

    :cond_7
    const-string/jumbo v0, "video/3gpp"

    goto :goto_6
.end method

.method private couldSwitchCamera()Z
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getCameraNumber()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/video/view/PGVideoView;
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/video/view/PGVideoView;-><init>(Landroid/view/View;Landroid/content/Context;)V

    return-object v0
.end method

.method private deleteVideoFile(Ljava/lang/String;)V
    .registers 6

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Deleting video "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_35

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not delete "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    return-void
.end method

.method private finishRecorderAndCloseCamera()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopVideoRecording()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getThumbnail(Z)V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->releaseMediaRecorder()V

    goto :goto_b
.end method

.method private generateVideoFilename(Landroid/media/CamcorderProfile;)V
    .registers 13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v7, 0x7f080211

    invoke-virtual {p0, v7}, Lcom/pinguo/camera360/video/PGVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcom/pinguo/camera360/video/util/Utils;->createName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v8}, Lcom/pinguo/camera360/video/PGVideoFragment;->convertOutputFormatToFileExt(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v7, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v7}, Lcom/pinguo/camera360/video/PGVideoFragment;->convertOutputFormatToMimeType(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->getVideoSavePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    new-instance v7, Landroid/content/ContentValues;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    new-instance v7, Lcom/pinguo/camera360/video/VideoInfo;

    invoke-direct {v7}, Lcom/pinguo/camera360/video/VideoInfo;-><init>()V

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    const-string/jumbo v7, "FFF"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "title = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " filename = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " dataToken = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "mVideoFilename = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "FFF"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "width = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "_display_name"

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "mime_type"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "_data"

    iget-object v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "resolution"

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/lib/location/PGLocationManager;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getGpsState()Z

    move-result v7

    if-eqz v7, :cond_152

    if-eqz v3, :cond_152

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "latitude"

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLatitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string/jumbo v8, "longitude"

    invoke-virtual {v3}, Lcom/pinguo/lib/location/data/PGLocation;->getLongitude()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v3}, Lcom/pinguo/camera360/video/VideoInfo;->setLocation(Lcom/pinguo/lib/location/data/PGLocation;)V

    :cond_152
    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    const/16 v8, 0xe

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/video/VideoInfo;->setCameraModeIndex(I)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v5}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoTitle(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v2}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoFileName(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v0, v1}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoTakenTime(J)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    invoke-virtual {v7, v4}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoMime(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    iget-object v8, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoFilePath(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoWidth(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    iget v8, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/pinguo/camera360/video/VideoInfo;->setVideoHeight(Ljava/lang/String;)V

    sget-object v7, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "New video filename: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getRotation()I
    .registers 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getOrientation()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_78

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    if-eqz v2, :cond_f

    iget v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    :cond_f
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/VideoModel;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_79

    add-int/lit16 v2, v0, 0x10e

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getOrientation()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, 0x168

    rem-int/lit16 v1, v2, 0x168

    :goto_22
    const-string/jumbo v2, "orientation"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rotate:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",screenOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getOrientation()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",systemOrientation:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/pinguo/lib/util/SystemUtils;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",cameraId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getCameraId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",redressDegree:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_78
    return v1

    :cond_79
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getOrientation()I

    move-result v2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x5a

    rem-int/lit16 v1, v2, 0x168

    goto :goto_22
.end method

.method private getThumbnail(Z)V
    .registers 10

    const/4 v7, 0x0

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "getThumbnail"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    if-eqz v0, :cond_2e

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoFilename:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v2, v2, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    new-instance v5, Lcom/pinguo/camera360/video/PGVideoFragment$3;

    invoke-direct {v5, p0, v6}, Lcom/pinguo/camera360/video/PGVideoFragment$3;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/VideoInfo;)V

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->createNewThumbnail(Ljava/lang/String;ILandroid/net/Uri;ZLcom/pinguo/camera360/video/util/ThumbnailHelper$OnThumbnailCreateCallback;)V

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoInfo:Lcom/pinguo/camera360/video/VideoInfo;

    iput-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoValues:Landroid/content/ContentValues;

    :cond_2e
    return-void
.end method

.method private hideAdvanceParameterUI()V
    .registers 4

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;

    invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    new-instance v0, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;-><init>(IZ)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->setFromTag(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoQualityIndicator()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateTimerView()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method private initRedressDegree()I
    .registers 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/VideoModel;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontRedress()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    if-eqz v1, :cond_35

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getFrontRedressDegree()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->getFrontDiffDegreeToCamera()I

    move-result v0

    if-lez v0, :cond_34

    iget v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    sub-int/2addr v1, v0

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v1, v1, 0x168

    iput v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    :cond_34
    :goto_34
    return v2

    :cond_35
    iput v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    goto :goto_34

    :cond_38
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackRedress()Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpeg:Z

    if-eqz v1, :cond_51

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getBackRedressDegree()I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    goto :goto_34

    :cond_51
    iput v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->redressJpegDegree:I

    goto :goto_34
.end method

.method private initVideoFocusManager()V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    if-eqz v3, :cond_36

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-direct {v0, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/util/MathUtils;->scaleSizeToBound(Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v3, p0, v4, v5}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->initializeFocusParameters(Lcom/pinguo/camera360/video/util/VideoFocusManager$Listener;II)V

    :cond_36
    return-void
.end method

.method private initializeRecorder()V
    .registers 11

    sget-object v6, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "initializeRecorder"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v6, :cond_d

    :goto_c
    return-void

    :cond_d
    :try_start_d
    new-instance v6, Landroid/media/MediaRecorder;

    invoke-direct {v6}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_6d

    :cond_14
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getVideoProfile()Landroid/media/CamcorderProfile;

    move-result-object v5

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v6

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->initializeRecorder(Landroid/media/MediaRecorder;)V

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/video/PGVideoFragment;->generateVideoFilename(Landroid/media/CamcorderProfile;)V

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    invoke-interface {v6}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_40

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    :cond_40
    iget-wide v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/32 v8, 0x2faf080

    sub-long v2, v6, v8

    :try_start_47
    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v2, v3}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_4c} :catch_97

    :goto_4c
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v6

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getRotation()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->adaptVideoRotation(I)I

    move-result v4

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v4}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :try_start_5d
    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_62} :catch_76

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto :goto_c

    :catch_6d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v6, :cond_14

    goto :goto_c

    :catch_76
    move-exception v0

    sget-object v6, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "prepare failed for "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->releaseMediaRecorder()V

    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    :catch_97
    move-exception v6

    goto :goto_4c
.end method

.method private keepScreenOn()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private keepScreenOnAwhile()V
    .registers 5

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private onCloudHomeClick()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/pinguo/camera360/mycenter/MyCenterActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private onGalleryEnterClick()V
    .registers 10

    const/4 v8, 0x0

    invoke-static {}, Lcom/pinguo/lib/util/UtilStorage;->getInstance()Lcom/pinguo/lib/util/UtilStorage;

    move-result-object v2

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getPictureSavePath()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v0}, Lcom/pinguo/lib/util/UtilStorage;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_27

    new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0802f5

    invoke-direct {v3, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    :goto_26
    return-void

    :cond_27
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/pinguo/camera360/save/sandbox/SandBoxConstants;->SAND_B0X_DB_PATH:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_44

    new-instance v3, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f080339

    invoke-direct {v3, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    goto :goto_26

    :cond_44
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->vibrate()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getCameraModel()Lcom/pinguo/camera360/video/VideoModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/VideoModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v4

    sget-object v5, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v4, v5, :cond_6f

    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080247

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v8}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    goto :goto_26

    :cond_6f
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v4

    new-instance v5, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;

    invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/EnterGalleryEvent;-><init>()V

    invoke-virtual {v4, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v4, v4, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v4, v4, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_26
.end method

.method private onShowModeClick()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateEachDay()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->vibrate()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    new-instance v0, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;

    invoke-direct {v0}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;-><init>()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/event/ShowModePickerEvent;->setFromTag(Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    return-void
.end method

.method private onStopVideoRecording(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopVideoRecording()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getThumbnail(Z)V

    return-void
.end method

.method private onSwitchCameraClick()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onSwitchCameraClick"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v0, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/VideoModel;->switchCamera(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_c
.end method

.method private pauseAudioPlayback()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private releaseMediaRecorder()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1c

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->cleanupEmptyFile()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    :cond_1c
    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->releaseRecorder()V

    return-void
.end method

.method private resetScreenOn()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method private showStorageHint()V
    .registers 7

    const/4 v0, 0x0

    iget-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    const v2, 0x7f080322

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_10
    :goto_10
    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_1e
    return-void

    :cond_1f
    iget-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/16 v4, -0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_2f

    const v2, 0x7f080213

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_2f
    iget-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/16 v4, -0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_3f

    const v2, 0x7f080214

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_3f
    iget-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gez v2, :cond_10

    const v2, 0x7f080215

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private startTimerVideoRecording()V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-nez v0, :cond_1b

    new-instance v0, Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-direct {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    :cond_1b
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->getCountDownLimit()I

    move-result v1

    new-instance v2, Lcom/pinguo/camera360/video/PGVideoFragment$4;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/video/PGVideoFragment$4;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->startTimerTake(ILcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;)V

    goto :goto_f
.end method

.method private startVideoRecording()V
    .registers 8

    const/4 v6, 0x1

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "startVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V

    iget-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    const-wide/32 v4, 0x2faf080

    cmp-long v2, v2, v4

    if-gez v2, :cond_1e

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Storage issue, ignore the start request"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1d
    return-void

    :cond_1e
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->initializeRecorder()V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v2, :cond_31

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Fail to initialize media recorder"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_31
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->recordUserAction()V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    const-wide/32 v4, 0x15ba8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->pauseAudioPlayback()V

    :try_start_46
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->start()V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_4b} :catch_61

    iput-boolean v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    iput-boolean v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v2, v6}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoView(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateRecordingTime()V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->keepScreenOn()V

    goto :goto_1d

    :catch_61
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Could not start media recorder. "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->releaseMediaRecorder()V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->lockCamera(Z)V

    goto :goto_1d
.end method

.method private stopTimer()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->stopTimerTake()V

    :cond_9
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->reset()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getCameraModel()Lcom/pinguo/camera360/video/VideoModel;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/VideoModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V

    return-void
.end method

.method private stopVideoRecording()V
    .registers 7

    const/4 v5, 0x0

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stopVideoRecording"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v2, :cond_5c

    const/4 v1, 0x0

    :try_start_14
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoFilename:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Setting current video filename: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_41} :catch_68

    :cond_41
    :goto_41
    iput-boolean v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v2, v5}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoView(Z)V

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateVideoView"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->keepScreenOnAwhile()V

    if-eqz v1, :cond_5c

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    if-eqz v2, :cond_5c

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->addVideoToMediaStore()V

    :cond_5c
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->releaseMediaRecorder()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateTimerView()V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->release()V

    return-void

    :catch_68
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "stop fail"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->deleteVideoFile(Ljava/lang/String;)V

    goto :goto_41
.end method

.method private toggleCloudImageView()Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lorg/pinguo/cloudshare/support/SharedPreferencesSettings;->getPreferencesForUploadSetting(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "valve"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private updateAndShowStorageHint()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/video/util/Storage;->getAvailableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mStorageSpace:J

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->showStorageHint()V

    return-void
.end method

.method private updateMyCenterNewMsgView()V
    .registers 9

    const/4 v7, 0x1

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->instance()Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;

    move-result-object v5

    const-string/jumbo v6, "key_camera_show_new"

    invoke-virtual {v5, v6, v7}, Lcom/pinguo/camera360/nearbytransfer/NbtfPreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBarCloudPopView(I)V

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getUnreadFeedbackCount()I

    move-result v1

    if-lez v1, :cond_24

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v5, v1}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBarCloudPopView(I)V

    goto :goto_13

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewOrderCount()I

    move-result v3

    if-lez v3, :cond_42

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v5, v3}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBarCloudPopView(I)V

    goto :goto_13

    :cond_42
    invoke-static {}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getInstance()Lcom/pinguo/camera360/mycenter/PGMessageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/mycenter/PGMessageManager;->getNewMessageCount()I

    move-result v2

    if-lez v2, :cond_52

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v5, v2}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBarCloudPopView(I)V

    goto :goto_13

    :cond_52
    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBarCloudPopView(I)V

    goto :goto_13
.end method

.method private updateRecordingTime()V
    .registers 21

    sget-object v16, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v17, "updateRecordingTime"

    invoke-static/range {v16 .. v17}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    :goto_10
    return-void

    :cond_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    move-wide/from16 v16, v0

    sub-long v6, v11, v16

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getMaxVideoDurationInMs()I

    move-result v10

    if-eqz v10, :cond_9c

    const v16, 0xea60

    sub-int v16, v10, v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v6, v16

    if-ltz v16, :cond_9c

    const/4 v5, 0x1

    :goto_36
    move-wide v8, v6

    if-eqz v5, :cond_48

    const-wide/16 v16, 0x0

    int-to-long v0, v10

    move-wide/from16 v18, v0

    sub-long v18, v18, v8

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    const-wide/16 v18, 0x3e7

    add-long v8, v16, v18

    :cond_48
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v8, v9, v0}, Lcom/pinguo/camera360/video/util/Utils;->millisecondToTimeString(JZ)Ljava/lang/String;

    move-result-object v15

    const-wide/16 v13, 0x3e8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/pinguo/camera360/video/view/PGVideoView;->setRecordingText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingTimeCountsDown:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v0, v5, :cond_87

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingTimeCountsDown:Z

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    if-eqz v5, :cond_9e

    const v16, 0x7f070031

    :goto_74
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/video/view/PGVideoView;->setRecordingTextColor(I)V

    :cond_87
    rem-long v16, v6, v13

    sub-long v2, v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    const/16 v17, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    :cond_9c
    const/4 v5, 0x0

    goto :goto_36

    :cond_9e
    const v16, 0x7f070047

    goto :goto_74
.end method

.method private updateThumbnailButton(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->getThumbnailBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateThumbView(ZLandroid/graphics/Bitmap;Z)V

    goto :goto_4
.end method


# virtual methods
.method public Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public autoFocus()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mAutoFocusCallback:Lcom/pinguo/camera360/video/PGVideoFragment$PGAutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_17
    return-void
.end method

.method public cancelAutoFocus()V
    .registers 2

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->cancelAutoFocus()V

    :cond_15
    return-void
.end method

.method public closeModePicker()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->closeModePickerBtn()V

    return-void
.end method

.method protected getCameraModel()Lcom/pinguo/camera360/video/VideoModel;
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->getCameraModel()Lcom/pinguo/camera360/video/VideoModel;

    move-result-object v0

    return-object v0
.end method

.method public getFocusSize()Landroid/graphics/Point;
    .registers 4

    const/16 v2, 0x58

    new-instance v0, Landroid/graphics/Point;

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v1

    invoke-static {v2}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getOrientation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mOrientation:I

    return v0
.end method

.method public handleKeyBack(Landroid/view/KeyEvent;)Z
    .registers 13

    const/16 v8, 0x18

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v7, :cond_a

    move v6, v5

    :cond_9
    :goto_9
    return v6

    :cond_a
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_74

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->vibrate()V

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v7, :cond_28

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v7

    if-eqz v7, :cond_28

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    goto :goto_9

    :cond_28
    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v7, v7, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->isMenuBarActivated()Z

    move-result v7

    if-eqz v7, :cond_41

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    goto :goto_9

    :cond_41
    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v7, v7, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eqz v7, :cond_50

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v7}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoQualityIndicator()V

    :cond_50
    iget-boolean v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v7, :cond_9c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x9c4

    cmp-long v7, v7, v9

    if-gez v7, :cond_70

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f080219

    invoke-static {v7, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_70
    invoke-direct {p0, v6}, Lcom/pinguo/camera360/video/PGVideoFragment;->onStopVideoRecording(Z)V

    goto :goto_9

    :cond_74
    const/16 v7, 0x19

    if-eq v1, v7, :cond_7a

    if-ne v1, v8, :cond_94

    :cond_7a
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundKeyMode()Ljava/lang/String;

    move-result-object v3

    const-class v7, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    invoke-static {v7, v3}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-ne v8, v1, :cond_8f

    move v5, v6

    :cond_8f
    invoke-virtual {p0, v0, v5, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->soundKeyAction(Ljava/lang/Enum;ZI)V

    goto/16 :goto_9

    :cond_94
    const/16 v7, 0x52

    if-ne v1, v7, :cond_9c

    iget-boolean v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-nez v7, :cond_9

    :cond_9c
    move v6, v5

    goto/16 :goto_9
.end method

.method protected initCameraModel()Lcom/pinguo/camera360/video/VideoModel;
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/video/VideoModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/video/VideoModel;-><init>()V

    return-object v0
.end method

.method public onActionPerformed(ILjava/lang/Object;)V
    .registers 9

    sget-object v3, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "onActionPerformed action = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "information = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_de

    :cond_23
    :goto_23
    :pswitch_23
    return-void

    :pswitch_24
    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v3, :cond_33

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    :cond_33
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->hideAdvanceParameterUI()V

    goto :goto_23

    :pswitch_37
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onCloudHomeClick()V

    goto :goto_23

    :pswitch_3b
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->resetZoomValue()V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onSwitchCameraClick()V

    goto :goto_23

    :pswitch_46
    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/video/PGVideoFragment;->setVideoParametersWhenIdle(I)V

    goto :goto_23

    :pswitch_4c
    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v3

    new-instance v4, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;

    invoke-direct {v4}, Lcom/pinguo/camera360/camera/event/HideParameterAdvanceSetting;-><init>()V

    invoke-virtual {v3, v4}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onGalleryEnterClick()V

    goto :goto_23

    :pswitch_5c
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onShutterBtnClick()V

    goto :goto_23

    :pswitch_60
    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/view/PGVideoView;->isInTakeAnimation()Z

    move-result v3

    if-nez v3, :cond_23

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mSnapshotHelper:Lcom/pinguo/camera360/video/util/SnapshotHelper;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/util/SnapshotHelper;->takeSnapshot(Landroid/app/Activity;)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/view/PGVideoView;->doTakeAnimation()V

    goto :goto_23

    :pswitch_77
    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v3, :cond_86

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    :cond_86
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->onShowModeClick()V

    goto :goto_23

    :pswitch_8a
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopPreview()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters()V

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v4, v4, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoQualityIndicator()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startPreview()V

    goto/16 :goto_23

    :pswitch_b3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/pinguo/camera360/camera/activity/AdvanceSettingActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_23

    :pswitch_c3
    move-object v2, p2

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setTimerSwitchState(Z)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setAntiShake(Z)V

    goto/16 :goto_23

    nop

    :pswitch_data_de
    .packed-switch -0x1
        :pswitch_24
        :pswitch_37
        :pswitch_3b
        :pswitch_46
        :pswitch_23
        :pswitch_4c
        :pswitch_23
        :pswitch_5c
        :pswitch_60
        :pswitch_77
        :pswitch_c3
        :pswitch_8a
        :pswitch_b3
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onActivityCreated"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/video/VideoFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v2, v2, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 11

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpen"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/video/VideoFragment;->onCameraOpen(ILcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/login/model/User;->create(Landroid/content/Context;)Lcom/pinguo/camera360/login/model/User;

    move-result-object v6

    invoke-virtual {v6}, Lcom/pinguo/camera360/login/model/User;->isLogin()Z

    move-result v3

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->toggleCloudImageView()Z

    move-result v2

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->couldSwitchCamera()Z

    move-result v4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/VideoModel;->isFrontCamera()Z

    move-result v5

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateTopMenuBar(Landroid/app/Activity;ZZZZ)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    new-instance v1, Lcom/pinguo/camera360/video/PGVideoFragment$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/video/PGVideoFragment$2;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/view/PGVideoView;->initZoomControlView(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateVideoQualityIndicator()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateAdvanceSettingIndicator()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateTimerView()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v7, v7, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v7

    invoke-interface {v0, v1, v7, p0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v1

    iget-object v7, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v7, v7, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v7}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getRenderSurfaceView()Lus/pinguo/androidsdk/PGGLSurfaceView;

    move-result-object v7

    invoke-interface {v0, v1, v7}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/PGVideoView;->updateAdvanceSettingIndicator()V

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraOpen end"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->initRedressDegree()I

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->initVideoFocusManager()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/video/VideoFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/pinguo/camera360/video/VideoPreviewModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/video/VideoPreviewModel;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/VideoModel;->setPreviewModel(Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    new-instance v0, Lcom/pinguo/camera360/video/util/SnapshotHelper;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/video/util/SnapshotHelper;-><init>(Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mSnapshotHelper:Lcom/pinguo/camera360/video/util/SnapshotHelper;

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->initVideoOnlineParams(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f030125

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->createViewHolder(Landroid/view/View;)Lcom/pinguo/camera360/video/view/PGVideoView;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v1, p0, p0}, Lcom/pinguo/camera360/video/view/PGVideoView;->initVideoViewListener(Lcom/pinguo/camera360/video/view/AbsVideoView$VideoViewActionListener;Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;)V

    return-object v0
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/lib/eventbus/PGEventBus;->unregister(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->release()V

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->onDestroy()V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopVideoRecording()V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateAndShowStorageHint()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/AdvanceParameterClickEvent;)V
    .registers 3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->setVideoParametersWhenIdle(I)V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/HideModePickerViewEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoBottomMenuView:Lcom/pinguo/camera360/video/view/VideoBottomView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/view/VideoBottomView;->closeModePickerBtn()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/OnMyCenterNewMsgEvent;)V
    .registers 4

    const-string/jumbo v0, "PGM"

    const-string/jumbo v1, "onEvent OnMyCenterNewMsgEvent"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateMyCenterNewMsgView()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;)V
    .registers 4

    invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {p1}, Lcom/pinguo/camera360/camera/event/UpdateThumbImageEvent;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->set(Landroid/graphics/Bitmap;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateThumbnailButton(Z)V

    :cond_17
    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/camera/event/UpdateTimerAndAntiShakeViewEvent;)V
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateTimerView()V

    return-void
.end method

.method public onEvent(Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;)V
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onEvent TurnOnOffTimerEvent"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/event/TurnOnOffTimerEvent;->isTimerOn()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V

    :goto_15
    return-void

    :cond_16
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V

    goto :goto_15
.end method

.method public onEvent(Lcom/pinguo/camera360/shop/event/CameraProductChangeEvent;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v2

    const-string/jumbo v3, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeByKey(Ljava/lang/String;)Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    move-result-object v0

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onEvent CameraProductChangeEvent cmode = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_40

    invoke-static {}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getInstance()Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/plugin/CameraPluginManager;->getCameraModeList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_40

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, v0, Lcom/pinguo/camera360/camera/model/plugin/entity/CameraMode;->key:Ljava/lang/String;

    invoke-static {v2, v3}, LvStudio/Android/Camera360/activity/CameraActivity;->startActivityFromStore(Landroid/content/Context;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 14

    const/4 v8, 0x4

    const/high16 v7, 0x4416

    const/high16 v6, -0x3bea

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v5, :cond_c

    :cond_b
    :goto_b
    return v3

    :cond_c
    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v5, :cond_18

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v5

    if-nez v5, :cond_b

    :cond_18
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isAdvanceParametersSupport()Z

    move-result v5

    if-eqz v5, :cond_b

    cmpl-float v5, p3, v7

    if-lez v5, :cond_2f

    cmpg-float v5, p4, v7

    if-gez v5, :cond_2f

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->hideAdvanceParameterUI()V

    move v3, v4

    goto :goto_b

    :cond_2f
    cmpg-float v5, p3, v6

    if-gez v5, :cond_b

    cmpl-float v5, p4, v6

    if-lez v5, :cond_b

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v2

    new-instance v5, Lcom/pinguo/camera360/camera/event/ShowParameterAdvanceSetting;

    invoke-direct {v5}, Lcom/pinguo/camera360/camera/event/ShowParameterAdvanceSetting;-><init>()V

    invoke-virtual {v2, v5}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v5}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mVideoQualityIndicator:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v5, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v5, v8}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setVisibility(I)V

    new-instance v1, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;

    invoke-direct {v1, v3, v3}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;-><init>(IZ)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/camera/event/EffectSelectVisibilityEvent;->setFromTag(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v5, Lcom/pinguo/camera360/video/view/PGVideoView;->mAdvanceSettingIndicator:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_90

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setHasUseAdvanceParameter(Z)V

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_90
    iget-object v5, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-boolean v6, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    invoke-virtual {v5, v3, v6}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOrHideZoomControlView(ZZ)Z

    move v3, v4

    goto/16 :goto_b
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .registers 7

    const/4 v2, 0x1

    const/16 v0, 0x320

    if-ne p2, v0, :cond_1b

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->onStopVideoRecording(Z)V

    :cond_c
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f08020f

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/16 v0, 0x321

    if-ne p2, v0, :cond_1a

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_26

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/video/PGVideoFragment;->onStopVideoRecording(Z)V

    :cond_26
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f080216

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1a
.end method

.method public onPause()V
    .registers 7

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onPause"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, LvStudio/Android/Camera360/activity/CameraActivity;

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    check-cast v2, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v2, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->unRegisterOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V

    :cond_1c
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_26
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->resetScreenOn()V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFilename:Ljava/lang/String;

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mIsCanStoreVideoFile = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "videoFileName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->finishRecorderAndCloseCamera()V

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    if-nez v2, :cond_72

    if-eqz v1, :cond_72

    sget-object v2, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteVideoFile due to video file time < 2s"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->deleteVideoFile(Ljava/lang/String;)V

    :cond_72
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getCameraMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "5d5bf5c848d112287903b26d5f388eaa"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_94

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->isSupportKeepVideo2Camera()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->keep()V

    :cond_94
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v2, :cond_a3

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_a3

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    :cond_a3
    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->onPause()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->commitAllChange()V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_bd

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    :cond_bd
    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->stop()V

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/lib/location/PGLocationManager;->destroy()V

    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->release()V

    return-void
.end method

.method public onReleaseCamera()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->onReleaseCamera()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mPreviewView:Lcom/pinguo/camera360/lib/camera/view/PreviewView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/view/PreviewView;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPreviewModel:Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;->destroy()V

    :cond_18
    return-void
.end method

.method public onResume()V
    .registers 13

    const/4 v5, 0x0

    const/4 v8, 0x0

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->onResume()V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, LvStudio/Android/Camera360/activity/CameraActivity;

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v0, p0}, LvStudio/Android/Camera360/activity/CameraActivity;->registerOrientationEvent(Lcom/pinguo/camera360/base/BaseFragment;)V

    :cond_1e
    invoke-direct {p0, v8}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateThumbnailButton(Z)V

    iput-boolean v8, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    new-instance v10, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "file"

    invoke-virtual {v10, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;-><init>(Lcom/pinguo/camera360/video/PGVideoFragment;Lcom/pinguo/camera360/video/PGVideoFragment$MyBroadcastReceiver;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v10}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/lib/location/PGLocationManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/lib/location/PGLocationManager;->getInstance()Lcom/pinguo/lib/location/PGLocationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/lib/location/PGLocationManager;->start()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mThumbnailHelper:Lcom/pinguo/camera360/video/util/ThumbnailHelper;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/ThumbnailHelper;->load()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsCanStoreVideoFile:Z

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S5360:Z

    if-eqz v0, :cond_be

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->IsShowTipsForSamsungS5360()Z

    move-result v0

    if-eqz v0, :cond_be

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080328

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08021b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080329

    const/16 v4, -0x3e7

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getOrientation()I

    move-result v7

    move-object v6, v5

    invoke-static/range {v0 .. v8}, Lcom/pinguo/camera360/ui/dialog/BSDialogUtils;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;IZ)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->getDialogMessageView()Landroid/widget/TextView;

    move-result-object v11

    if-eqz v11, :cond_b7

    const/4 v0, 0x3

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_b7
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->setIsShowTipsForSamsungS5360(Z)V

    :cond_be
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->updateMyCenterNewMsgView()V

    return-void
.end method

.method public onSetFocusArea(IIII)V
    .registers 5

    return-void
.end method

.method public onShutterBtnClick()V
    .registers 6

    sget-object v1, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onShutterBtnClick mMediaRecorderRecording = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v1, :cond_1c

    :goto_1b
    return-void

    :cond_1c
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    invoke-static {}, Lcom/pinguo/lib/eventbus/PGEventBus;->getInstance()Lcom/pinguo/lib/eventbus/PGEventBus;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/camera/event/OnShutterBtnClickEvent;

    invoke-direct {v2}, Lcom/pinguo/camera360/camera/event/OnShutterBtnClickEvent;-><init>()V

    invoke-virtual {v1, v2}, Lcom/pinguo/lib/eventbus/PGEventBus;->post(Lcom/pinguo/lib/eventbus/BaseEvent;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_5c

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mRecordingStartTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x9c4

    cmp-long v1, v1, v3

    if-gez v1, :cond_57

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f080219

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b

    :cond_57
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/video/PGVideoFragment;->onStopVideoRecording(Z)V

    goto :goto_1b

    :cond_5c
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startTimerVideoRecording()V

    goto :goto_1b

    :cond_6a
    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->startVideoRecording()V

    goto :goto_1b
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mTimerHelper:Lcom/pinguo/camera360/video/util/TimerStartHelper;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/util/TimerStartHelper;->isTimerRunning()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->stopTimer()V

    goto :goto_5

    :cond_16
    iget-boolean v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    if-nez v1, :cond_2b

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->hideAdvanceParameterUI()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideFlashPopMenu()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v1, v1, Lcom/pinguo/camera360/video/view/PGVideoView;->mTopMenuView:Lcom/pinguo/camera360/video/view/VideoTopMenuView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/view/VideoTopMenuView;->hideOtherSettingPopMenu()V

    :cond_2b
    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOrHideZoomControlView(ZZ)Z

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onSnapshot([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    .registers 11

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->isJpeg([B)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B

    move-result-object v2

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "exifData = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getRotation()I

    move-result v4

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoModel:Lcom/pinguo/camera360/video/VideoModel;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/pinguo/camera360/video/VideoModel;->handleVideoPicture([B[BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;ILjava/lang/String;J)V

    :cond_39
    return-void
.end method

.method public onStopPreview()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->onStopPreview()V

    return-void
.end method

.method protected openCamera()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->openCamera()V

    return-void
.end method

.method public preStartPreview()V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "preStartPreview"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->preStartPreview()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOrHideZoomControlView(ZZ)Z

    return-void
.end method

.method protected releaseCamera()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->releaseCamera()V

    return-void
.end method

.method public setOrientation(IZ)V
    .registers 6

    sget-object v0, Lcom/pinguo/camera360/video/PGVideoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setOrientation orientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/video/VideoFragment;->setOrientation(IZ)V

    iput p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mOrientation:I

    return-void
.end method

.method public setVideoParametersWhenIdle(I)V
    .registers 6

    const/4 v3, 0x0

    iget v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mUpdateSet:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mUpdateSet:I

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVideoFocusManager:Lcom/pinguo/camera360/video/util/VideoFocusManager;

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/util/VideoFocusManager;->isFocusing()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mUpdateSet:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters(I)V

    iput v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mUpdateSet:I

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_19
.end method

.method protected soundKeyAction(Ljava/lang/Enum;ZI)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<",
            "Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;",
            ">;ZI)V"
        }
    .end annotation

    sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->SHOT:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    if-ne v0, p1, :cond_17

    if-nez p3, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mVolumePressDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_16
    return-void

    :cond_17
    sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->ZOOM:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    if-ne v0, p1, :cond_1f

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/video/PGVideoFragment;->soundKeyZoom(Z)V

    goto :goto_16

    :cond_1f
    sget-object v0, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;->NONE:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel$SoundKeyMode;

    if-ne v0, p1, :cond_16

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    if-nez v0, :cond_31

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mSoundManager:Lcom/pinguo/camera360/camera/model/SoundManager;

    invoke-virtual {v0, p2}, Lcom/pinguo/camera360/camera/model/SoundManager;->volumeAdjustment(Z)V

    goto :goto_16
.end method

.method protected soundKeyZoom(Z)V
    .registers 7

    const/4 v4, 0x1

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isZoomSupported()Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-boolean v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mMediaRecorderRecording:Z

    invoke-virtual {v2, v4, v3}, Lcom/pinguo/camera360/video/view/PGVideoView;->showOrHideZoomControlView(ZZ)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getMaxZoom()I

    move-result v1

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getZoom()I

    move-result v0

    if-eqz p1, :cond_36

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_34

    add-int/lit8 v0, v0, 0x2

    :goto_2e
    iget-object v2, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/video/view/PGVideoView;->setZoomIndex(I)V

    goto :goto_b

    :cond_34
    move v0, v1

    goto :goto_2e

    :cond_36
    if-le v0, v4, :cond_3b

    add-int/lit8 v0, v0, -0x2

    goto :goto_2e

    :cond_3b
    const/4 v0, 0x0

    goto :goto_2e
.end method

.method protected startPreview()V
    .registers 3

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->startPreview()V

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEITU_KISS:Z

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isOpenFlashLight()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters(I)V

    :cond_1a
    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, LvStudio/Android/Camera360/activity/CameraActivity;

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/PGVideoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, LvStudio/Android/Camera360/activity/CameraActivity;

    invoke-virtual {v0}, LvStudio/Android/Camera360/activity/CameraActivity;->startAllBgTask()V

    :cond_2b
    return-void
.end method

.method protected stopPreview()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/video/VideoFragment;->stopPreview()V

    return-void
.end method

.method public updateTimerView()V
    .registers 6

    iget-boolean v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mIsPausing:Z

    if-eqz v3, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerSwitchState()Z

    move-result v1

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I

    move-result v2

    if-eqz v1, :cond_4

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v3, v3, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->show()V

    iget-object v3, p0, Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;

    iget-object v3, v3, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getTimerShotLimit()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->setCountDownLimit(I)V

    goto :goto_4
.end method
