.class  Lco/vine/android/AbstractRecordingActivity$10$1$1;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$2:Lco/vine/android/AbstractRecordingActivity$10$1;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity$10$1;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$10$1$1;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$10$1$1;->this$2:Lco/vine/android/AbstractRecordingActivity$10$1;
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10$1;->this$1:Lco/vine/android/AbstractRecordingActivity$10;
iget-object v0, v0, Lco/vine/android/AbstractRecordingActivity$10;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mCameraIconOverlay:Landroid/view/View;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1100(Lco/vine/android/AbstractRecordingActivity;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method