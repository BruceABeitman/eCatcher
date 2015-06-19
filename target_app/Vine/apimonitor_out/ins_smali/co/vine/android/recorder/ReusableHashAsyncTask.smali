.class public Lco/vine/android/recorder/ReusableHashAsyncTask;
.super Lco/vine/android/recorder/HashAsyncTask;
.source "ReusableHashAsyncTask.java"
.field private final mCanKeepRecording:Z
.field private mComputedFile:Lco/vine/android/recorder/RecordingFile;
.field private mIsCompleted:Z
.field private final mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
.field private mStartingException:Ljava/lang/Exception;
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0}, Lco/vine/android/recorder/HashAsyncTask;-><init>(Lco/vine/android/recorder/RecordCompleteConsumer;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mIsCompleted:Z
new-instance v0, Ljava/lang/Exception;
invoke-direct {v0}, Ljava/lang/Exception;-><init>()V
iput-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mStartingException:Ljava/lang/Exception;
iput-object p1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->canKeepRecording()Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z
return-void
.end method
.method protected varargs doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
.registers 5
iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z
if-eqz v0, :cond_9
invoke-super {p0, p1}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
:goto_8
return-object v0
:cond_9
const/4 v0, 0x1
new-array v0, v0, [Lco/vine/android/recorder/RecordingFile;
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v2}, Lco/vine/android/recorder/BasicVineRecorder;->getFile()Lco/vine/android/recorder/RecordingFile;
move-result-object v2
aput-object v2, v0, v1
invoke-super {p0, v0}, Lco/vine/android/recorder/HashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
goto :goto_8
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lco/vine/android/recorder/RecordingFile;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/ReusableHashAsyncTask;->doInBackground([Lco/vine/android/recorder/RecordingFile;)Lco/vine/android/recorder/RecordingFile;
move-result-object v0
return-object v0
.end method
.method public getComputedFile()Lco/vine/android/recorder/RecordingFile;
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;
return-object v0
.end method
.method public isComplete()Z
.registers 2
iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mIsCompleted:Z
return v0
.end method
.method public onComplete(Lco/vine/android/recorder/RecordingFile;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.registers 4
iget-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z
if-nez v0, :cond_9
iget-object v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/BasicVineRecorder;->setFinalFile(Lco/vine/android/recorder/RecordingFile;)V
:cond_9
invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z
move-result v0
if-eqz v0, :cond_12
iput-object p1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mComputedFile:Lco/vine/android/recorder/RecordingFile;
:goto_11
return-void
:cond_12
invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->run()V
goto :goto_11
.end method
.method public onError(Lco/vine/android/recorder/RecordingFile;Ljava/lang/Exception;Lco/vine/android/recorder/RecordCompleteConsumer;)V
.registers 6
invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->isCancelled()Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mIsCompleted:Z
:goto_9
return-void
:cond_a
const-string v0, "Pre-post processing error."
invoke-static {v0, p2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
const-string v0, "Pre-post was started here."
iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mStartingException:Ljava/lang/Exception;
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9
.end method
.method public reset()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mIsCompleted:Z
return-void
.end method
.method public resumeAll()V
.registers 3
iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getOnCompleteConsumer()Ljava/lang/Runnable;
move-result-object v0
if-eqz v0, :cond_10
iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z
if-nez v1, :cond_10
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:goto_f
return-void
:cond_10
invoke-virtual {p0}, Lco/vine/android/recorder/ReusableHashAsyncTask;->run()V
goto :goto_f
.end method
.method public run()V
.registers 3
iget-object v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mRecorder:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getOnCompleteConsumer()Ljava/lang/Runnable;
move-result-object v0
if-eqz v0, :cond_10
iget-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mCanKeepRecording:Z
if-nez v1, :cond_10
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
:goto_f
return-void
:cond_10
const/4 v1, 0x1
iput-boolean v1, p0, Lco/vine/android/recorder/ReusableHashAsyncTask;->mIsCompleted:Z
goto :goto_f
.end method