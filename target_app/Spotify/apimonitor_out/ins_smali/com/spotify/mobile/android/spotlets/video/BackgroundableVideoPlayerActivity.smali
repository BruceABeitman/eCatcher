.class public Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field private a:Landroid/widget/FrameLayout;
.field private b:Landroid/view/SurfaceView;
.field private c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.field private d:Lcom/spotify/mobile/android/spotlets/video/c;
.field private e:Z
.field private f:Landroid/widget/ProgressBar;
.field private g:Lcom/spotify/mobile/android/spotlets/video/b;
.field private h:Landroid/content/ServiceConnection;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;
const/4 v1, 0x0
new-array v1, v1, [I
invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$1;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;[I)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->g:Lcom/spotify/mobile/android/spotlets/video/b;
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$2;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->h:Landroid/content/ServiceConnection;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->e:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d:Lcom/spotify/mobile/android/spotlets/video/c;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/view/SurfaceView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b:Landroid/view/SurfaceView;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->f:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Lcom/spotify/mobile/android/spotlets/video/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->g:Lcom/spotify/mobile/android/spotlets/video/b;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->e:Z
return v0
.end method
.method public onBackPressed()V
.registers 1
return-void
.end method
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
.registers 5
invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b:Landroid/view/SurfaceView;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b:Landroid/view/SurfaceView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b(Landroid/view/SurfaceView;Landroid/view/Display;)V
:cond_1a
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const-string v0, "onCreate"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const v0, 0x7f03002d
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->setContentView(I)V
const v0, 0x7f0a0245
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/SurfaceView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b:Landroid/view/SurfaceView;
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/c;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/c;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d:Lcom/spotify/mobile/android/spotlets/video/c;
const v0, 0x7f0a0244
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a:Landroid/widget/FrameLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->d:Lcom/spotify/mobile/android/spotlets/video/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a:Landroid/widget/FrameLayout;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/c;->a(Landroid/widget/FrameLayout;)V
const v0, 0x7f0a0246
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->f:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->b:Landroid/view/SurfaceView;
invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$3;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->a:Landroid/widget/FrameLayout;
new-instance v1, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$4;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity$4;-><init>(Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->h:Landroid/content/ServiceConnection;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onDestroy()V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const-string v0, "onDestroy called"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
if-eqz v0, :cond_1f
const-string v0, "about to unbind service"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->c:Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->g:Lcom/spotify/mobile/android/spotlets/video/b;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->b(Lcom/spotify/mobile/android/spotlets/video/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->h:Landroid/content/ServiceConnection;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->unbindService(Landroid/content/ServiceConnection;)V
:cond_1f
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v0, "onPause"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "com.spotify.mobile.android.service.action.client.BACKGROUND"
invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const-string v0, "onResume"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "com.spotify.mobile.android.service.action.client.FOREGROUND"
invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string v1, " - Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoPlayerActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method