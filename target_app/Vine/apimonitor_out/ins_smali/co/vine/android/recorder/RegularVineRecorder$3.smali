.class  Lco/vine/android/recorder/RegularVineRecorder$3;
.super Ljava/lang/Object;
.source "RegularVineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/RegularVineRecorder;
.method constructor <init>(Lco/vine/android/recorder/RegularVineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/RegularVineRecorder$3;->this$0:Lco/vine/android/recorder/RegularVineRecorder;
iget-object v0, v0, Lco/vine/android/recorder/RegularVineRecorder;->mHandler:Landroid/os/Handler;
new-instance v1, Lco/vine/android/recorder/RegularVineRecorder$3$1;
invoke-direct {v1, p0}, Lco/vine/android/recorder/RegularVineRecorder$3$1;-><init>(Lco/vine/android/recorder/RegularVineRecorder$3;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method