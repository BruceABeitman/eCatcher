.class final Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/support/v4/app/z;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(ILandroid/os/Bundle;)Landroid/support/v4/content/k;
.registers 10
const/4 v4, 0x0
new-instance v0, Landroid/support/v4/content/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
sget-object v2, Lcom/spotify/mobile/android/provider/n;->a:Landroid/net/Uri;
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a()[Ljava/lang/String;
move-result-object v3
move-object v5, v4
move-object v6, v4
invoke-direct/range {v0 .. v6}, Landroid/support/v4/content/c;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public final a(Landroid/support/v4/content/k;)V
.registers 2
return-void
.end method
.method public final synthetic a(Landroid/support/v4/content/k;Ljava/lang/Object;)V
.registers 9
check-cast p2, Landroid/database/Cursor;
if-eqz p2, :cond_a
invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_a
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)J
move-result-wide v2
sub-long v2, v0, v2
const-wide/16 v4, 0x190
cmp-long v2, v2, v4
if-ltz v2, :cond_a
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
invoke-static {v2, v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;J)J
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
const/4 v1, 0x0
invoke-interface {p2, v1}, Landroid/database/Cursor;->getFloat(I)F
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->a(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)F
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->c(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;)F
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;->b(Lcom/spotify/mobile/android/ui/activity/VolumeMonitoringActivity;F)V
goto :goto_a
.end method