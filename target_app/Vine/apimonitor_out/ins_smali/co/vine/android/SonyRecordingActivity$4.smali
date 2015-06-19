.class  Lco/vine/android/SonyRecordingActivity$4;
.super Ljava/lang/Object;
.source "SonyRecordingActivity.java"
.implements Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector$OnModeFinishListener;
.field final synthetic this$0:Lco/vine/android/SonyRecordingActivity;
.method constructor <init>(Lco/vine/android/SonyRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SonyRecordingActivity$4;->this$0:Lco/vine/android/SonyRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onModeFinish()V
.registers 3
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$4;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
move-result-object v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$4;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyCapturingModeSelector:Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$000(Lco/vine/android/SonyRecordingActivity;)Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;
move-result-object v0
invoke-virtual {v0}, Lcom/sonymobile/camera/addon/capturingmode/CapturingModeSelector;->close()V
iget-object v0, p0, Lco/vine/android/SonyRecordingActivity$4;->this$0:Lco/vine/android/SonyRecordingActivity;
#getter for: Lco/vine/android/SonyRecordingActivity;->mSonyModeSelectorButton:Landroid/widget/ImageView;
invoke-static {v0}, Lco/vine/android/SonyRecordingActivity;->access$200(Lco/vine/android/SonyRecordingActivity;)Landroid/widget/ImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_1b
return-void
.end method