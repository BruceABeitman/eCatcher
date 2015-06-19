.class final Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
check-cast p2, Lcom/spotify/mobile/android/spotlets/video/a;
invoke-virtual {p2}, Lcom/spotify/mobile/android/spotlets/video/a;->a()Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getId()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;
const/4 v3, 0x2
new-array v3, v3, [I
fill-array-data v3, :array_96
invoke-direct {v2, p0, v3, v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1$1;-><init>(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;[ILjava/lang/String;)V
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Lcom/spotify/mobile/android/spotlets/video/b;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getTitle()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getAdvertiser()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v3
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getDuration()J
move-result-wide v3
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v5}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v5
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getCompanionAd()Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;
move-result-object v5
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/ads/model/CompanionAd;->getUrl()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v6}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v6
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getClickUrl()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->e(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getTitle()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;)Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->getVideos()Ljava/util/List;
move-result-object v0
const/4 v3, 0x0
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/Video;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/Video;->getUrl()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->unbindService(Landroid/content/ServiceConnection;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:array_96
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x30t 0x75t 0x0t 0x0t
.end array-data
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1;->a:Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;->a(Lcom/spotify/mobile/android/spotlets/ads/VideoAdService;Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;)Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;
const-string v1, " - Lcom/spotify/mobile/android/spotlets/ads/VideoAdService$1; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method