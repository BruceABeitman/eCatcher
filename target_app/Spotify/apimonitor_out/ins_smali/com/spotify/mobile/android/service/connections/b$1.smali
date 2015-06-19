.class final Lcom/spotify/mobile/android/service/connections/b$1;
.super Lcom/spotify/mobile/android/service/e;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/service/connections/b;
.method constructor <init>(Lcom/spotify/mobile/android/service/connections/b;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-direct {p0}, Lcom/spotify/mobile/android/service/e;-><init>()V
return-void
.end method
.method public final a(Ljava/util/List;I)V
.registers 6
iget-object v1, p0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/b;Ljava/util/List;)Ljava/util/List;
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-static {}, Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;->values()[Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
move-result-object v2
aget-object v2, v2, p2
invoke-static {v0, v2}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/b;Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;)Lcom/spotify/mobile/android/service/managers/ConnectManager$DeviceState;
iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/b$1;->a:Lcom/spotify/mobile/android/service/connections/b;
invoke-static {v0}, Lcom/spotify/mobile/android/service/connections/b;->b(Lcom/spotify/mobile/android/service/connections/b;)Landroid/os/Handler;
move-result-object v0
new-instance v2, Lcom/spotify/mobile/android/service/connections/b$1$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/service/connections/b$1$1;-><init>(Lcom/spotify/mobile/android/service/connections/b$1;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
monitor-exit v1
:try_end_22
.catchall {:try_start_3 .. :try_end_22} :catchall_23
return-void
:catchall_23
move-exception v0
monitor-exit v1
throw v0
.end method