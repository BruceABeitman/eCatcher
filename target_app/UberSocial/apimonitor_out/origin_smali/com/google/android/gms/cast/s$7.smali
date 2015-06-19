.class Lcom/google/android/gms/cast/s$7;
.super Lcom/google/android/gms/cast/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;DLorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/e;

.field final synthetic b:D

.field final synthetic c:Lorg/json/JSONObject;

.field final synthetic d:Lcom/google/android/gms/cast/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;DLorg/json/JSONObject;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    iput-object p2, p0, Lcom/google/android/gms/cast/s$7;->a:Lcom/google/android/gms/common/api/e;

    iput-wide p3, p0, Lcom/google/android/gms/cast/s$7;->b:D

    iput-object p5, p0, Lcom/google/android/gms/cast/s$7;->c:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/cast/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$7;->a:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_46

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$7;->g:Lcom/google/android/gms/internal/fz;

    iget-wide v3, p0, Lcom/google/android/gms/cast/s$7;->b:D

    iget-object v5, p0, Lcom/google/android/gms/cast/s$7;->c:Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fz;DLorg/json/JSONObject;)J
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_7b
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_21} :catch_2d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_21} :catch_49
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_62

    :try_start_21
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_7b

    :try_start_3b
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_7b

    :try_start_57
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_46

    goto :goto_2b

    :catch_62
    move-exception v0

    :try_start_63
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$7;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_7b

    :try_start_70
    iget-object v0, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    goto :goto_2b

    :catchall_7b
    move-exception v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$7;->d:Lcom/google/android/gms/cast/s;

    invoke-static {v2}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    throw v0
    :try_end_87
    .catchall {:try_start_70 .. :try_end_87} :catchall_46
.end method
