.class  Lcom/google/android/gms/cast/RemoteMediaPlayer$9;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.field final synthetic xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
.field final synthetic xl:Lcom/google/android/gms/common/api/GoogleApiClient;
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 6
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:try_start_12
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_42
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xy:Lcom/google/android/gms/internal/dx;
invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/internal/dx;)J
:try_start_1d
:try_end_1d
.catchall {:try_start_12 .. :try_end_1d} :catchall_45
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_29
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:goto_27
monitor-exit v1
:try_end_28
.catchall {:try_start_1d .. :try_end_28} :catchall_42
return-void
:catch_29
move-exception v0
:try_start_2a
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v2, 0x1
invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->a(Lcom/google/android/gms/common/api/Result;)V
:try_end_37
.catchall {:try_start_2a .. :try_end_37} :catchall_45
:try_start_37
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:try_end_41
.catchall {:try_start_37 .. :try_end_41} :catchall_42
goto :goto_27
:catchall_42
move-exception v0
monitor-exit v1
throw v0
:catchall_45
move-exception v0
:try_start_46
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$9;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
throw v0
:try_end_51
.catchall {:try_start_46 .. :try_end_51} :catchall_42
.end method