.class public Lcom/spotify/mobile/android/service/ConnectManagerProxy;
.super Lcom/spotify/mobile/android/service/AbstractProxyService;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;-><init>()V
return-void
.end method
.method public final b()Landroid/os/IBinder;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/service/c;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/c;-><init>(Lcom/spotify/mobile/android/service/ConnectManagerProxy;)V
return-object v0
.end method
.method public final synthetic c()Landroid/os/Binder;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->i(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/ConnectManager;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/util/concurrent/CountDownLatch;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/ConnectManagerProxy;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->f(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
move-result-object v0
return-object v0
.end method