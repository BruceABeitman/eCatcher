.class public Lco/vine/android/recorder/InlineVineRecorder;
.super Lco/vine/android/recorder/RegularVineRecorder;
.source "InlineVineRecorder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/recorder/InlineVineRecorder$InlineFinishProcessTask;,
        Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;
    }
.end annotation


# static fields
.field private static DELAY_WAIT_FOR_EXPOSURE:J

.field public static final METHOD_TRACING:Z

.field public static startnanos:J


# instance fields
.field private mCameraSuccessfullyOpened:Z

.field private mFinishProgressView:Lco/vine/android/recorder/ProgressView;

.field private final mFinishProgressViewResourceId:I

.field private final mPaddingSize:I

.field private mProcessingListener:Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;

.field private mStartRelativeTimeRunnable:Ljava/lang/Runnable;

.field private mStarted:Z

.field private mStopping:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x15e

    sput-wide v0, Lco/vine/android/recorder/InlineVineRecorder;->DELAY_WAIT_FOR_EXPOSURE:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lco/vine/android/recorder/InlineVineRecorder;->startnanos:J

    return-void
.end method

.method public varargs constructor <init>(Lco/vine/android/recorder/RecordSessionVersion;Landroid/graphics/Point;Landroid/app/Activity;Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;IIIIIIIIILjava/lang/String;[Ljava/lang/CharSequence;)V
    .registers 33

    const/16 v3, 0x42

    const/4 v14, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p6

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move-object/from16 v13, p14

    move-object/from16 v15, p1

    move-object/from16 v16, p15

    invoke-direct/range {v2 .. v16}, Lco/vine/android/recorder/RegularVineRecorder;-><init>(ILandroid/graphics/Point;Landroid/app/Activity;IIIIIIILjava/lang/String;ZLco/vine/android/recorder/RecordSessionVersion;[Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lco/vine/android/recorder/InlineVineRecorder;->mCameraSuccessfullyOpened:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lco/vine/android/recorder/InlineVineRecorder;->mStopping:Z

    new-instance v2, Lco/vine/android/recorder/InlineVineRecorder$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lco/vine/android/recorder/InlineVineRecorder$1;-><init>(Lco/vine/android/recorder/InlineVineRecorder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lco/vine/android/recorder/InlineVineRecorder;->mStartRelativeTimeRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lco/vine/android/recorder/InlineVineRecorder;->mProcessingListener:Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;

    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/InlineVineRecorder;->mPaddingSize:I

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lco/vine/android/recorder/InlineVineRecorder;->mFinishProgressViewResourceId:I

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/recorder/InlineVineRecorder;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mCameraSuccessfullyOpened:Z

    return v0
.end method

.method static synthetic access$100(Lco/vine/android/recorder/InlineVineRecorder;)Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mProcessingListener:Lco/vine/android/recorder/InlineVineRecorder$ProcessingListener;

    return-object v0
.end method

.method static synthetic access$202(Lco/vine/android/recorder/InlineVineRecorder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStopping:Z

    return p1
.end method

.method static synthetic access$300(Lco/vine/android/recorder/InlineVineRecorder;)Lco/vine/android/recorder/ProgressView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;

    return-object v0
.end method


# virtual methods
.method protected adjustBoundaries(Lco/vine/android/recorder/CameraSetting;)V
    .registers 15

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_5b

    if-eqz p1, :cond_5b

    iget v11, p1, Lco/vine/android/recorder/CameraSetting;->originalW:I

    int-to-float v7, v11

    iget v11, p1, Lco/vine/android/recorder/CameraSetting;->originalH:I

    int-to-float v6, v11

    div-float v1, v7, v6

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget v12, p0, Lco/vine/android/recorder/InlineVineRecorder;->mPaddingSize:I

    mul-int/lit8 v12, v12, 0x2

    sub-int v5, v11, v12

    int-to-float v11, v5

    mul-float/2addr v11, v1

    float-to-int v3, v11

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mTopMaskView:Landroid/view/View;

    if-eqz v11, :cond_5b

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mBottomMaskView:Landroid/view/View;

    if-eqz v11, :cond_5b

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mBottomMaskView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mRootLayoutView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    sub-int v11, v8, v2

    iget-object v12, p0, Lco/vine/android/recorder/InlineVineRecorder;->mSize:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int v9, v11, v12

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mTopMaskView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    iput v9, v10, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mCameraView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mPaddingSize:I

    iput v11, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget-object v11, p0, Lco/vine/android/recorder/InlineVineRecorder;->mActivity:Landroid/app/Activity;

    new-instance v12, Lco/vine/android/recorder/InlineVineRecorder$3;

    invoke-direct {v12, p0, v10, v4}, Lco/vine/android/recorder/InlineVineRecorder$3;-><init>(Lco/vine/android/recorder/InlineVineRecorder;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v11, v12}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5b
    return-void
.end method

.method public cancelStartCallback()V
    .registers 3

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStartRelativeTimeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
    .registers 11

    new-instance v0, Lco/vine/android/recorder/InlineVineRecorder$InlineFinishProcessTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/InlineVineRecorder$InlineFinishProcessTask;-><init>(Lco/vine/android/recorder/InlineVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V

    return-object v0
.end method

.method public getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
    .registers 5

    new-instance v0, Lco/vine/android/recorder/InlineVineRecorder$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2}, Lco/vine/android/recorder/InlineVineRecorder$2;-><init>(Lco/vine/android/recorder/InlineVineRecorder;Landroid/view/View;Ljava/lang/String;)V

    return-object v0
.end method

.method public onProgressMaxReached()V
    .registers 2

    const-string v0, "progressMaxReached"

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/InlineVineRecorder;->finish(Ljava/lang/String;)V

    return-void
.end method

.method protected onStop()Z
    .registers 4

    const/4 v1, 0x1

    iget-boolean v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStopping:Z

    if-nez v2, :cond_9

    move v0, v1

    :goto_6
    iput-boolean v1, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStopping:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public onUiPaused()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder;->onUiPaused()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStopping:Z

    return-void
.end method

.method public onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/recorder/RegularVineRecorder;->onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V

    iget v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mFinishProgressViewResourceId:I

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lco/vine/android/recorder/ProgressView;

    iput-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mFinishProgressView:Lco/vine/android/recorder/ProgressView;

    if-nez p3, :cond_15

    const-string v0, "UI Resume"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lco/vine/android/recorder/InlineVineRecorder;->onResume(Ljava/lang/String;Z)V

    :cond_15
    return-void
.end method

.method public openCamera()V
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    iget-boolean v3, p0, Lco/vine/android/recorder/InlineVineRecorder;->mFrontFacing:Z

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(ZZ)Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    iput-boolean v1, p0, Lco/vine/android/recorder/InlineVineRecorder;->mCameraSuccessfullyOpened:Z
    :try_end_1b
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_1 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    invoke-virtual {p0, v0}, Lco/vine/android/recorder/InlineVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public receivedFirstFrameAfterStartingPreview()V
    .registers 8

    iget-boolean v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStarted:Z

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    if-nez v2, :cond_2b

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-string v2, "inline launch time: {}ms"

    sget-wide v3, Lco/vine/android/recorder/InlineVineRecorder;->startnanos:J

    sub-long v3, v0, v3

    const-wide/32 v5, 0xf4240

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sput-wide v0, Lco/vine/android/recorder/InlineVineRecorder;->startnanos:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStarted:Z

    iget-object v2, p0, Lco/vine/android/recorder/InlineVineRecorder;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStartRelativeTimeRunnable:Ljava/lang/Runnable;

    sget-wide v4, Lco/vine/android/recorder/InlineVineRecorder;->DELAY_WAIT_FOR_EXPOSURE:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2b
    return-void
.end method

.method public setStarted(Z)V
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/recorder/InlineVineRecorder;->mStarted:Z

    return-void
.end method

.method public stopRecording(Z)V
    .registers 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lco/vine/android/recorder/InlineVineRecorder;->cancelStartCallback()V

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lco/vine/android/recorder/InlineVineRecorder;->endRelativeTime()Z

    :cond_b
    if-eqz p1, :cond_16

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0, v1, v1}, Lco/vine/android/recorder/RecordController;->stop(ZZ)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;

    :cond_16
    return-void
.end method
