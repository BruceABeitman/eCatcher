.class  Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;
.super Ljava/lang/Object;
.source "ProgressTimer.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
.field final synthetic val$controller:Lco/vine/android/recorder/BasicVineRecorder;
.method constructor <init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/BasicVineRecorder;)V
.registers 3
iput-object p1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->this$0:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
iput-object p2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->val$controller:Lco/vine/android/recorder/BasicVineRecorder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;->val$controller:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v0}, Lco/vine/android/recorder/BasicVineRecorder;->onProgressMaxReached()V
return-void
.end method