.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onServiceConnected - mVideoServiceConnection"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
check-cast p2, Lcom/spotify/mobile/android/spotlets/video/a;
iget-object v1, p2, Lcom/spotify/mobile/android/spotlets/video/a;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->e(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/b;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.spotify.mobile.android.spotlets.video.BackgroundableVideoPlayerActivityEXTRA_TITLE"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/video/c;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;->d:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a()Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService$PlayerState;
move-result-object v1
if-ne v0, v1, :cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->f(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Z
move-result v0
if-eqz v0, :cond_6f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/view/SurfaceView;Landroid/view/Display;)V
:cond_6f
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "onServiceDisconnected - mVideoServiceConnection"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method