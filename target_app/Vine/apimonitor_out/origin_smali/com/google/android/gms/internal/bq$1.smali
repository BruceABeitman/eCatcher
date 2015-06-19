.class Lcom/google/android/gms/internal/bq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/bq;->b(JJ)Lcom/google/android/gms/internal/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nH:Lcom/google/android/gms/internal/bp;

.field final synthetic nI:Lcom/google/android/gms/internal/bq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    iput-object p2, p0, Lcom/google/android/gms/internal/bq$1;->nH:Lcom/google/android/gms/internal/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->a(Lcom/google/android/gms/internal/bq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->b(Lcom/google/android/gms/internal/bq;)I

    move-result v0

    const/4 v2, -0x2

    if-eq v0, v2, :cond_12

    monitor-exit v1

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    invoke-static {v2}, Lcom/google/android/gms/internal/bq;->c(Lcom/google/android/gms/internal/bq;)Lcom/google/android/gms/internal/bv;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bq;->a(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bv;)Lcom/google/android/gms/internal/bv;

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    invoke-static {v0}, Lcom/google/android/gms/internal/bq;->d(Lcom/google/android/gms/internal/bq;)Lcom/google/android/gms/internal/bv;

    move-result-object v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bq;->g(I)V

    monitor-exit v1

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_2d

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nH:Lcom/google/android/gms/internal/bp;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/bp;->a(Lcom/google/android/gms/internal/br$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bq$1;->nI:Lcom/google/android/gms/internal/bq;

    iget-object v2, p0, Lcom/google/android/gms/internal/bq$1;->nH:Lcom/google/android/gms/internal/bp;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/bq;->a(Lcom/google/android/gms/internal/bq;Lcom/google/android/gms/internal/bp;)V

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_30 .. :try_end_3f} :catchall_2d

    goto :goto_11
.end method
