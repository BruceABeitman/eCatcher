.class public Lcom/google/android/youtube/player/YouTubePlayerFragment;
.super Landroid/app/Fragment;
.implements Lcom/google/android/youtube/player/YouTubePlayer$Provider;
.field private final a:Lcom/google/android/youtube/player/YouTubePlayerFragment$a;
.field private b:Landroid/os/Bundle;
.field private c:Lcom/google/android/youtube/player/YouTubePlayerView;
.field private d:Ljava/lang/String;
.field private e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Fragment;-><init>()V
new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/youtube/player/YouTubePlayerFragment$a;-><init>(Lcom/google/android/youtube/player/YouTubePlayerFragment;B)V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->a:Lcom/google/android/youtube/player/YouTubePlayerFragment$a;
return-void
.end method
.method static synthetic a(Lcom/google/android/youtube/player/YouTubePlayerFragment;)Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
.registers 2
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
return-object v0
.end method
.method private a()V
.registers 8
const/4 v6, 0x0
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->getActivity()Landroid/app/Activity;
move-result-object v1
iget-object v3, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->d:Ljava/lang/String;
iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
iget-object v5, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->b:Landroid/os/Bundle;
move-object v2, p0
invoke-virtual/range {v0 .. v5}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Landroid/app/Activity;Lcom/google/android/youtube/player/YouTubePlayer$Provider;Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;Landroid/os/Bundle;)V
iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->b:Landroid/os/Bundle;
iput-object v6, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
:cond_1d
return-void
.end method
.method public static newInstance()Lcom/google/android/youtube/player/YouTubePlayerFragment;
.registers 1
new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerFragment;
invoke-direct {v0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;-><init>()V
return-object v0
.end method
.method public initialize(Ljava/lang/String;Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;)V
.registers 4
const-string v0, "Developer key cannot be null or empty"
invoke-static {p1, v0}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->d:Ljava/lang/String;
iput-object p2, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->e:Lcom/google/android/youtube/player/YouTubePlayer$OnInitializedListener;
invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->a()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_e
const-string v0, "YouTubePlayerFragment.KEY_PLAYER_VIEW_STATE"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v0
:goto_b
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->b:Landroid/os/Bundle;
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_b
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
new-instance v0, Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->getActivity()Landroid/app/Activity;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
iget-object v4, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->a:Lcom/google/android/youtube/player/YouTubePlayerFragment$a;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/youtube/player/YouTubePlayerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/youtube/player/YouTubePlayerView$b;)V
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-direct {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->a()V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
return-object v0
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_16
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->getActivity()Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_12
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v0
if-eqz v0, :cond_1a
:cond_12
const/4 v0, 0x1
:goto_13
invoke-virtual {v1, v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a(Z)V
:cond_16
invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_13
.end method
.method public onDestroyView()V
.registers 3
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {p0}, Lcom/google/android/youtube/player/YouTubePlayerFragment;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/google/android/youtube/player/YouTubePlayerView;->b(Z)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->c()V
invoke-super {p0}, Landroid/app/Fragment;->onPause()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onResume()V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->b()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->e()Landroid/os/Bundle;
move-result-object v0
:goto_d
const-string v1, "YouTubePlayerFragment.KEY_PLAYER_VIEW_STATE"
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->b:Landroid/os/Bundle;
goto :goto_d
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Fragment;->onStart()V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->a()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/google/android/youtube/player/YouTubePlayerFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/youtube/player/YouTubePlayerFragment;->c:Lcom/google/android/youtube/player/YouTubePlayerView;
invoke-virtual {v0}, Lcom/google/android/youtube/player/YouTubePlayerView;->d()V
invoke-super {p0}, Landroid/app/Fragment;->onStop()V
const-string v1, " - Lcom/google/android/youtube/player/YouTubePlayerFragment; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method