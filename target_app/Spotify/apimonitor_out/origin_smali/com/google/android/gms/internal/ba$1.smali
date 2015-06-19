.class final Lcom/google/android/gms/internal/ba$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/ba;->a(J)Lcom/google/android/gms/internal/bb;
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/az;

.field final synthetic b:Lcom/google/android/gms/internal/ba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/az;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    iput-object p2, p0, Lcom/google/android/gms/internal/ba$1;->a:Lcom/google/android/gms/internal/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/ba;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->b(Lcom/google/android/gms/internal/ba;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    iget-object v2, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    invoke-static {v2}, Lcom/google/android/gms/internal/ba;->c(Lcom/google/android/gms/internal/ba;)Lcom/google/android/gms/internal/bi;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/bi;)Lcom/google/android/gms/internal/bi;

    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    invoke-static {v0}, Lcom/google/android/gms/internal/ba;->d(Lcom/google/android/gms/internal/ba;)Lcom/google/android/gms/internal/bi;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ba;->a(I)V

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_7 .. :try_end_2c} :catchall_2d

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->a:Lcom/google/android/gms/internal/az;

    iget-object v2, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/az;->a(Lcom/google/android/gms/internal/bc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ba$1;->b:Lcom/google/android/gms/internal/ba;

    iget-object v2, p0, Lcom/google/android/gms/internal/ba$1;->a:Lcom/google/android/gms/internal/az;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ba;->a(Lcom/google/android/gms/internal/ba;Lcom/google/android/gms/internal/az;)V

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_2d

    goto :goto_11
.end method
