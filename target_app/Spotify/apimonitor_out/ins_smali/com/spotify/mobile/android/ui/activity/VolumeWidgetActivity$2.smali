.class final Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/view/s;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->d(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Ljava/lang/Runnable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(FZ)V
.registers 4
if-eqz p2, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/service/connections/b;->a(F)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->b(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
:cond_1c
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->c()F
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(F)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->d(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Ljava/lang/Runnable;
move-result-object v1
const-wide/16 v2, 0x190
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method