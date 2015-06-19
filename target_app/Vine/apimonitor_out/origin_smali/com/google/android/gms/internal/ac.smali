.class public final Lcom/google/android/gms/internal/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ae;


# instance fields
.field private final lq:Ljava/lang/Object;

.field private lr:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/google/android/gms/internal/eg;",
            "Lcom/google/android/gms/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field private ls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/internal/ad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->lr:Ljava/util/WeakHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;)Lcom/google/android/gms/internal/ad;
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ac;->c(Lcom/google/android/gms/internal/eg;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lr:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    monitor-exit v1

    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/google/android/gms/internal/ad;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ad;-><init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/eg;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/ae;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->lr:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    goto :goto_12

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public a(Lcom/google/android/gms/internal/ad;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ad;->au()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public c(Lcom/google/android/gms/internal/eg;)Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lr:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->au()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_14
    monitor-exit v1

    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_14

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public d(Lcom/google/android/gms/internal/eg;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->lr:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->as()V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public pause()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->pause()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method

.method public resume()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->resume()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method

.method public stop()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/ac;->lq:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ac;->ls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ad;->stop()V

    goto :goto_9

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    :cond_1c
    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_19

    return-void
.end method
