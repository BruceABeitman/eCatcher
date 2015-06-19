.class Lcom/google/android/gms/internal/cb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/cb;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/dj;

.field final synthetic b:Lcom/google/android/gms/internal/cb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/dj;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/cb$2;->b:Lcom/google/android/gms/internal/cb;

    iput-object p2, p0, Lcom/google/android/gms/internal/cb$2;->a:Lcom/google/android/gms/internal/dj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/cb$2;->b:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->a(Lcom/google/android/gms/internal/cb;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/cb$2;->b:Lcom/google/android/gms/internal/cb;

    invoke-static {v0}, Lcom/google/android/gms/internal/cb;->b(Lcom/google/android/gms/internal/cb;)Lcom/google/android/gms/internal/ca;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/cb$2;->a:Lcom/google/android/gms/internal/dj;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ca;->a(Lcom/google/android/gms/internal/dj;)V

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0
.end method
