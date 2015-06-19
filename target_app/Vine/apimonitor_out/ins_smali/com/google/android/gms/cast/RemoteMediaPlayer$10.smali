.class  Lcom/google/android/gms/cast/RemoteMediaPlayer$10;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;
.field final synthetic AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
.field final synthetic AY:Lcom/google/android/gms/common/api/GoogleApiClient;
.field final synthetic Be:Lorg/json/JSONObject;
.field final synthetic Bi:Z
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;ZLorg/json/JSONObject;)V
.registers 5
iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AY:Lcom/google/android/gms/common/api/GoogleApiClient;
iput-boolean p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->Bi:Z
iput-object p4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->Be:Lorg/json/JSONObject;
invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V
return-void
.end method
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
.registers 2
check-cast p1, Lcom/google/android/gms/internal/gi;
invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->a(Lcom/google/android/gms/internal/gi;)V
return-void
.end method
.method protected a(Lcom/google/android/gms/internal/gi;)V
.registers 7
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;
move-result-object v1
monitor-enter v1
:try_start_7
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AY:Lcom/google/android/gms/common/api/GoogleApiClient;
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:try_start_12
:try_end_12
.catchall {:try_start_7 .. :try_end_12} :catchall_46
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/gp;
move-result-object v0
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->Bn:Lcom/google/android/gms/internal/gr;
iget-boolean v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->Bi:Z
iget-object v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->Be:Lorg/json/JSONObject;
invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/gp;->a(Lcom/google/android/gms/internal/gr;ZLorg/json/JSONObject;)J
:try_end_21
.catchall {:try_start_12 .. :try_end_21} :catchall_62
.catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_21} :catch_2d
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_49
:try_start_21
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
:goto_2b
monitor-exit v1
:try_end_2c
.catchall {:try_start_21 .. :try_end_2c} :catchall_46
return-void
:catch_2d
move-exception v0
:try_start_2e
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v2, 0x1
invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->b(Lcom/google/android/gms/common/api/Result;)V
:try_end_3b
.catchall {:try_start_2e .. :try_end_3b} :catchall_62
:try_start_3b
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
goto :goto_2b
:catchall_46
move-exception v0
monitor-exit v1
:try_end_48
.catchall {:try_start_3b .. :try_end_48} :catchall_46
throw v0
:catch_49
move-exception v0
:try_start_4a
new-instance v0, Lcom/google/android/gms/common/api/Status;
const/4 v2, 0x1
invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->l(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->b(Lcom/google/android/gms/common/api/Result;)V
:try_start_57
:try_end_57
.catchall {:try_start_4a .. :try_end_57} :catchall_62
iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
goto :goto_2b
:catchall_62
move-exception v0
iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$10;->AX:Lcom/google/android/gms/cast/RemoteMediaPlayer;
invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
throw v0
:try_end_6e
.catchall {:try_start_57 .. :try_end_6e} :catchall_46
.end method