.class Lcom/google/android/gms/internal/fm$1$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/fm$1;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/google/android/gms/internal/fm$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/fm$1;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/fm$1$3;->c:Lcom/google/android/gms/internal/fm$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/fm$1$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/fm$1$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$3;->c:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->d(Lcom/google/android/gms/internal/fm;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/fm$1$3;->c:Lcom/google/android/gms/internal/fm$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    invoke-static {v0}, Lcom/google/android/gms/internal/fm;->d(Lcom/google/android/gms/internal/fm;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$1$3;->a:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/cast/h;

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2c

    if-eqz v0, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/fm$1$3;->c:Lcom/google/android/gms/internal/fm$1;

    iget-object v1, v1, Lcom/google/android/gms/internal/fm$1;->a:Lcom/google/android/gms/internal/fm;

    invoke-static {v1}, Lcom/google/android/gms/internal/fm;->e(Lcom/google/android/gms/internal/fm;)Lcom/google/android/gms/cast/CastDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/fm$1$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/fm$1$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/cast/h;->a(Lcom/google/android/gms/cast/CastDevice;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void

    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    invoke-static {}, Lcom/google/android/gms/internal/fm;->m()Lcom/google/android/gms/internal/fu;

    move-result-object v0

    const-string v1, "Discarded message for unknown namespace \'%s\'"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/gms/internal/fm$1$3;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/fu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2b
.end method
