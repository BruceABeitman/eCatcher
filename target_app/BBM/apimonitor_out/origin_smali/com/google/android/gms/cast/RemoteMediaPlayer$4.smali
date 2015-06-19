.class Lcom/google/android/gms/cast/RemoteMediaPlayer$4;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# instance fields
.field final synthetic xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic xl:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic xp:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-object p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xp:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->a(Lcom/google/android/gms/internal/dq;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dq;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_44

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xy:Lcom/google/android/gms/internal/dx;

    iget-object v3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xp:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/dv;->b(Lcom/google/android/gms/internal/dx;Lorg/json/JSONObject;)J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_47
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_2b

    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :goto_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_44

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->a(Lcom/google/android/gms/common/api/Result;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_47

    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_44

    goto :goto_29

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_47
    move-exception v0

    :try_start_48
    iget-object v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$4;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v0
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_44
.end method
