.class  Lco/vine/android/SonyRecordingActivity$3;
.super Ljava/lang/Object;
.source "SonyRecordingActivity.java"
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeSelectListener;
.field final synthetic this$0:Lco/vine/android/SonyRecordingActivity;
.method constructor <init>(Lco/vine/android/SonyRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SonyRecordingActivity$3;->this$0:Lco/vine/android/SonyRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onModeSelect(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$3;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$3;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
move-result-object v0
invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V
:cond_11
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$3;->this$0:Lco/vine/android/SonyRecordingActivity;
invoke-virtual {v0}, Lco/vine/android/SonyRecordingActivity;->finish()V
return-void
.end method