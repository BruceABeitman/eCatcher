.class  Lco/vine/android/AbstractRecordingActivity$8;
.super Ljava/lang/Object;
.source "AbstractRecordingActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/AbstractRecordingActivity;
.method constructor <init>(Lco/vine/android/AbstractRecordingActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/AbstractRecordingActivity$8;->this$0:Lco/vine/android/AbstractRecordingActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/AbstractRecordingActivity$8;->this$0:Lco/vine/android/AbstractRecordingActivity;
#getter for: Lco/vine/android/AbstractRecordingActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lco/vine/android/AbstractRecordingActivity;->access$1000(Lco/vine/android/AbstractRecordingActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lco/vine/android/AbstractRecordingActivity$8$1;
invoke-direct {v1, p0}, Lco/vine/android/AbstractRecordingActivity$8$1;-><init>(Lco/vine/android/AbstractRecordingActivity$8;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method