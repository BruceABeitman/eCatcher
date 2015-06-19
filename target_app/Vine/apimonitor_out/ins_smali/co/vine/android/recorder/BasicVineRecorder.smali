.class public abstract Lco/vine/android/recorder/BasicVineRecorder;
.super Ljava/lang/Object;
.source "BasicVineRecorder.java"
.implements Lco/vine/android/recorder/RecordController$OnRecorderControllerStateChangedListener;
.implements Lco/vine/android/player/VideoViewInterface$OnErrorListener;
.field public static final LOG_RECORDER_INIT_COMPLETE:Ljava/lang/String; = "Recorder fully initialized."
.field public static final PREFS_CAPTURE:Ljava/lang/String; = "capture"
.field public static sTimeTaken:J
.field public detectedInvalidSession:Z
.field public volatile finalFile:Lco/vine/android/recorder/RecordingFile;
.field public grabThumbnailsRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
.field protected mActivity:Landroid/app/Activity;
.field protected final mAddedSegments:Ljava/util/ArrayList;
.field private mAlreadyStoppingForUnspportedReasons:Z
.field protected mAutoFocusing:Z
.field protected mCameraView:Landroid/view/View;
.field protected mCanKeepRecording:Z
.field protected final mChangeProgressRunnable:Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
.field protected volatile mCurrentDuration:J
.field protected mCurrentFrameRate:I
.field protected mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
.field protected mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
.field public volatile mDiscardChanges:Z
.field protected mDoNotDeleteSession:Z
.field protected final mEditedSegments:Ljava/util/ArrayList;
.field protected mEnabled:Z
.field protected final mFastEncoding:Z
.field protected final mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
.field protected mFinished:Z
.field protected mFrontFacing:Z
.field protected final mHandler:Landroid/os/Handler;
.field protected final mHardwareEncoding:Z
.field protected mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
.field protected volatile mIsSwitchingCamera:Z
.field protected mNeverResumedRecorder:Z
.field public volatile mOnCompleteConsumer:Ljava/lang/Runnable;
.field protected mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
.field protected mRecordingFileDuration:I
.field protected mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.field protected mSession:Lco/vine/android/recorder/RecordSession;
.field protected mSwitchCameraTask:Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;
.field protected final mThresholdMs:I
.field protected final mToRemove:Ljava/util/HashSet;
.field protected final mUseMp4:Z
.field protected mVideoController:Lco/vine/android/recorder/RecordController;
.method public constructor <init>(ILandroid/app/Activity;ZZZ)V
.registers 13
const/4 v6, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHandler:Landroid/os/Handler;
new-instance v0, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Lco/vine/android/recorder/BasicVineRecorder$1;)V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAddedSegments:Ljava/util/ArrayList;
iput-boolean v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAutoFocusing:Z
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mToRemove:Ljava/util/HashSet;
iput-boolean v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEnabled:Z
iput p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mThresholdMs:I
iput-boolean v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mNeverResumedRecorder:Z
iput-boolean p4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHardwareEncoding:Z
invoke-static {p4}, Lco/vine/android/recorder/RecordConfigUtils;->isFastEncoding(Z)Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFastEncoding:Z
iput-boolean p5, p0, Lco/vine/android/recorder/BasicVineRecorder;->mUseMp4:Z
new-instance v0, Lco/vine/android/recorder/RecordController;
iget-boolean v3, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHardwareEncoding:Z
iget-boolean v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFastEncoding:Z
move-object v1, p0
move-object v2, p2
move v5, p5
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/RecordController;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/app/Activity;ZZZ)V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iput-object p2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
if-nez p3, :cond_52
invoke-static {}, Lco/vine/android/recorder/RecordConfigUtils;->isDefaultFrontFacing()Z
move-result v0
if-eqz v0, :cond_5c
:cond_52
move v0, v6
:goto_53
iput-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->getFinishProcessRunnable()Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
return-void
:cond_5c
const/4 v0, 0x0
goto :goto_53
.end method
.method protected abstract adjustBoundaries(Lco/vine/android/recorder/CameraSetting;)V
.end method
.method public canKeepRecording()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
if-eqz v0, :cond_a
iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public canSwitchCamera()Z
.registers 2
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasFrontFacingCamera()Z
move-result v0
if-eqz v0, :cond_16
invoke-static {}, Lco/vine/android/recorder/CameraManager;->hasBackFacingCamera()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecording()Z
move-result v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public changeFocusTo(FF)V
.registers 6
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
float-to-int v1, p1
float-to-int v2, p2
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/RecordController;->autoFocus(II)V
return-void
.end method
.method public abstract changeProgress(J)V
.end method
.method public cleanThumbnails(Z)V
.registers 7
new-instance v3, Ljava/util/HashSet;
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mToRemove:Ljava/util/HashSet;
invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mToRemove:Ljava/util/HashSet;
invoke-virtual {v4}, Ljava/util/HashSet;->clear()V
if-eqz p1, :cond_13
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAddedSegments:Ljava/util/ArrayList;
invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z
:cond_13
invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_17
:goto_17
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_36
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordSegment;->getThumbnailPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_17
new-instance v4, Ljava/io/File;
invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
goto :goto_17
:cond_36
return-void
.end method
.method public deleteCurrentDraftFolder(Ljava/lang/String;)Z
.registers 4
:try_start_0
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-object v1, v1, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-static {v1, p1}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9
const/4 v1, 0x1
:goto_8
return v1
:catch_9
move-exception v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const/4 v1, 0x0
goto :goto_8
.end method
.method public declared-synchronized endRelativeTime()Z
.registers 5
const/4 v3, 0x1
monitor-enter p0
:try_start_2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
if-eqz v0, :cond_4f
const-string v0, "END RELATIVE TIME."
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/RecordController;->offerLastFrame(Lco/vine/android/recorder/RecordSegment;Lco/vine/android/recorder/VideoData;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->getTimestamp()J
move-result-wide v0
long-to-int v0, v0
iput v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mRecordingFileDuration:I
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordSession;->add(Lco/vine/android/recorder/RecordSegment;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAddedSegments:Ljava/util/ArrayList;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
const/4 v1, 0x1
iput-boolean v1, v0, Lco/vine/android/recorder/RecordingFile;->isDirty:Z
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
iget v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mRecordingFileDuration:I
int-to-long v0, v0
iput-wide v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setRecordingAudio(Z)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setRecording(Lco/vine/android/recorder/RecordSegment;)V
:try_end_4f
.catchall {:try_start_2 .. :try_end_4f} :catchall_51
:cond_4f
monitor-exit p0
return v3
:catchall_51
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected finish(Ljava/lang/String;)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iput-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinished:Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_17
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x0
invoke-virtual {p0, p1, v0, v2, v1}, Lco/vine/android/recorder/BasicVineRecorder;->stop(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
iput-boolean v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
if-eqz v0, :cond_16
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_16
.end method
.method public getCameraView()Landroid/view/View;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCameraView:Landroid/view/View;
return-object v0
.end method
.method public getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
if-eqz v0, :cond_9
invoke-virtual {v0}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v1
:goto_8
return-object v1
:cond_9
const/4 v1, 0x0
goto :goto_8
.end method
.method public getCurrentDuration()J
.registers 3
iget-wide v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
return-wide v0
.end method
.method public getFile()Lco/vine/android/recorder/RecordingFile;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
return-object v0
.end method
.method protected getFinishProcessRunnable()Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
.registers 2
new-instance v0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
invoke-direct {v0, p0}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;-><init>(Lco/vine/android/recorder/BasicVineRecorder;)V
return-object v0
.end method
.method public getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
.registers 11
new-instance v0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;
if-nez p4, :cond_a
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-boolean v1, v1, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
if-eqz v1, :cond_13
:cond_a
const/4 v5, 0x1
:goto_b
move-object v1, p0
move-object v2, p1
move-object v3, p2
move v4, p3
invoke-direct/range {v0 .. v5}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-object v0
:cond_13
const/4 v5, 0x0
goto :goto_b
.end method
.method public getHandler()Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHandler:Landroid/os/Handler;
return-object v0
.end method
.method public getMemoryResponder()Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
instance-of v0, v0, Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;
if-eqz v0, :cond_b
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
check-cast v0, Lco/vine/android/recorder/ByteBufferQueue$MemoryResponder;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public getOnCompleteConsumer()Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
return-object v0
.end method
.method protected abstract getOnDeviceNotSupportedAction()Ljava/lang/Runnable;
.end method
.method public abstract getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.end method
.method public getThumbnailPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordingFile;->getThumbnailPath()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getTimestamp()J
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->getTimestamp()J
move-result-wide v0
return-wide v0
.end method
.method protected guardedStartRecording(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-nez v0, :cond_b
invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder;->startRecording(Ljava/lang/String;)V
:cond_b
return-void
.end method
.method public hasSessionFile()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public initPreviewSurface()V
.registers 4
:try_start_0
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCameraView:Landroid/view/View;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/RecordController;->setPreviewSurface(Landroid/view/View;)V
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
const-string v1, "Cannot resume."
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_7
.end method
.method protected invalidateFinishButton()V
.registers 1
return-void
.end method
.method public isCurrentlyRecording()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isFinished()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinished:Z
return v0
.end method
.method public isRecordingSegment()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public isResuming()Z
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
if-eqz v0, :cond_a
iget-boolean v1, v0, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->isRunning:Z
if-eqz v1, :cond_a
const/4 v1, 0x1
:goto_9
return v1
:cond_a
const/4 v1, 0x0
goto :goto_9
.end method
.method public isSavedSession()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-boolean v0, v0, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
return v0
.end method
.method public isSessionDirty()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-boolean v0, v0, Lco/vine/android/recorder/RecordingFile;->isDirty:Z
return v0
.end method
.method public modifyAntiBanding(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyAntiBanding(Z)V
:cond_9
return-void
.end method
.method public modifyColorEffects(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyColorEffects(Z)V
:cond_9
return-void
.end method
.method public modifyExposure(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyExposure(Z)V
:cond_9
return-void
.end method
.method public modifySceneMode(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifySceneMode(Z)V
:cond_9
return-void
.end method
.method public modifyWhiteBalance(Z)V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->modifyWhiteBalance(Z)V
:cond_9
return-void
.end method
.method public onAutoFocusComplete(Z)V
.registers 4
const-string v0, "Auto focus {}."
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public onCameraReady(Lco/vine/android/recorder/RecordController;)V
.registers 5
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isSurfaceReady()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-nez v0, :cond_1c
const-string v0, "Camera ready"
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/recorder/BasicVineRecorder;->start(Ljava/lang/String;ZZ)V
:cond_1b
:goto_1b
return-void
:cond_1c
const-string v0, "Do not start recording: {} {}"
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1}, Lco/vine/android/recorder/RecordController;->isSurfaceReady()Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_1b
.end method
.method public onDeviceNotSupported(Ljava/lang/Throwable;)V
.registers 5
const/4 v2, 0x1
iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAlreadyStoppingForUnspportedReasons:Z
if-nez v0, :cond_1a
iput-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAlreadyStoppingForUnspportedReasons:Z
if-eqz p1, :cond_11
invoke-static {p1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const-string v0, "Device not supported happened."
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_11
const-string v0, "OnDeviceNotSupported"
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->getOnDeviceNotSupportedAction()Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {p0, v0, v1, v2}, Lco/vine/android/recorder/BasicVineRecorder;->stopAndDiscardChanges(Ljava/lang/String;Ljava/lang/Runnable;Z)V
:cond_1a
return-void
.end method
.method public onError(Lco/vine/android/player/VideoViewInterface;II)Z
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public onFinishPressed()V
.registers 2
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->setHasPreviewedAlreadyIfNeeded()V
const-string v0, "onFinishPressed"
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder;->finish(Ljava/lang/String;)V
return-void
.end method
.method public onPause()V
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iput-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mNeverResumedRecorder:Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSwitchCameraTask:Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSwitchCameraTask:Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;
invoke-virtual {v0, v3}, Lco/vine/android/recorder/BasicVineRecorder$ResumeCameraAsyncTask;->cancel(Z)Z
:cond_d
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
if-eqz v0, :cond_2e
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Cancel resume task: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
invoke-virtual {v0, v3}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->cancel(Z)Z
:cond_2e
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
const-string v1, "onPause"
invoke-virtual {v0, v1, v3, v2}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->run(Ljava/lang/String;ZZ)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->onPause()V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
if-eqz v0, :cond_43
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/ReusableHashAsyncTask;->cancel(Z)Z
:cond_43
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
if-eqz v0, :cond_4f
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressTimer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
:cond_4f
return-void
.end method
.method public onProgressMaxReached()V
.registers 1
return-void
.end method
.method public onProgressThresholdReached()V
.registers 1
return-void
.end method
.method public onResume(Ljava/lang/String;Z)V
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z
move-result v0
const-string v3, "Resume VineRecorder: delayDialog: {} canKeepRecording: {} isEditing: {} NullFinalFile: {}."
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v4, v2
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v4, v1
const/4 v5, 0x2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x3
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v6, :cond_54
:goto_23
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
aput-object v1, v4, v5
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v0, :cond_56
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "OnResume_"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p0, v1, v3}, Lco/vine/android/recorder/BasicVineRecorder;->getOnResumeTask(Landroid/view/View;Ljava/lang/String;)Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
move-result-object v1
iput-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
iput-boolean p2, v1, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->showDialogDelayed:Z
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mResumeTask:Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v1, v2}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_53
:goto_53
return-void
:cond_54
move v1, v2
goto :goto_23
:cond_56
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v1, :cond_53
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
invoke-interface {v1}, Ljava/lang/Runnable;->run()V
goto :goto_53
.end method
.method protected abstract onStop()Z
.end method
.method public onSurfaceReady(Lco/vine/android/recorder/RecordController;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z
move-result v0
if-eqz v0, :cond_30
const-string v0, "Start recording on surface ready."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
if-nez v0, :cond_1d
const-string v0, "Surface Ready"
const/4 v1, 0x1
invoke-virtual {p0, v0, v2, v1}, Lco/vine/android/recorder/BasicVineRecorder;->start(Ljava/lang/String;ZZ)V
:goto_1c
return-void
:cond_1d
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_2a
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder;->adjustBoundaries(Lco/vine/android/recorder/CameraSetting;)V
:cond_2a
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->startPreview()V
goto :goto_1c
:cond_30
const-string v0, "Do not start recording: {} {}."
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v2
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_1c
.end method
.method public onUiPaused()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCameraView:Landroid/view/View;
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->onPause()V
return-void
.end method
.method public onUiResumed(Landroid/app/Activity;Ljava/lang/Runnable;Z)V
.registers 5
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/RecordController;->updateRotation(Landroid/app/Activity;)V
iput-object p2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mOnCompleteConsumer:Ljava/lang/Runnable;
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->reset()V
return-void
.end method
.method public onZoomUpdated(IZ)V
.registers 3
return-void
.end method
.method public postProgressUpdate(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
iput p1, v0, Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;->progress:I
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHandler:Landroid/os/Handler;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mChangeProgressRunnable:Lco/vine/android/recorder/BasicVineRecorder$ChangeProgressRunnable;
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public receivedFirstFrameAfterStartingPreview()V
.registers 1
return-void
.end method
.method public release()Z
.registers 8
const/4 v0, 0x0
const/4 v6, 0x0
const-string v4, "Recorder Released."
invoke-static {v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->releaseParent()V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->releaseCameraResources()V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->releaseResources()V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->releaseCallbacks()V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->logPreviewSizeExceptionIfNeeded()V
const/4 v2, 0x0
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-eqz v4, :cond_42
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-object v1, v4, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
iget-boolean v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mDoNotDeleteSession:Z
if-nez v4, :cond_60
invoke-static {v1}, Lco/vine/android/recorder/RecordSessionManager;->isSessionSaved(Ljava/io/File;)Z
move-result v4
if-nez v4, :cond_60
const-string v4, "release"
invoke-virtual {p0, v4}, Lco/vine/android/recorder/BasicVineRecorder;->deleteCurrentDraftFolder(Ljava/lang/String;)Z
move-result v2
:goto_39
:cond_39
const-string v4, "Session deleted: {}"
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-static {v4, v5}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;)V
:cond_42
iput-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
iput-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iput-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
iput-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAddedSegments:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_5a
if-eqz v2, :cond_5a
const/4 v0, 0x1
:cond_5a
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V
return v0
:cond_60
invoke-static {v1, v0}, Lco/vine/android/recorder/RecordSessionManager;->getDataFile(Ljava/io/File;Z)Ljava/io/File;
move-result-object v3
invoke-virtual {v3}, Ljava/io/File;->exists()Z
move-result v4
if-eqz v4, :cond_39
invoke-static {v3}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z
goto :goto_39
.end method
.method public setCameraView(Landroid/view/View;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCameraView:Landroid/view/View;
return-void
.end method
.method public setDiscardChanges(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
return-void
.end method
.method public setEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEnabled:Z
return-void
.end method
.method public setFinalFile(Lco/vine/android/recorder/RecordingFile;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
return-void
.end method
.method protected setHasPreviewedAlreadyIfNeeded()V
.registers 1
return-void
.end method
.method protected abstract showCameraFailedToast()V
.end method
.method public showFocusIndicator(II)V
.registers 3
return-void
.end method
.method public start(Ljava/lang/String;ZZ)V
.registers 11
const/4 v6, 0x1
const/4 v4, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
if-nez v2, :cond_2f
new-instance v2, Ljava/lang/IllegalStateException;
const-string v3, "You cannot start recording again if it is finished."
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
const-string v2, "Start failed."
invoke-static {v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:goto_19
const-string v2, "Start called from {} took {}ms."
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v4
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v4, v0
invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v4
aput-object v4, v3, v6
invoke-static {v2, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
return-void
:cond_2f
if-eqz p3, :cond_3a
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->getCameraSetting()Lco/vine/android/recorder/CameraSetting;
move-result-object v2
invoke-virtual {p0, v2}, Lco/vine/android/recorder/BasicVineRecorder;->adjustBoundaries(Lco/vine/android/recorder/CameraSetting;)V
:cond_3a
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v2
if-eqz v2, :cond_4f
if-eqz p2, :cond_4f
const-string v2, "stopPrevious"
new-instance v3, Lco/vine/android/recorder/BasicVineRecorder$1;
invoke-direct {v3, p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$1;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Ljava/lang/String;)V
invoke-virtual {p0, v2, v3, v6, v4}, Lco/vine/android/recorder/BasicVineRecorder;->stop(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
goto :goto_19
:cond_4f
invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder;->guardedStartRecording(Ljava/lang/String;)V
goto :goto_19
.end method
.method protected startHashTask(Z)V
.registers 6
new-instance v0, Lco/vine/android/recorder/ReusableHashAsyncTask;
invoke-direct {v0, p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;-><init>(Lco/vine/android/recorder/BasicVineRecorder;)V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
iput-boolean p1, p0, Lco/vine/android/recorder/BasicVineRecorder;->detectedInvalidSession:Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
const/4 v1, 0x1
new-array v1, v1, [Lco/vine/android/recorder/RecordingFile;
const/4 v2, 0x0
iget-object v3, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
aput-object v3, v1, v2
invoke-virtual {v0, v1}, Lco/vine/android/recorder/ReusableHashAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method protected startProgressTimer()V
.registers 4
new-instance v0, Lco/vine/android/recorder/ProgressTimer;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHandler:Landroid/os/Handler;
iget v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mThresholdMs:I
invoke-direct {v0, p0, v1, v2}, Lco/vine/android/recorder/ProgressTimer;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/os/Handler;I)V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressTimer;->start()V
return-void
.end method
.method protected declared-synchronized startRecording(Ljava/lang/String;)V
.registers 13
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mActivity:Landroid/app/Activity;
const-string v6, "Start recording called from {}."
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object p1, v7, v8
invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v0, :cond_b0
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z
move-result v2
if-nez v2, :cond_26
const-string v6, "Start recording."
invoke-static {v6}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_b8
:try_start_1d
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-boolean v7, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFrontFacing:Z
const/4 v8, 0x0
invoke-virtual {v6, v7, v8}, Lco/vine/android/recorder/RecordController;->openDefaultCamera(ZZ)Z
:try_end_25
.catchall {:try_start_1d .. :try_end_25} :catchall_b8
.catch Lco/vine/android/VineNotSupportedException; {:try_start_1d .. :try_end_25} :catch_b2
move-result v2
:goto_26
:cond_26
if-eqz v2, :cond_c5
:try_start_28
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->isPreviewing()Z
move-result v6
if-nez v6, :cond_35
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->startPreview()V
:cond_35
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v3
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v6
if-nez v6, :cond_97
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I
move-result v6
invoke-virtual {v3, v6}, Lco/vine/android/recorder/RecordSession;->setAudioDataCount(I)V
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I
move-result v6
invoke-virtual {v3, v6}, Lco/vine/android/recorder/RecordSession;->setVideoDataCount(I)V
:try_start_51
:try_end_51
.catchall {:try_start_28 .. :try_end_51} :catchall_b8
iget-boolean v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mHardwareEncoding:Z
if-nez v6, :cond_63
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->getVersion()Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v6
sget-object v7, Lco/vine/android/recorder/RecordSessionVersion;->SW_MP4:Lco/vine/android/recorder/RecordSessionVersion;
if-ne v6, v7, :cond_60
invoke-static {}, Lco/vine/android/recorder/EncoderManager;->tryLoad()V
:cond_60
invoke-static {}, Lcom/googlecode/javacv/cpp/opencv_imgproc;->tryLoad()V
:cond_63
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v7}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->getAudioDataCount()I
move-result v8
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSession;->getVideoDataCount()I
move-result v9
invoke-virtual {v6, v0, v7, v8, v9}, Lco/vine/android/recorder/RecordController;->start(Landroid/app/Activity;Ljava/lang/String;II)Z
const-string v6, "Start recording: {} took {}ms."
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
iget-object v9, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v9}, Lco/vine/android/recorder/RecordingFile;->getVideoPath()Ljava/lang/String;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long/2addr v9, v4
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
aput-object v9, v7, v8
invoke-static {v6, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
:try_start_97
:cond_97
:try_end_97
.catchall {:try_start_51 .. :try_end_97} :catchall_b8
.catch Ljava/lang/NoClassDefFoundError; {:try_start_51 .. :try_end_97} :catch_bb
.catch Ljava/lang/UnsatisfiedLinkError; {:try_start_51 .. :try_end_97} :catch_bb
.catch Ljava/lang/ExceptionInInitializerError; {:try_start_51 .. :try_end_97} :catch_bb
.catch Lco/vine/android/recorder/RecordController$RecordControllerReadyStartedException; {:try_start_51 .. :try_end_97} :catch_c0
:goto_97
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->waitForPreviewToStart()V
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->isPreviewing()Z
move-result v6
if-nez v6, :cond_a9
iget-object v6, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v6}, Lco/vine/android/recorder/RecordController;->startPreview()V
:cond_a9
const-string v6, "TestLog"
const-string v7, "Recorder fully initialized."
invoke-static {v6, v7}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
:cond_b0
:try_end_b0
.catchall {:try_start_97 .. :try_end_b0} :catchall_b8
monitor-exit p0
return-void
:catch_b2
move-exception v1
:try_start_b3
invoke-virtual {p0, v1}, Lco/vine/android/recorder/BasicVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V
:try_end_b6
.catchall {:try_start_b3 .. :try_end_b6} :catchall_b8
goto/16 :goto_26
:catchall_b8
move-exception v6
monitor-exit p0
throw v6
:catch_bb
move-exception v1
:try_start_bc
invoke-virtual {p0, v1}, Lco/vine/android/recorder/BasicVineRecorder;->onDeviceNotSupported(Ljava/lang/Throwable;)V
goto :goto_97
:catch_c0
move-exception v1
invoke-static {v1}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
goto :goto_97
:cond_c5
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->showCameraFailedToast()V
:try_end_c8
.catchall {:try_start_bc .. :try_end_c8} :catchall_b8
goto :goto_97
.end method
.method public startRelativeTime()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v2, :cond_3f
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
if-eqz v2, :cond_3f
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v2
if-eqz v2, :cond_3f
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v2
if-eqz v2, :cond_3f
iget-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
if-eqz v2, :cond_3f
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isCameraReady()Z
move-result v2
if-eqz v2, :cond_3f
iget-wide v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordSession;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v4
iget v4, v4, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
int-to-long v4, v4
cmp-long v2, v2, v4
if-gez v2, :cond_3f
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
if-eqz v2, :cond_40
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->endRelativeTime()Z
move-result v2
if-nez v2, :cond_40
:goto_3f
:cond_3f
return v0
:cond_40
iget v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mRecordingFileDuration:I
int-to-long v2, v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v4
sub-long/2addr v2, v4
iput-wide v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
new-instance v0, Lco/vine/android/recorder/RecordSegment;
iget-wide v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
invoke-direct {v0, v2, v3}, Lco/vine/android/recorder/RecordSegment;-><init>(J)V
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "START RELATIVE TIME: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " bc: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget v2, Lco/vine/android/recorder/CameraManager;->sCameraBufferCount:I
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", added: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lco/vine/android/recorder/CameraManager;->getInstance()Lco/vine/android/recorder/CameraManager;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/recorder/CameraManager;->getAddedBufferArrayCount()I
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/RecordController;->setRecordingAudio(Z)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentSegment:Lco/vine/android/recorder/RecordSegment;
invoke-virtual {v0, v2}, Lco/vine/android/recorder/RecordController;->setRecording(Lco/vine/android/recorder/RecordSegment;)V
move v0, v1
goto :goto_3f
.end method
.method protected stop(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
.registers 7
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->onStop()Z
move-result v1
if-eqz v1, :cond_15
invoke-virtual {p0, p1, p2, p3, p4}, Lco/vine/android/recorder/BasicVineRecorder;->getFinishProcessTask(Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lco/vine/android/recorder/BaseFinishProcessTask;
move-result-object v0
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v1, v0}, Lco/vine/android/recorder/RecordController;->setFinishProcessTask(Lco/vine/android/recorder/BaseFinishProcessTask;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lco/vine/android/recorder/BaseFinishProcessTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:cond_15
return-void
.end method
.method public stopAndDiscardChanges(Ljava/lang/String;Ljava/lang/Runnable;Z)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder;->setDiscardChanges(Z)V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
const/4 v1, 0x0
invoke-virtual {v0, p1, p3, v1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->run(Ljava/lang/String;ZZ)V
if-eqz p2, :cond_f
invoke-interface {p2}, Ljava/lang/Runnable;->run()V
:cond_f
return-void
.end method
.method protected stopProgressTimer()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
if-eqz v0, :cond_c
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
invoke-virtual {v0}, Lco/vine/android/recorder/ProgressTimer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mProgressTimer:Lco/vine/android/recorder/ProgressTimer;
:cond_c
return-void
.end method
.method public swapSession(Ljava/lang/String;Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
.registers 8
const/4 v4, 0x1
const/4 v1, 0x0
if-eqz p2, :cond_77
const-string v0, "Swap new Recorder for {} from {}."
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
aput-object p1, v2, v1
iget-object v3, p2, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v4
invoke-static {v0, v2}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual {p2}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mSession:Lco/vine/android/recorder/RecordSession;
sget-boolean v0, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v0, :cond_36
const-string v2, "[session] Swapping file {} for {}."
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-nez v0, :cond_78
move v0, v1
:goto_27
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v0, v3}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_36
iput-object p2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iput-boolean v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mFinished:Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/recorder/RecordSession;->getSegments()Ljava/util/ArrayList;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mToRemove:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mAddedSegments:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
iput-object v2, v0, Lco/vine/android/recorder/RecordingFile;->editedSegments:Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder;->swapTimestampsFromSegments(Ljava/util/ArrayList;)V
iput-boolean v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->setHasPreviewedAlreadyIfNeeded()V
iget-wide v2, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
invoke-virtual {p0, v2, v3}, Lco/vine/android/recorder/BasicVineRecorder;->changeProgress(J)V
iput-boolean v1, p0, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->finalFile:Lco/vine/android/recorder/RecordingFile;
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->swapSession()V
:cond_77
return-object p2
:cond_78
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_27
.end method
.method protected swapTimestampsFromSegments(Ljava/util/ArrayList;)V
.registers 9
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_5
:cond_5
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/recorder/RecordSegment;
iget-boolean v4, v3, Lco/vine/android/recorder/RecordSegment;->removed:Z
if-nez v4, :cond_5
invoke-virtual {v3}, Lco/vine/android/recorder/RecordSegment;->getCombinedAudioData()Lco/vine/android/recorder/AudioData;
move-result-object v4
iget v4, v4, Lco/vine/android/recorder/AudioData;->size:I
add-int/2addr v0, v4
goto :goto_5
:cond_1d
invoke-static {v0}, Lco/vine/android/recorder/RecordConfigUtils;->getTimeStampInNsFromSampleCounted(I)I
move-result v1
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4, v1}, Lco/vine/android/recorder/RecordController;->setAudioTimestamp(I)V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
int-to-long v5, v1
invoke-virtual {v4, v5, v6}, Lco/vine/android/recorder/RecordController;->setVideoTimeStamp(J)V
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v4}, Lco/vine/android/recorder/RecordController;->getTimestamp()J
move-result-wide v4
iput-wide v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
iget-wide v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentDuration:J
long-to-int v4, v4
iput v4, p0, Lco/vine/android/recorder/BasicVineRecorder;->mRecordingFileDuration:I
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder;->invalidateFinishButton()V
return-void
.end method
.method public switchImageStabilization()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v0}, Lco/vine/android/recorder/RecordController;->switchImageStabilization()V
:cond_9
return-void
.end method
.method public updateGhostBitmap(Landroid/graphics/Bitmap;)V
.registers 2
return-void
.end method