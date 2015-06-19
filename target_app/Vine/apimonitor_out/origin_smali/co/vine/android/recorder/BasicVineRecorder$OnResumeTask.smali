.class public abstract Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.super Landroid/os/AsyncTask;
.source "BasicVineRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/BasicVineRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "OnResumeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/CharSequence;",
        "Lco/vine/android/recorder/RecordingFile;",
        ">;"
    }
.end annotation


# instance fields
.field public isRunning:Z

.field protected final mClicker:Landroid/view/View;

.field protected mStartTime:J

.field protected final mTag:Ljava/lang/String;

.field public showDialogDelayed:Z

.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;


# direct methods
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mClicker:Landroid/view/View;

    iput-object p3, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lco/vine/android/recorder/RecordingFile;
    .registers 12

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v9, 0x0

    const-string v6, "OnResume task started from {}."

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mTag:Ljava/lang/String;

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v2, v6, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    if-nez v2, :cond_15

    :cond_14
    :goto_14
    return-object v5

    :cond_15
    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->wasEncodingThreadRunning()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->publishFinishLastSegmentProgress()V

    :try_start_1e
    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->finishLastIfNeeded()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_c4

    :goto_21
    invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->publishStartProgres()V

    :cond_24
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6}, Lco/vine/android/recorder/BasicVineRecorder;->stopProgressTimer()V

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z

    move-result v6

    if-eqz v6, :cond_e5

    const-string v6, "Async open camera"

    invoke-static {v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V

    :try_start_36
    invoke-virtual {p0, v2}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->onMakingSureCameraReady(Lco/vine/android/recorder/RecordController;)Z

    move-result v6

    if-eqz v6, :cond_d0

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;

    move-result-object v3

    if-eqz v3, :cond_48

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget v7, v3, Lco/vine/android/recorder/CameraSetting;->frameRate:I

    iput v7, v6, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentFrameRate:I

    :cond_48
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    if-eqz v6, :cond_55

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-virtual {v6}, Lco/vine/android/recorder/ReusableHashAsyncTask;->reset()V

    :cond_55
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6}, Lco/vine/android/recorder/BasicVineRecorder;->startProgressTimer()V

    const-string v6, "Open camera successful: {} fps."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget v9, v9, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentFrameRate:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    if-eqz v6, :cond_14

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v6}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v1

    :goto_7b
    if-eqz v2, :cond_14

    if-eqz v1, :cond_14

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-wide v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J

    iget v8, v1, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I

    int-to-long v8, v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_14

    invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isAudioReady()Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wait for audio to be ready. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isCancelled()Z
    :try_end_a9
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_36 .. :try_end_a9} :catch_dd

    move-result v6

    if-nez v6, :cond_14

    const-wide/16 v6, 0x64

    :try_start_ae
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b1
    .catch Ljava/lang/InterruptedException; {:try_start_ae .. :try_end_b1} :catch_121
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_ae .. :try_end_b1} :catch_dd

    :goto_b1
    :try_start_b1
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    if-eqz v6, :cond_ce

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;

    invoke-virtual {v6}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;

    move-result-object v1

    :goto_bf
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v2, v6, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
    :try_end_c3
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_b1 .. :try_end_c3} :catch_dd

    goto :goto_7b

    :catch_c4
    move-exception v4

    const-string v6, "Failed to finish last one."

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v4, v6, v7}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    :cond_ce
    move-object v1, v5

    goto :goto_bf

    :cond_d0
    :try_start_d0
    invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_14

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6}, Lco/vine/android/recorder/BasicVineRecorder;->showCameraFailedToast()V
    :try_end_db
    .catch Lco/vine/android/VineNotSupportedException; {:try_start_d0 .. :try_end_db} :catch_dd

    goto/16 :goto_14

    :catch_dd
    move-exception v4

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6, v4}, Lco/vine/android/recorder/BasicVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V

    goto/16 :goto_14

    :cond_e5
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v0, v6, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    if-eqz v6, :cond_100

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-virtual {v6}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z

    move-result v6

    if-eqz v6, :cond_100

    if-eqz v0, :cond_100

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_14

    :cond_100
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    if-eqz v6, :cond_11a

    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v6, v6, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-virtual {v6}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v6

    if-eqz v6, :cond_11a

    iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-virtual {v5}, Lco/vine/android/recorder/ReusableHashAsyncTask;->getComputedFile()Lco/vine/android/recorder/RecordingFile;

    move-result-object v5

    goto/16 :goto_14

    :cond_11a
    iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v6, v9}, Lco/vine/android/recorder/BasicVineRecorder;->startHashTask(Z)V

    goto/16 :goto_14

    :catch_121
    move-exception v6

    goto :goto_b1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->doInBackground([Ljava/lang/Void;)Lco/vine/android/recorder/RecordingFile;

    move-result-object v0

    return-object v0
.end method

.method protected onMakingSureCameraReady(Lco/vine/android/recorder/RecordController;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/vine/android/VineNotSupportedException;
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-boolean v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(ZZ)Z

    move-result v0

    return v0
.end method

.method protected onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
    .registers 8

    const/4 v2, 0x0

    iput-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isRunning:Z

    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mClicker:Landroid/view/View;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mClicker:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_d
    if-eqz p1, :cond_16

    iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;

    invoke-virtual {v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mStartTime:J

    sub-long v0, v2, v4

    sget-wide v2, Lco/vine/android/recorder/BasicVineRecorder;->sTimeTaken:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_26

    sput-wide v0, Lco/vine/android/recorder/BasicVineRecorder;->sTimeTaken:J

    :cond_26
    const-string v2, "OnResumeTask took {}ms."

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lco/vine/android/recorder/RecordingFile;

    invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mStartTime:J

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mClicker:Landroid/view/View;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mClicker:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_10
    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;

    iget-object v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;

    invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2f

    :try_start_28
    iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->showDialogDelayed:Z

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isRunning:Z
    :try_end_2f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_28 .. :try_end_2f} :catch_40

    :cond_2f
    :goto_2f
    const-string v0, "OnResume PreExecute took {}ms."

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->mStartTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_40
    move-exception v0

    goto :goto_2f
.end method

.method protected abstract publishFinishLastSegmentProgress()V
.end method

.method protected abstract publishStartProgres()V
.end method
