.class final Lcom/spotify/mobile/android/service/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/ServiceConnection;
.field final synthetic a:Lcom/spotify/mobile/android/service/AbstractProxyService;
.method private constructor <init>(Lcom/spotify/mobile/android/service/AbstractProxyService;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/service/AbstractProxyService;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/service/a;-><init>(Lcom/spotify/mobile/android/service/AbstractProxyService;)V
return-void
.end method
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/a; onServiceConnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "%s connected to SpotifyService"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->a(Lcom/spotify/mobile/android/service/AbstractProxyService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
check-cast p2, Lcom/spotify/mobile/android/service/an;
iput-object p2, v0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
iget-object v2, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/AbstractProxyService;->d()Ljava/util/concurrent/CountDownLatch;
move-result-object v2
iput-object v2, v0, Lcom/spotify/mobile/android/service/AbstractProxyService;->d:Ljava/util/concurrent/CountDownLatch;
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->a(Lcom/spotify/mobile/android/service/AbstractProxyService;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_36
.catchall {:try_start_1c .. :try_end_36} :catchall_37
const-string v1, " - Lcom/spotify/mobile/android/service/a; onServiceConnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_37
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/service/a; onServiceDisconnected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "%s disconnected from SpotifyService"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->a(Lcom/spotify/mobile/android/service/AbstractProxyService;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_1c
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->f()V
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
const/4 v2, 0x0
iput-object v2, v0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
const/4 v2, 0x0
iput-object v2, v0, Lcom/spotify/mobile/android/service/AbstractProxyService;->d:Ljava/util/concurrent/CountDownLatch;
iget-object v0, p0, Lcom/spotify/mobile/android/service/a;->a:Lcom/spotify/mobile/android/service/AbstractProxyService;
invoke-static {v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->a(Lcom/spotify/mobile/android/service/AbstractProxyService;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
monitor-exit v1
:try_end_35
.catchall {:try_start_1c .. :try_end_35} :catchall_36
const-string v1, " - Lcom/spotify/mobile/android/service/a; onServiceDisconnected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_36
move-exception v0
monitor-exit v1
throw v0
.end method