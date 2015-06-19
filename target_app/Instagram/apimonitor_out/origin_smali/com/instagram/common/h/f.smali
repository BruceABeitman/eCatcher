.class final Lcom/instagram/common/h/f;
.super Ljava/lang/Object;
.source "IgEventListenerListPool.java"


# static fields
.field private static final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/common/h/e",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lcom/instagram/common/h/f;->a:Ljava/util/Queue;

    return-void
.end method

.method static declared-synchronized a(Ljava/util/Collection;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/instagram/common/h/e",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/common/h/e",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;>;"
        }
    .end annotation

    const/16 v2, 0x8

    const-class v1, Lcom/instagram/common/h/f;

    monitor-enter v1

    :try_start_5
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v2, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_2f

    :goto_10
    monitor-exit v1

    return-object v0

    :cond_12
    :try_start_12
    sget-object v0, Lcom/instagram/common/h/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "recycled list has entries"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_32
    :try_start_32
    sget-object v0, Lcom/instagram/common/h/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_21

    :cond_3b
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_2f

    goto :goto_10
.end method

.method static declared-synchronized a(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/common/h/e",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;>;)V"
        }
    .end annotation

    const-class v1, Lcom/instagram/common/h/f;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x8

    if-gt v0, v2, :cond_1d

    sget-object v0, Lcom/instagram/common/h/f;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0x20

    if-ge v0, v2, :cond_1d

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/instagram/common/h/f;->a:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit v1

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method
