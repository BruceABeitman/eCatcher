.class final Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->e(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeWidgetActivity;)Lcom/spotify/mobile/android/service/connections/b;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/connections/b;->e()F
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/RateLimitedSeekBar;->a(F)V
:cond_1f
return-void
.end method