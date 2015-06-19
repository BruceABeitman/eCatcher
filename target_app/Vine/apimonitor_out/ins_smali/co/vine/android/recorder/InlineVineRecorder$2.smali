.class  Lco/vine/android/recorder/InlineVineRecorder$2;
.super Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;
.source "InlineVineRecorder.java"
.field final synthetic this$0:Lco/vine/android/recorder/InlineVineRecorder;
.method constructor <init>(Lco/vine/android/recorder/InlineVineRecorder;Landroid/view/View;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lco/vine/android/recorder/InlineVineRecorder$2;->this$0:Lco/vine/android/recorder/InlineVineRecorder;
invoke-direct {p0, p1, p2, p3}, Lco/vine/android/recorder/RegularVineRecorder$OnResumeTask;-><init>(Lco/vine/android/recorder/RegularVineRecorder;Landroid/view/View;Ljava/lang/String;)V
return-void
.end method
.method protected onMakingSureCameraReady(Lco/vine/android/recorder/RecordController;)Z
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/InlineVineRecorder$2;->this$0:Lco/vine/android/recorder/InlineVineRecorder;
#getter for: Lco/vine/android/recorder/InlineVineRecorder;->mCameraSuccessfullyOpened:Z
invoke-static {v0}, Lco/vine/android/recorder/InlineVineRecorder;->access$000(Lco/vine/android/recorder/InlineVineRecorder;)Z
move-result v0
return v0
.end method