.class public Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;
.super Ljava/lang/Object;
.source "ProgressTimer.java"
.implements Ljava/lang/Runnable;
.field private hasNotifiedThreshold:Z
.field private final mController:Lco/vine/android/recorder/BasicVineRecorder;
.field private final mHandler:Landroid/os/Handler;
.field private mProgress:I
.field private final mThresholdMs:I
.field public volatile run:Z
.method public constructor <init>(Lco/vine/android/recorder/BasicVineRecorder;Landroid/os/Handler;I)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z
iput-object p1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/BasicVineRecorder;
iput-object p2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;
iput p3, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mThresholdMs:I
return-void
.end method
.method private exec()V
.registers 10
iget-object v1, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/BasicVineRecorder;
:goto_2
iget-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->run:Z
if-eqz v7, :cond_57
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->getCurrentDuration()J
move-result-wide v3
const-wide/16 v7, 0x0
cmp-long v7, v3, v7
if-gez v7, :cond_58
add-long v7, v3, v5
long-to-int v2, v7
:goto_17
iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
if-eq v2, v7, :cond_22
iput v2, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
invoke-virtual {v1, v7}, Lco/vine/android/recorder/BasicVineRecorder;->postProgressUpdate(I)V
:cond_22
iget-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->hasNotifiedThreshold:Z
if-nez v7, :cond_3f
invoke-virtual {v1}, Lco/vine/android/recorder/BasicVineRecorder;->isRecordingSegment()Z
move-result v7
if-eqz v7, :cond_3f
iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
iget v8, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mThresholdMs:I
if-lt v7, v8, :cond_3f
const/4 v7, 0x1
iput-boolean v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->hasNotifiedThreshold:Z
iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;
new-instance v8, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$1;
invoke-direct {v8, p0, v1}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$1;-><init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/BasicVineRecorder;)V
invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_3f
iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mController:Lco/vine/android/recorder/BasicVineRecorder;
invoke-virtual {v7}, Lco/vine/android/recorder/BasicVineRecorder;->getConfig()Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;
move-result-object v0
if-eqz v0, :cond_5a
iget v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mProgress:I
iget v8, v0, Lco/vine/android/recorder/RecordConfigUtils$RecordConfig;->maxDuration:I
if-lt v7, v8, :cond_5a
iget-object v7, p0, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->mHandler:Landroid/os/Handler;
new-instance v8, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;
invoke-direct {v8, p0, v1}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable$2;-><init>(Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;Lco/vine/android/recorder/BasicVineRecorder;)V
invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_57
return-void
:cond_58
long-to-int v2, v3
goto :goto_17
:cond_5a
const-wide/16 v7, 0x23
invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
goto :goto_2
.end method
.method public run()V
.registers 2
:try_start_0
invoke-direct {p0}, Lco/vine/android/recorder/ProgressTimer$ProgressTimerRunnable;->exec()V
:goto_3
:try_end_3
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method