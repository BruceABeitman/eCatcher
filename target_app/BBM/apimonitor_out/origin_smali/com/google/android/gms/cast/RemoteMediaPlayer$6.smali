.class Lcom/google/android/gms/cast/RemoteMediaPlayer$6;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$b;


# instance fields
.field final synthetic xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field final synthetic xl:Lcom/google/android/gms/common/api/GoogleApiClient;

.field final synthetic xp:Lorg/json/JSONObject;

.field final synthetic xq:J

.field final synthetic xr:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;JILorg/json/JSONObject;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;

    iput-wide p3, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xq:J

    iput p5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xr:I

    iput-object p6, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xp:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/dq;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->a(Lcom/google/android/gms/internal/dq;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/dq;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->c(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xl:Lcom/google/android/gms/common/api/GoogleApiClient;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_48

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->e(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/dv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xy:Lcom/google/android/gms/internal/dx;

    iget-wide v2, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xq:J

    iget v4, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xr:I

    iget-object v5, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xp:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/dv;->a(Lcom/google/android/gms/internal/dx;JILorg/json/JSONObject;)J
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_2f

    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    :goto_2d
    monitor-exit v6
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_48

    return-void

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->j(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->a(Lcom/google/android/gms/common/api/Result;)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4b

    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_48

    goto :goto_2d

    :catchall_48
    move-exception v0

    monitor-exit v6

    throw v0

    :catchall_4b
    move-exception v0

    :try_start_4c
    iget-object v1, p0, Lcom/google/android/gms/cast/RemoteMediaPlayer$6;->xk:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->d(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/cast/RemoteMediaPlayer$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$a;->b(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    throw v0
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_48
.end method
