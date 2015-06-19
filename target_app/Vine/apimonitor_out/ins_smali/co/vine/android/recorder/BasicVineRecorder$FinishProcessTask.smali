.class public Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;
.super Lco/vine/android/recorder/BaseFinishProcessTask;
.source "BasicVineRecorder.java"
.field final synthetic this$0:Lco/vine/android/recorder/BasicVineRecorder;
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
.registers 6
iput-object p1, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
invoke-direct {p0, p2, p3, p4, p5}, Lco/vine/android/recorder/BaseFinishProcessTask;-><init>(Ljava/lang/String;Ljava/lang/Runnable;ZZ)V
return-void
.end method
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.registers 6
iget-object v0, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->this$0:Lco/vine/android/recorder/BasicVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/BasicVineRecorder;->mFinishProcessRunnable:Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;
iget-object v1, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->tag:Ljava/lang/String;
iget-boolean v2, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->releasePreview:Z
iget-boolean v3, p0, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessTask;->saveSession:Z
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/recorder/BasicVineRecorder$FinishProcessRunnable;->run(Ljava/lang/String;ZZ)V
const/4 v0, 0x0
return-object v0
.end method