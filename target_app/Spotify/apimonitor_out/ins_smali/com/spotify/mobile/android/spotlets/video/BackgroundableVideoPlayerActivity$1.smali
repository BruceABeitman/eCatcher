.class final Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;
.super Lcom/spotify/mobile/android/spotlets/video/b;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
.method varargs constructor <init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;[I)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
const/4 v0, 0x0
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/spotlets/video/b;-><init>(I[I)V
return-void
.end method
.method protected final a()V
.registers 3
const-string v0, "onCompletion"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(Lcom/spotify/mobile/android/spotlets/video/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->finish()V
return-void
.end method
.method protected final a(I)V
.registers 2
return-void
.end method
.method protected final b()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(Lcom/spotify/mobile/android/spotlets/video/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/view/SurfaceView;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/view/SurfaceView;Landroid/view/Display;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/video/c;->a()V
return-void
.end method
.method protected final b(I)V
.registers 6
const/4 v3, 0x0
const-string v0, "onInfo - what = %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
sparse-switch p1, :sswitch_data_2a
:goto_12
return-void
:sswitch_13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_12
:sswitch_1f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;->a:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_12
nop
:sswitch_data_2a
.sparse-switch
0x3 -> :sswitch_13
0x2bd -> :sswitch_1f
0x2be -> :sswitch_13
.end sparse-switch
.end method
.method protected final c(I)V
.registers 2
return-void
.end method