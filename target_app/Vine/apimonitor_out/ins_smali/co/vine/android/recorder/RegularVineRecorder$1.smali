.class  Lco/vine/android/recorder/RegularVineRecorder$1;
.super Ljava/lang/Object;
.source "RegularVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;
.method constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$1;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$1;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mToast:Landroid/widget/Toast;
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$1;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mToast:Landroid/widget/Toast;
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_d
return-void
.end method