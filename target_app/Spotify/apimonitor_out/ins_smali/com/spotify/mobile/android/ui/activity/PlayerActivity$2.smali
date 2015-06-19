.class final Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
check-cast p2, Lcom/spotify/mobile/android/spotlets/ads/a;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/ads/a;->a()Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2; onServiceConnected"
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
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/PlayerActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/activity/PlayerActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlayerActivity;Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayerActivity$2; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method