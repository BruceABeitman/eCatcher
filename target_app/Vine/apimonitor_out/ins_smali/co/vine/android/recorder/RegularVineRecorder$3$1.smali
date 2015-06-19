.class  Lco/vine/android/recorder/RegularVineRecorder$3$1;
.super Ljava/lang/Object;
.source "RegularVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
.method constructor <init>(Lco/vine/android/recorder/RegularVineRecorder$3;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$3$1;->this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$3$1;->this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mActivity:Landroid/app/Activity;
if-eqz v0, :cond_25
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$3$1;->this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mActivity:Landroid/app/Activity;
iget-object v1, p0, Lco/vine/android/recorder/RegularVineRecorder$3$1;->this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
iget-object v1, v1, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v1, v1, Lco/vine/android/recorder/RegularVineRecorder;->mDeviceNotSupportedString:Ljava/lang/String;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$3$1;->this$1:Lco/vine/android/recorder/RegularVineRecorder$3;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mActivity:Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->finish()V
:cond_25
return-void
.end method