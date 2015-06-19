.class public Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;
.super Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;
.source "RegularVineRecorder.java"
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;
.method public constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
.registers 6
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
invoke-direct/range {p0 .. p5}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 5
invoke-super {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->onPostExecute(Ljava/lang/Void;)V
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
const/4 v2, 0x0
#setter for: Lco/vine/android/recorder/RegularVineRecorder;->mIsHidingFinishProgressDialog:Z
invoke-static {v1, v2}, Lco/vine/android/recorder/RegularVineRecorder;->access$002(Lco/vine/android/recorder/RegularVineRecorder;Z)Z
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_18
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_18
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_18
return-void
.end method
.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
.registers 7
const/4 v4, 0x0
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v1, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialog:Landroid/app/ProgressDialog;
if-eqz v0, :cond_57
invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_57
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
if-eqz v1, :cond_4e
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
array-length v1, v1
const/4 v2, 0x2
if-le v1, v2, :cond_4e
aget-object v1, p1, v4
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
const/16 v2, 0x64
iget-object v3, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v3, v3, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
array-length v3, v3
add-int/lit8 v3, v3, -0x1
div-int/2addr v2, v3
iget v3, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->mCurrentMessage:I
mul-int/2addr v2, v3
if-lt v1, v2, :cond_4e
iget v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->mCurrentMessage:I
add-int/lit8 v1, v1, 0x1
iget-object v2, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v2, v2, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
array-length v2, v2
if-ge v1, v2, :cond_48
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/RegularVineRecorder;->mFinishProgressDialogMessage:[Ljava/lang/CharSequence;
iget v2, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->mCurrentMessage:I
add-int/lit8 v2, v2, 0x1
aget-object v1, v1, v2
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
:cond_48
iget v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->mCurrentMessage:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->mCurrentMessage:I
:cond_4e
aget-object v1, p1, v4
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V
:cond_57
return-void
.end method
.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
.registers 2
check-cast p1, [Ljava/lang/Integer;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->onProgressUpdate([Ljava/lang/Integer;)V
return-void
.end method