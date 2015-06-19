.class Lcom/lenovo/anyshare/sdk/internal/ae;
.super Ljava/lang/Object;
.source "DownloadTaskQueue.java"

# interfaces
.implements Lcom/lenovo/anyshare/sdk/internal/co;


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/lang/Object;

.field protected final e:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field protected final f:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/ad;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/lenovo/anyshare/sdk/internal/cq;
    .registers 7

    const/4 v2, 0x0

    if-nez p1, :cond_5

    move-object v1, v2

    :goto_4
    return-object v1

    :cond_5
    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_8
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    monitor-exit v3

    goto :goto_4

    :catchall_26
    move-exception v2

    monitor-exit v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_26

    throw v2

    :cond_29
    :try_start_29
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    monitor-exit v3

    goto :goto_4

    :cond_47
    monitor-exit v3
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_26

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_4b
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_51

    monitor-exit v3

    goto :goto_4

    :catchall_69
    move-exception v2

    monitor-exit v3
    :try_end_6b
    .catchall {:try_start_4b .. :try_end_6b} :catchall_69

    throw v2

    :cond_6c
    :try_start_6c
    iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_72
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    monitor-exit v3

    goto/16 :goto_4

    :cond_8b
    monitor-exit v3
    :try_end_8c
    .catchall {:try_start_6c .. :try_end_8c} :catchall_69

    move-object v1, v2

    goto/16 :goto_4
.end method

.method public a()V
    .registers 5

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    monitor-enter v3

    :try_start_3
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_2a

    iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_11
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->k()V

    goto :goto_17

    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    throw v2

    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    throw v2

    :cond_2d
    :try_start_2d
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cq;->k()V

    goto :goto_38

    :cond_48
    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    monitor-exit v3
    :try_end_4e
    .catchall {:try_start_2d .. :try_end_4e} :catchall_27

    return-void
.end method

.method public a(Lcom/lenovo/anyshare/sdk/internal/cq;)V
    .registers 5

    instance-of v1, p1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v0, p1

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/ad;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_16
    monitor-exit v2

    return-void

    :cond_18
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public b()Ljava/util/Collection;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/lenovo/anyshare/sdk/internal/cq;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v9, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_9
    iget-object v10, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->d:Ljava/lang/Object;

    monitor-enter v10
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_96

    :try_start_c
    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v7

    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v2

    rsub-int/lit8 v5, v7, 0x3

    rsub-int/lit8 v0, v2, 0x1

    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v11

    if-eqz v11, :cond_28

    add-int/lit8 v0, v0, 0x1

    :cond_28
    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_45

    iget-object v11, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_45

    const-string/jumbo v11, "Task.Queue.Download"

    const-string/jumbo v12, "pick tasks return empty: no waiting tasks"

    invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_99

    :try_start_42
    monitor-exit v9
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_96

    move-object v4, v8

    :goto_44
    return-object v4

    :cond_45
    if-gtz v5, :cond_a1

    if-gtz v0, :cond_a1

    :try_start_49
    const-string/jumbo v11, "Task.Queue.Download"

    const-string/jumbo v12, "pick tasks return empty: has full running tasks"

    invoke-static {v11, v12}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v10
    :try_end_53
    .catchall {:try_start_49 .. :try_end_53} :catchall_99

    :try_start_53
    monitor-exit v9
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_96

    move-object v4, v8

    goto :goto_44

    :goto_56
    :try_start_56
    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_9e

    add-int/lit8 v5, v6, -0x1

    if-lez v6, :cond_9c

    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v6, v5

    goto :goto_56

    :goto_74
    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_92

    add-int/lit8 v0, v1, -0x1

    if-lez v1, :cond_93

    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto :goto_74

    :cond_92
    move v0, v1

    :cond_93
    monitor-exit v10
    :try_end_94
    .catchall {:try_start_56 .. :try_end_94} :catchall_99

    :try_start_94
    monitor-exit v9

    goto :goto_44

    :catchall_96
    move-exception v8

    monitor-exit v9
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_96

    throw v8

    :catchall_99
    move-exception v8

    :try_start_9a
    monitor-exit v10
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    :try_start_9b
    throw v8
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_96

    :cond_9c
    move v1, v0

    goto :goto_74

    :cond_9e
    move v1, v0

    move v5, v6

    goto :goto_74

    :cond_a1
    move v6, v5

    goto :goto_56
.end method

.method public b(Lcom/lenovo/anyshare/sdk/internal/cq;)V
    .registers 5

    instance-of v1, p1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v0, p1

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/ad;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->b:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_16
    monitor-exit v2

    return-void

    :cond_18
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->e:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public c(Lcom/lenovo/anyshare/sdk/internal/cq;)V
    .registers 5

    instance-of v1, p1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-static {v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v0, p1

    check-cast v0, Lcom/lenovo/anyshare/sdk/internal/ad;

    iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_b
    invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->c:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :goto_16
    monitor-exit v2

    return-void

    :cond_18
    iget-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->f:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_16

    :catchall_1e
    move-exception v1

    monitor-exit v2
    :try_end_20
    .catchall {:try_start_b .. :try_end_20} :catchall_1e

    throw v1
.end method

.method public d(Lcom/lenovo/anyshare/sdk/internal/cq;)Z
    .registers 12

    const/4 v5, 0x1

    const/4 v4, 0x0

    instance-of v6, p1, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/ah;->a(Z)V

    move-object v2, p1

    check-cast v2, Lcom/lenovo/anyshare/sdk/internal/ad;

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ad;->c()Z

    move-result v6

    if-eqz v6, :cond_11

    :cond_10
    :goto_10
    return v4

    :cond_11
    iget-boolean v6, v2, Lcom/lenovo/anyshare/sdk/internal/ad;->b:Z

    if-nez v6, :cond_10

    const/4 v3, 0x0

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ad;->g()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/lenovo/anyshare/sdk/internal/ad;->h()J

    move-result-wide v8

    sub-long v0, v6, v8

    const-wide/32 v6, 0x20000

    cmp-long v6, v0, v6

    if-gtz v6, :cond_28

    const/4 v3, 0x1

    :cond_28
    if-eqz v3, :cond_10

    iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/ae;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_10

    iput-boolean v5, v2, Lcom/lenovo/anyshare/sdk/internal/ad;->b:Z

    move v4, v5

    goto :goto_10
.end method
