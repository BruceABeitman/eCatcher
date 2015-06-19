.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/SurfaceHolder$Callback;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
.registers 8
const-string v0, "surfaceChanged"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
if-eqz v0, :cond_38
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(Lcom/spotify/mobile/android/spotlets/video/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/view/SurfaceView;Landroid/view/Display;)V
:cond_38
return-void
.end method
.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 4
const-string v0, "surfaceCreated"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Z)Z
return-void
.end method
.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
const-string v0, "surfaceDestroyed"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
invoke-virtual {v0, v3, v3}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/view/SurfaceView;Landroid/view/Display;)V
:cond_1f
return-void
.end method