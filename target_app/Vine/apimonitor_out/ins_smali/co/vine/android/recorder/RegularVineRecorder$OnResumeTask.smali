.class public Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;
.super Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;
.source "RegularVineRecorder.java"
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;
.method public constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/view/View;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/view/View;Ljava/lang/String;)V
return-void
.end method
.method protected onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$OnResumeTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_16
invoke-virtual {p0}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->isCancelled()Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_16
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lco/vine/android/recorder/RecordingFile;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->onPostExecute(Lco/vine/android/recorder/RecordingFile;)V
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/CharSequence;)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_25
iget-boolean v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->showDialogDelayed:Z
if-nez v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v0
if-nez v0, :cond_1b
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_1b
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialog:Landroid/app/ProgressDialog;
const/4 v1, 0x0
aget-object v1, p1, v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
:cond_25
return-void
.end method
.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/CharSequence;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->onProgressUpdate([Ljava/lang/CharSequence;)V
return-void
.end method
.method protected publishFinishLastSegmentProgress()V
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/CharSequence;
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/RegularVineRecorder;->mFinishLastSegmentString:Ljava/lang/CharSequence;
aput-object v2, v0, v1
invoke-virtual {p0, v0}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V
return-void
.end method
.method protected publishStartProgres()V
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/CharSequence;
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/RegularVineRecorder;->mStartProgressDialogMessage:Ljava/lang/CharSequence;
aput-object v2, v0, v1
invoke-virtual {p0, v0}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;->publishProgress([Ljava/lang/Object;)V
return-void
.end method