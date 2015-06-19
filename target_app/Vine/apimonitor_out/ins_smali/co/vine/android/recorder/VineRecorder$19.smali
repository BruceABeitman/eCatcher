.class  Lco/vine/android/recorder/VineRecorder$19;
.super Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;
.source "VineRecorder.java"
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
.registers 6
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$19;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct/range {p0 .. p5}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-void
.end method
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/VineRecorder$19;->onPostExecute(Ljava/lang/Void;)V
return-void
.end method
.method protected onPostExecute(Ljava/lang/Void;)V
.registers 5
invoke-super {p0, p1}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->onPostExecute(Ljava/lang/Void;)V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$19;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$19;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$3000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
#calls: Lco/vine/android/recorder/VineRecorder;->animateSpinner(Landroid/view/View;Z)V
invoke-static {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->access$3100(Lco/vine/android/recorder/VineRecorder;Landroid/view/View;Z)V
return-void
.end method
.method protected onPreExecute()V
.registers 4
invoke-super {p0}, Lco/vine/android/recorder/RegularVineRecorder$FinishProcessTask;->onPreExecute()V
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$19;->this$0:Lco/vine/android/recorder/VineRecorder;
iget-object v1, p0, Lco/vine/android/recorder/VineRecorder$19;->this$0:Lco/vine/android/recorder/VineRecorder;
#getter for: Lco/vine/android/recorder/VineRecorder;->mFinishLoadingOverlay:Landroid/view/View;
invoke-static {v1}, Lco/vine/android/recorder/VineRecorder;->access$3000(Lco/vine/android/recorder/VineRecorder;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x1
#calls: Lco/vine/android/recorder/VineRecorder;->animateSpinner(Landroid/view/View;Z)V
invoke-static {v0, v1, v2}, Lco/vine/android/recorder/VineRecorder;->access$3100(Lco/vine/android/recorder/VineRecorder;Landroid/view/View;Z)V
return-void
.end method