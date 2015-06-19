.class Lcom/google/android/gms/cast/s$3;
.super Lcom/google/android/gms/cast/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/e;

.field final synthetic b:Lorg/json/JSONObject;

.field final synthetic c:Lcom/google/android/gms/cast/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;Lorg/json/JSONObject;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    iput-object p2, p0, Lcom/google/android/gms/cast/s$3;->a:Lcom/google/android/gms/common/api/e;

    iput-object p3, p0, Lcom/google/android/gms/cast/s$3;->b:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/cast/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/s$3;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$3;->a:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_44

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$3;->g:Lcom/google/android/gms/internal/fz;

    iget-object v3, p0, Lcom/google/android/gms/cast/s$3;->b:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fz;Lorg/json/JSONObject;)J
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_47
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_2b

    :try_start_1f
    iget-object v0, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$3;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$3;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_47

    :try_start_39
    iget-object v0, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    goto :goto_29

    :catchall_44
    move-exception v0

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_39 .. :try_end_46} :catchall_44

    throw v0

    :catchall_47
    move-exception v0

    :try_start_48
    iget-object v2, p0, Lcom/google/android/gms/cast/s$3;->c:Lcom/google/android/gms/cast/s;

    invoke-static {v2}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    throw v0
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_44
.end method
