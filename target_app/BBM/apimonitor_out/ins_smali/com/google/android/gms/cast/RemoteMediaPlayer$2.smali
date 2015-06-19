.class  Lcom/google/android/gms/cast/RemoteMediaPlayer$2;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.field final synthetic xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
.field final synthetic xl:Lcom/google/android/gms/common/api/GoogleApiClient;
.field final synthetic xm:Lcom/google/android/gms/cast/MediaInfo;
.field final synthetic xn:Z
.field final synthetic xo:J
.field final synthetic xp:Lorg/json/JSONObject;
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)V
.registers 8
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;
iput-object p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xm:Lcom/google/android/gms/cast/MediaInfo;
iput-boolean p4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xn:Z
iput-wide p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xo:J
iput-object p7, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xp:Lorg/json/JSONObject;
invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/dq;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->a(Lcom/google/android/gms/internal/dq;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/dq;)V
.registers 10
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
move-result-object v7
monitor-enter v7
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:try_start_12
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_4a
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xy:Lcom/google/android/gms/internal/dx;
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xm:Lcom/google/android/gms/cast/MediaInfo;
iget-boolean v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xn:Z
iget-wide v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xo:J
iget-object v6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xp:Lorg/json/JSONObject;
invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/internal/dx;Lcom/google/android/gms/cast/MediaInfo;ZJLorg/json/JSONObject;)J
:try_end_25
.catchall {:try_start_12 .. :try_end_25} :catchall_4d
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_25} :catch_31
:try_start_25
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:goto_2f
monitor-exit v7
:try_end_30
.catchall {:try_start_25 .. :try_end_30} :catchall_4a
return-void
:catch_31
move-exception v0
:try_start_32
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v1, 0x1
invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->a(Lcom/google/android/gms/common/api/Result;)V
:try_end_3f
.catchall {:try_start_32 .. :try_end_3f} :catchall_4d
:try_start_3f
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:try_end_49
.catchall {:try_start_3f .. :try_end_49} :catchall_4a
goto :goto_2f
:catchall_4a
move-exception v0
monitor-exit v7
throw v0
:catchall_4d
move-exception v0
:try_start_4e
iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$2;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
throw v0
:try_end_59
.catchall {:try_start_4e .. :try_end_59} :catchall_4a
.end method