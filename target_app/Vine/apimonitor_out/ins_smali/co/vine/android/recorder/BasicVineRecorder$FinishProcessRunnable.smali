.class public Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
.super Ljava/lang/Object;
.source "BasicVineRecorder.java"
.field private isResumed:Z
.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public doNotDeleteSession(Z)Z
.registers 2
return p1
.end method
.method public isCompleteSession(Z)Z
.registers 2
return p1
.end method
.method public onCompleteSessionFinish(Z)V
.registers 12
const/4 v5, 0x1
const/4 v6, 0x0
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v3, v7, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
if-nez v3, :cond_13
new-instance v5, Lco/vine/android/VineLoggingException;
const-string v6, "Failed to stop recording."
invoke-direct {v5, v6}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static {v5}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_12
:goto_12
return-void
:cond_13
invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->getSession()Lco/vine/android/recorder/RecordSession;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/recorder/RecordSession;->calculateAudioCount()I
move-result v7
invoke-virtual {v4, v7}, Lco/vine/android/recorder/RecordSession;->setAudioDataCount(I)V
invoke-virtual {v4}, Lco/vine/android/recorder/RecordSession;->calculateVideoCount()I
move-result v7
invoke-virtual {v4, v7}, Lco/vine/android/recorder/RecordSession;->setVideoDataCount(I)V
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v7, v7, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
if-nez v7, :cond_de
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v7, v7, Lco/vine/android/recorder/BasicVineRecorder;->mFinished:Z
if-eqz v7, :cond_8a
invoke-virtual {v3}, Lco/vine/android/recorder/RecordingFile;->hasData()Z
move-result v7
if-eqz v7, :cond_8a
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v7}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z
move-result v7
if-nez v7, :cond_8a
move v1, v5
:goto_40
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {p0, v1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->doNotDeleteSession(Z)Z
move-result v8
iput-boolean v8, v7, Lco/vine/android/recorder/BasicVineRecorder;->mDoNotDeleteSession:Z
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v7, v7, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v7
if-lez v7, :cond_8c
invoke-virtual {v4}, Lco/vine/android/recorder/RecordSession;->getVideoDataCount()I
move-result v7
if-lez v7, :cond_8c
move v2, v5
:goto_59
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v7, v7, Lco/vine/android/recorder/BasicVineRecorder;->mEditedSegments:Ljava/util/ArrayList;
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v7
if-lez v7, :cond_6a
if-nez v2, :cond_6a
const-string v7, "Invalid session found."
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:cond_6a
if-eqz v2, :cond_b2
:try_start_6c
invoke-static {v3, p1}, Lco/vine/android/recorder/RecordSessionManager;->writeRecordingFile(Lco/vine/android/recorder/RecordingFile;Z)V
:goto_6f
:cond_6f
:try_end_6f
.catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_8e
if-eqz p1, :cond_80
iget-boolean v7, v3, Lco/vine/android/recorder/RecordingFile;->isLastSession:Z
if-nez v7, :cond_79
iput-boolean v5, v3, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
iput-boolean v6, v3, Lco/vine/android/recorder/RecordingFile;->isDirty:Z
:cond_79
if-eqz v2, :cond_80
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v7, v6}, Lco/vine/android/recorder/BasicVineRecorder;->cleanThumbnails(Z)V
:cond_80
if-eqz v1, :cond_12
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
if-nez v2, :cond_dc
:goto_86
invoke-virtual {v7, v5}, Lco/vine/android/recorder/BasicVineRecorder;->startHashTask(Z)V
goto :goto_12
:cond_8a
move v1, v6
goto :goto_40
:cond_8c
move v2, v6
goto :goto_59
:catch_8e
move-exception v0
if-eqz p1, :cond_97
new-instance v5, Ljava/lang/RuntimeException;
invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v5
:cond_97
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Failed to save the files due to IOException: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_6f
:cond_b2
iget-object v7, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v7, v7, Lco/vine/android/recorder/BasicVineRecorder;->mCanKeepRecording:Z
if-nez v7, :cond_6f
:try_start_b8
iget-object v7, v3, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
const-string v8, "Invalid session"
invoke-static {v7, v8}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V
:try_end_bf
.catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bf} :catch_c0
goto :goto_6f
:catch_c0
move-exception v0
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Failed to delete session: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
goto :goto_6f
:cond_dc
move v5, v6
goto :goto_86
:cond_de
iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mDoNotDeleteSession:Z
if-nez v5, :cond_108
iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-boolean v5, v5, Lco/vine/android/recorder/RecordingFile;->isSavedSession:Z
if-nez v5, :cond_108
:try_start_ec
const-string v5, "Session {} deleted."
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
iget-object v9, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v9, v9, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-object v9, v9, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
aput-object v9, v7, v8
invoke-static {v5, v7}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
iget-object v5, v5, Lco/vine/android/recorder/RecordingFile;->folder:Ljava/io/File;
const-string v7, "Discard Changes."
invoke-static {v5, v7}, Lco/vine/android/recorder/RecordSessionManager;->deleteSession(Ljava/io/File;Ljava/lang/String;)V
:try_end_108
.catch Ljava/io/IOException; {:try_start_ec .. :try_end_108} :catch_111
:goto_108
:cond_108
iget-object v5, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v5, v5, Lco/vine/android/recorder/BasicVineRecorder;->mToRemove:Ljava/util/HashSet;
invoke-virtual {v5}, Ljava/util/HashSet;->clear()V
goto/16 :goto_12
:catch_111
move-exception v0
const-string v5, "Failed to delete session."
new-array v6, v6, [Ljava/lang/Object;
invoke-static {v0, v5, v6}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_108
.end method
.method public onIncompleteSessionFinish()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mFinished:Z
if-eqz v0, :cond_2c
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
if-eqz v0, :cond_2c
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isComplete()Z
move-result v0
if-nez v0, :cond_2c
iget-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->isResumed:Z
if-nez v0, :cond_2c
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->isResumed:Z
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mHashTask:Lco/vine/android/recorder/ReusableHashAsyncTask;
invoke-virtual {v0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->resumeAll()V
:cond_2c
return-void
.end method
.method public onMakeRecordingStop(Ljava/lang/String;ZZ)Z
.registers 9
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
if-eqz v2, :cond_63
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
invoke-virtual {v2}, Lco/vine/android/recorder/RecordController;->isRecordingStarted()Z
move-result v0
const-string v2, "Stop recording in VineRecorder from {} : wasRecordingStarted {} releasePreview {} saveSession {} mDiscardChanges {} mDoNotDeleteSession {} mCurrentRecordingFile {}"
const/4 v3, 0x7
new-array v3, v3, [Ljava/lang/Object;
aput-object p1, v3, v1
const/4 v1, 0x1
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v1
const/4 v1, 0x2
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v1
const/4 v1, 0x3
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v1
const/4 v1, 0x4
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v4, v4, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v1
const/4 v1, 0x5
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v4, v4, Lco/vine/android/recorder/BasicVineRecorder;->mDoNotDeleteSession:Z
invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v4
aput-object v4, v3, v1
const/4 v1, 0x6
iget-object v4, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v4, v4, Lco/vine/android/recorder/BasicVineRecorder;->mCurrentRecordingFile:Lco/vine/android/recorder/RecordingFile;
aput-object v4, v3, v1
invoke-static {v2, v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v0, :cond_62
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->endRelativeTime()Z
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v2, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/BasicVineRecorder;->mVideoController:Lco/vine/android/recorder/RecordController;
iget-object v3, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-boolean v3, v3, Lco/vine/android/recorder/BasicVineRecorder;->mDiscardChanges:Z
invoke-virtual {v2, v3, p2}, Lco/vine/android/recorder/RecordController;->stop(ZZ)Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
move-result-object v2
iput-object v2, v1, Lco/vine/android/recorder/BasicVineRecorder;->grabThumbnailsRunnable:Lco/vine/android/util/MediaUtil$GenerateThumbnailsRunnable;
:goto_62
:cond_62
return v0
:cond_63
move v0, v1
goto :goto_62
.end method
.method protected onPreCompleteSession(Z)V
.registers 2
return-void
.end method
.method public reset()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->isResumed:Z
return-void
.end method
.method public declared-synchronized run(Ljava/lang/String;ZZ)V
.registers 6
monitor-enter p0
:try_start_1
invoke-virtual {p0, p1, p2, p3}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->onMakeRecordingStop(Ljava/lang/String;ZZ)Z
move-result v0
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->onPreCompleteSession(Z)V
invoke-virtual {p0, v0}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->isCompleteSession(Z)Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p0, p3}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->onCompleteSessionFinish(Z)V
:try_end_11
.catchall {:try_start_1 .. :try_end_11} :catchall_17
:goto_11
monitor-exit p0
return-void
:cond_13
:try_start_13
invoke-virtual {p0}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->onIncompleteSessionFinish()V
:try_end_16
.catchall {:try_start_13 .. :try_end_16} :catchall_17
goto :goto_11
:catchall_17
move-exception v1
monitor-exit p0
throw v1
.end method