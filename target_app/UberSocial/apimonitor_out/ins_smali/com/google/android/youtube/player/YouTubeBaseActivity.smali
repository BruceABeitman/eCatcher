.class public Lcom/google/android/youtube/player/YouTubeBaseActivity;
.super Landroid/app/Activity;
.field private a:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
.field private b:Lcom/google/android/youtube/player/YouTubePlayerView;
.field private c:I
.field private d:Landroid/os/Bundle;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubeBaseActivity;Lcom/google/android/youtube/player/YouTubePlayerView;)Lcom/google/android/youtube/player/YouTubePlayerView;
.registers 2
iput-object p1, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
return-object p1
.end method
.method static synthetic b(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Landroid/os/Bundle;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d:Landroid/os/Bundle;
return-object v0
.end method
.method static synthetic c(Lcom/google/android/youtube/player/YouTubeBaseActivity;)Lcom/google/android/youtube/player/YouTubePlayerView;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
return-object v0
.end method
.method static synthetic d(Lcom/google/android/youtube/player/YouTubeBaseActivity;)I
.registers 2
iget v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c:I
return v0
.end method
.method final a()Lcom/google/android/youtube/player/YouTubePlayerView$b;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/YouTubeBaseActivity$a;-><init>(Lcom/google/android/youtube/player/YouTubeBaseActivity;B)V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->a:Lcom/google/android/youtube/player/YouTubeBaseActivity$a;
if-eqz p1, :cond_16
const-string v0, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
:goto_13
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d:Landroid/os/Bundle;
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_16
const/4 v0, 0x0
goto :goto_13
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubeBaseActivity;->isFinishing()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Z)V
:cond_d
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c:I
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->c()V
:cond_c
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
const/4 v0, 0x2
iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c:I
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V
:cond_f
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()Landroid/os/Bundle;
move-result-object v0
:goto_d
const-string v1, "YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->d:Landroid/os/Bundle;
goto :goto_d
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const/4 v0, 0x1
iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c:I
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V
:cond_f
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubeBaseActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
iput v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->c:I
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubeBaseActivity;->b:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d()V
:cond_c
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubeBaseActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method