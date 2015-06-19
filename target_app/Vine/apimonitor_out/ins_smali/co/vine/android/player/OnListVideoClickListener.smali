.class public Lco/vine/android/player/OnListVideoClickListener;
.super Ljava/lang/Object;
.source "OnListVideoClickListener.java"
.implements Landroid/view/View$OnClickListener;
.field private final mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
.field private mPosition:I
.method public constructor <init>(Lco/vine/android/player/HasVideoPlayerAdapter;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
return-void
.end method
.method public getPosition()I
.registers 2
iget v0, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I
return v0
.end method
.method public onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lco/vine/android/player/OnListVideoClickListener; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
iget v2, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I
const/4 v3, 0x0
invoke-interface {v1, v2, v3}, Lco/vine/android/player/HasVideoPlayerAdapter;->getPlayer(IZ)Lco/vine/android/player/SdkVideoView;
move-result-object v0
iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->getLastPlayer()Lco/vine/android/player/SdkVideoView;
move-result-object v1
if-eq v1, v0, :cond_16
iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
invoke-interface {v1}, Lco/vine/android/player/HasVideoPlayerAdapter;->pauseCurrentPlayer()V
:cond_16
if-eqz v0, :cond_41
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->hasStarted()Z
move-result v1
if-eqz v1, :cond_41
sget-boolean v1, Lcom/edisonwang/android/slog/SLog;->sLogsOn:Z
if-eqz v1, :cond_25
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->onViewClicked()V
:cond_25
iget v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->getPlayingPosition()I
move-result v2
if-ne v1, v2, :cond_3c
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPaused()Z
move-result v1
if-nez v1, :cond_39
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->isPlaying()Z
move-result v1
if-nez v1, :cond_3d
:cond_39
invoke-virtual {p0, v0}, Lco/vine/android/player/OnListVideoClickListener;->resume(Lco/vine/android/player/SdkVideoView;)V
:goto_3c
:cond_3c
const-string v1, " - Lco/vine/android/player/OnListVideoClickListener; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3d
invoke-virtual {v0}, Lco/vine/android/player/SdkVideoView;->pause()V
goto :goto_3c
:cond_41
iget-object v1, p0, Lco/vine/android/player/OnListVideoClickListener;->mAdapter:Lco/vine/android/player/HasVideoPlayerAdapter;
iget v2, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I
invoke-interface {v1, v2}, Lco/vine/android/player/HasVideoPlayerAdapter;->play(I)V
goto :goto_3c
.end method
.method protected resume(Lco/vine/android/player/SdkVideoView;)V
.registers 2
invoke-virtual {p1}, Lco/vine/android/player/SdkVideoView;->resume()V
return-void
.end method
.method public setPosition(I)V
.registers 2
iput p1, p0, Lco/vine/android/player/OnListVideoClickListener;->mPosition:I
return-void
.end method