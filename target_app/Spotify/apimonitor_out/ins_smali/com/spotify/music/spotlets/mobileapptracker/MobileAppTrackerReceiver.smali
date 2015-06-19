.class public Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 9
const/4 v5, 0x0
const-string v0, "Install referrer detected"
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v0, "com.spotify.mobile.android.service.mat.install.referrer"
invoke-static {p1, v0}, Lcom/spotify/music/spotlets/mobileapptracker/MobileAppTrackerIntentService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_27
invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
const-string v2, "Install referrer %s"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const-string v4, "referrer"
invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v5
invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
:cond_27
invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
return-void
.end method