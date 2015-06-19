.class  Lco/vine/android/recorder/VineRecorder$13;
.super Ljava/lang/Object;
.source "VineRecorder.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/VineRecorder;
.method constructor <init>(Lco/vine/android/recorder/VineRecorder;)V
.registers 2
iput-object p1, p0, Lco/vine/android/recorder/VineRecorder$13;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/VineRecorder$13;->this$0:Lco/vine/android/recorder/VineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/VineRecorder;->hideThumbnailOverlay()V
return-void
.end method