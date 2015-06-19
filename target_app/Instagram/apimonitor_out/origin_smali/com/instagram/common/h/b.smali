.class public final Lcom/instagram/common/h/b;
.super Ljava/lang/Object;
.source "IgEventBus.java"


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/h/e",
            "<+",
            "Lcom/instagram/common/h/a;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/common/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    new-instance v0, Lcom/instagram/common/h/c;

    invoke-direct {v0, p0, p1}, Lcom/instagram/common/h/c;-><init>(Lcom/instagram/common/h/b;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/instagram/common/h/b;->c:Landroid/os/Handler;

    return-void
.end method

.method private a()V
    .registers 5

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    monitor-enter v2

    :try_start_e
    iget-object v0, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/h/a;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_24

    goto :goto_14

    :catchall_24
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_24

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/h/a;

    invoke-direct {p0, v0}, Lcom/instagram/common/h/b;->c(Lcom/instagram/common/h/a;)Z

    goto :goto_31

    :cond_41
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/h/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/common/h/b;->a()V

    return-void
.end method

.method private c(Lcom/instagram/common/h/a;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/h/a;",
            ">(TEventType;)Z"
        }
    .end annotation

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_40

    if-eqz v1, :cond_51

    monitor-enter v1

    :try_start_12
    invoke-static {v1}, Lcom/instagram/common/h/f;->a(Ljava/util/Collection;)Ljava/util/ArrayList;
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_4e

    move-result-object v5

    :try_start_16
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v2

    :cond_1b
    :goto_1b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/instagram/common/h/e;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    instance-of v3, v2, Lcom/instagram/common/h/d;

    if-eqz v3, :cond_3b

    move-object v0, v2

    check-cast v0, Lcom/instagram/common/h/d;

    move-object v3, v0

    invoke-interface {v3, p1}, Lcom/instagram/common/h/d;->a(Lcom/instagram/common/h/a;)Z

    move-result v3

    if-eqz v3, :cond_1b

    :cond_3b
    invoke-interface {v2, p1}, Lcom/instagram/common/h/e;->b(Lcom/instagram/common/h/a;)V
    :try_end_3e
    .catchall {:try_start_16 .. :try_end_3e} :catchall_49

    const/4 v4, 0x1

    goto :goto_1b

    :catchall_40
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_43
    :try_start_43
    invoke-static {v5}, Lcom/instagram/common/h/f;->a(Ljava/util/ArrayList;)V

    monitor-exit v1

    move v1, v4

    :goto_48
    return v1

    :catchall_49
    move-exception v2

    invoke-static {v5}, Lcom/instagram/common/h/f;->a(Ljava/util/ArrayList;)V

    throw v2
    :try_end_4e
    .catchall {:try_start_43 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_51
    move v1, v2

    goto :goto_48
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/h/a;",
            "Event",
            "ListenerType::Lcom/instagram/common/h/e",
            "<TEventType;>;>(",
            "Ljava/lang/Class",
            "<+TEventType;>;TEvent",
            "ListenerType;",
            ")",
            "Lcom/instagram/common/h/b;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_23

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_16
    monitor-enter v1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_20

    :try_start_17
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_17 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object p0

    :catchall_1d
    move-exception v0

    :try_start_1e
    monitor-exit v1

    throw v0
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    move-object v1, v0

    goto :goto_16
.end method

.method public final a(Lcom/instagram/common/h/a;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/h/a;",
            ">(TEventType;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/instagram/common/h/b;->c(Lcom/instagram/common/h/a;)Z

    move-result v0

    return v0
.end method

.method public final declared-synchronized b(Ljava/lang/Class;Lcom/instagram/common/h/e;)Lcom/instagram/common/h/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/h/a;",
            "Event",
            "ListenerType::Lcom/instagram/common/h/e",
            "<TEventType;>;>(",
            "Ljava/lang/Class",
            "<+TEventType;>;TEvent",
            "ListenerType;",
            ")",
            "Lcom/instagram/common/h/b;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_1b

    monitor-enter v0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_20

    :try_start_c
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/instagram/common/h/b;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-object p0

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0

    throw v1
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/instagram/common/h/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<EventType::",
            "Lcom/instagram/common/h/a;",
            ">(TEventType;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/instagram/common/h/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/h/b;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/instagram/common/h/b;->c:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    return-void

    :catchall_19
    move-exception v0

    monitor-exit v1

    throw v0
.end method
