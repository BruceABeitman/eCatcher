.class  Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;
.super Ljava/util/TimerTask;
.source "SdkVideoTimer.java"
.implements Ljava/lang/Runnable;
.field private final mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
.field private final mHandler:Landroid/os/Handler;
.method public constructor <init>(Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;)V
.registers 3
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;
iput-object p1, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
.registers 2
iget-object v0, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
return-object v0
.end method
.method public run()V
.registers 6
iget-object v3, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mController:Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;
invoke-interface {v3}, Lco/vine/android/player/SdkVideoTimer$HasVideoPlayerViewController;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v2
if-eqz v2, :cond_14
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->isInPlaybackState()Z
move-result v3
if-eqz v3, :cond_14
:try_start_e
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->getDuration()I
move-result v1
if-gez v1, :cond_15
:cond_14
:goto_14
return-void
:cond_15
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I
move-result v0
if-lez v0, :cond_14
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->getCurrentPosition()I
move-result v3
sub-int v3, v1, v3
const/16 v4, 0xfa
if-ge v3, v4, :cond_14
const-string v3, "Restart."
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
iget-object v3, p0, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;->mHandler:Landroid/os/Handler;
new-instance v4, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;
invoke-direct {v4, p0}, Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask$1;-><init>(Lco/vine/android/player/SdkVideoTimer$SdkVideoTimerTask;)V
invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_start_34
:try_end_34
.catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_34} :catch_3a
invoke-virtual {v2}, Lco/vine/android/player/SdkVideoView;->restart()V
:try_end_37
.catch Ljava/lang/Exception; {:try_start_34 .. :try_end_37} :catch_38
.catch Ljava/lang/IllegalStateException; {:try_start_34 .. :try_end_37} :catch_3a
goto :goto_14
:catch_38
move-exception v3
goto :goto_14
:catch_3a
move-exception v3
goto :goto_14
.end method