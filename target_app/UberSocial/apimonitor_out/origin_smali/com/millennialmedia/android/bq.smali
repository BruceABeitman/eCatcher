.class Lcom/millennialmedia/android/bq;
.super Lcom/millennialmedia/android/cv;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/bp;)V
    .registers 3

    invoke-direct {p0}, Lcom/millennialmedia/android/cv;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/bq;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/millennialmedia/android/bq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/bp;->a(Z)V

    iget-object v1, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v1, v1, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    monitor-enter v1

    :try_start_1d
    iget-object v2, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v2, v2, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v2}, Lcom/millennialmedia/android/cq;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->t()V

    :goto_2e
    monitor-exit v1

    :cond_2f
    return-void

    :cond_30
    iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;

    iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->s()V

    goto :goto_2e

    :catchall_38
    move-exception v0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_38

    throw v0
.end method

.method b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bq;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/bp;

    if-eqz v0, :cond_e

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/bp;->a(Z)V

    :cond_e
    return-void
.end method
