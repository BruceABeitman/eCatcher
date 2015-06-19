.class Lcom/google/android/gms/cast/s$6;
.super Lcom/google/android/gms/cast/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/s;->a(Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/e;

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:Lorg/json/JSONObject;

.field final synthetic e:Lcom/google/android/gms/cast/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;JILorg/json/JSONObject;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    iput-object p2, p0, Lcom/google/android/gms/cast/s$6;->a:Lcom/google/android/gms/common/api/e;

    iput-wide p3, p0, Lcom/google/android/gms/cast/s$6;->b:J

    iput p5, p0, Lcom/google/android/gms/cast/s$6;->c:I

    iput-object p6, p0, Lcom/google/android/gms/cast/s$6;->d:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/cast/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/s$6;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/s$6;->a:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_48

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/s$6;->g:Lcom/google/android/gms/internal/fz;

    iget-wide v2, p0, Lcom/google/android/gms/cast/s$6;->b:J

    iget v4, p0, Lcom/google/android/gms/cast/s$6;->c:I

    iget-object v5, p0, Lcom/google/android/gms/cast/s$6;->d:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fz;JILorg/json/JSONObject;)J
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_4b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_23} :catch_2f

    :try_start_23
    iget-object v0, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$6;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$6;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_3d
    .catchall {:try_start_30 .. :try_end_3d} :catchall_4b

    :try_start_3d
    iget-object v0, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    goto :goto_2d

    :catchall_48
    move-exception v0

    monitor-exit v6
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_48

    throw v0

    :catchall_4b
    move-exception v0

    :try_start_4c
    iget-object v1, p0, Lcom/google/android/gms/cast/s$6;->e:Lcom/google/android/gms/cast/s;

    invoke-static {v1}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    throw v0
    :try_end_57
    .catchall {:try_start_4c .. :try_end_57} :catchall_48
.end method
