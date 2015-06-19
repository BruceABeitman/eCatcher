.class final Lcom/spotify/mobile/android/service/SpotifyService$3;
.super Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/SpotifyService;
.method constructor <init>(Lcom/spotify/mobile/android/service/SpotifyService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-direct {p0}, Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;-><init>()V
return-void
.end method
.method public final onConnectionError(I)V
.registers 6
const-string v0, "Connection error: %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.CONNECTION_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "error_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final onFeatureError(II)V
.registers 7
const-string v0, "onFeatureError(%d, %d)"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.FEATURE_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "feature"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "error_code"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final onIncognitoModeDisabledByTimer()V
.registers 5
const/4 v3, 0x0
const-string v0, "onIncognitoModeDisabledByTimer()"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
const-string v1, "spotify:internal:preferences"
const-string v2, "Settings"
invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/SpotifyService;->t(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ai;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/ai;->c(Landroid/app/PendingIntent;)V
return-void
.end method
.method public final onLastFmAuthenticationError()V
.registers 5
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
const-string v1, "spotify:internal:preferences"
const-string v2, "Settings"
invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/SpotifyService;->t(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ai;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/ai;->b(Landroid/app/PendingIntent;)V
return-void
.end method
.method public final onLoginError(I)V
.registers 6
const-string v0, "Login error: %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.LOGIN_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "error_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final onOfflineSyncError(I)V
.registers 6
const-string v0, "offline sync error: %d"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.OFFLINE_SYNC_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "error_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final onOrbitStarted()V
.registers 1
return-void
.end method
.method public final onOrbitStopped()V
.registers 5
const-string v0, "orbit stopped"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->n(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/am;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->a()Lcom/spotify/mobile/android/util/bm;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/bm;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->n(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/am;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/am;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->stopSelf()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->r(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ah;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->s(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/service/SpotifyService$3$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/service/SpotifyService$3$1;-><init>(Lcom/spotify/mobile/android/service/SpotifyService$3;)V
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public final onPlayTokenLost()V
.registers 5
const/4 v3, 0x0
const-string v0, "onPlayTokenLost"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
const-class v2, Lcom/spotify/music/MainActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/SpotifyService;->t(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ai;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/ai;->a(Landroid/app/PendingIntent;)V
return-void
.end method
.method public final onPlaybackError(ILjava/lang/String;)V
.registers 7
const/4 v3, 0x0
const-string v0, "onPlaybackError(playbackError: %d, uri: %s);"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v1, v3
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
const/16 v0, 0xe
if-ne p1, v0, :cond_21
const-class v0, Lcom/spotify/mobile/android/util/ca;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/ca;
invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/util/ca;->a(ILjava/lang/String;)V
:cond_21
const/16 v0, 0xd
if-ne p1, v0, :cond_4e
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/e/p;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/p;->d()Lcom/spotify/mobile/android/e/l;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/e/l;->e()Z
move-result v0
if-eqz v0, :cond_4e
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
const-class v2, Lcom/spotify/music/MainActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v1}, Lcom/spotify/mobile/android/service/SpotifyService;->t(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/ai;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/ai;->d(Landroid/app/PendingIntent;)V
:goto_4d
return-void
:cond_4e
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.PLAYBACK_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "error_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "uri"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
goto :goto_4d
.end method
.method public final onSessionIdle(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->u(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/service/SpotifyService$3$2;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/service/SpotifyService$3$2;-><init>(Lcom/spotify/mobile/android/service/SpotifyService$3;Z)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final onSocialError(ILjava/lang/String;)V
.registers 7
const-string v0, "onSocialError(%d, %s)"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.SOCIAL_ERROR"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v1, "error_code"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v1, "error_description"
invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method
.method public final onSyncActive(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->u(Lcom/spotify/mobile/android/service/SpotifyService;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/spotify/mobile/android/service/SpotifyService$3$3;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/service/SpotifyService$3$3;-><init>(Lcom/spotify/mobile/android/service/SpotifyService$3;Z)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public final onUpdateAvailable(Ljava/lang/String;)V
.registers 5
const-string v0, "onUpdateAvailable(%s)"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Landroid/content/Intent;
const-string v1, "com.spotify.mobile.android.service.broadcast.session.UPDATE_AVAILABLE"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
iget-object v1, p0, Lcom/spotify/mobile/android/service/SpotifyService$3;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->sendBroadcast(Landroid/content/Intent;)V
return-void
.end method