.class public Lcom/spotify/mobile/android/service/MetadataManagerProxy;
.super Lcom/spotify/mobile/android/service/AbstractProxyService;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;-><init>()V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/service/MetadataManagerProxy;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/4 v1, 0x1
invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
return-void
.end method
.method public final b()Landroid/os/IBinder;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/service/y;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/y;-><init>(Lcom/spotify/mobile/android/service/MetadataManagerProxy;)V
return-object v0
.end method
.method public final synthetic c()Landroid/os/Binder;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->e(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/mobile/android/service/managers/c;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/util/concurrent/CountDownLatch;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/MetadataManagerProxy;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->d(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;
move-result-object v0
return-object v0
.end method