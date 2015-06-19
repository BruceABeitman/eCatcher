.class Lcom/google/android/gms/cast/s$9;
.super Lcom/google/android/gms/cast/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/common/api/e;)Lcom/google/android/gms/common/api/j;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/e;

.field final synthetic b:Lcom/google/android/gms/cast/s;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/s;Lcom/google/android/gms/common/api/e;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    iput-object p2, p0, Lcom/google/android/gms/cast/s$9;->a:Lcom/google/android/gms/common/api/e;

    invoke-direct {p0}, Lcom/google/android/gms/cast/y;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/b;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/fm;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/s$9;->a(Lcom/google/android/gms/internal/fm;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fm;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->c(Lcom/google/android/gms/cast/s;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$9;->a:Lcom/google/android/gms/common/api/e;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_42

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->e(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/internal/fv;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/cast/s$9;->g:Lcom/google/android/gms/internal/fz;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/fv;->a(Lcom/google/android/gms/internal/fz;)J
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_45
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_29

    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$9;->a(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/cast/t;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/cast/s$9;->a(Lcom/google/android/gms/common/api/m;)V
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_45

    :try_start_37
    iget-object v0, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v0}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    goto :goto_27

    :catchall_42
    move-exception v0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_37 .. :try_end_44} :catchall_42

    throw v0

    :catchall_45
    move-exception v0

    :try_start_46
    iget-object v2, p0, Lcom/google/android/gms/cast/s$9;->b:Lcom/google/android/gms/cast/s;

    invoke-static {v2}, Lcom/google/android/gms/cast/s;->d(Lcom/google/android/gms/cast/s;)Lcom/google/android/gms/cast/w;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/cast/w;->a(Lcom/google/android/gms/common/api/e;)V

    throw v0
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_42
.end method
