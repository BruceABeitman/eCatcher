.class public Lco/vine/android/recorder/ProgressTimer;
.super Ljava/lang/Object;
.source "ProgressTimer.java"
.field private static final INTERVAL:I = 0x23
.field private final mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
.field private final mTaskThread:Ljava/lang/Thread;
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/os/Handler;I)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
invoke-direct {v0, p1, p2, p3}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;-><init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/os/Handler;I)V
iput-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
new-instance v0, Ljava/lang/Thread;
iget-object v1, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
iput-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;
return-void
.end method
.method public release()V
.registers 3
iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTask:Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
const/4 v1, 0x0
iput-boolean v1, v0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z
iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
return-void
.end method
.method public start()V
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/ProgressTimer;->mTaskThread:Ljava/lang/Thread;
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
return-void
.end method