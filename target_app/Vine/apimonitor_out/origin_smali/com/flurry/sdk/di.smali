.class public Lcom/flurry/sdk/di;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/flurry/sdk/di;


# instance fields
.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/flurry/sdk/dg;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/dg;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/Object;

.field private f:Lcom/flurry/sdk/dg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/flurry/sdk/di;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/di;
    .registers 2

    const-class v1, Lcom/flurry/sdk/di;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;

    if-nez v0, :cond_e

    new-instance v0, Lcom/flurry/sdk/di;

    invoke-direct {v0}, Lcom/flurry/sdk/di;-><init>()V

    sput-object v0, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;

    :cond_e
    sget-object v0, Lcom/flurry/sdk/di;->b:Lcom/flurry/sdk/di;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    if-nez v0, :cond_25

    sget-object v0, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session cannot be ended, session not found for context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_29

    :goto_23
    monitor-exit p0

    return-void

    :cond_25
    :try_start_25
    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->c(Landroid/content/Context;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_23

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/flurry/sdk/dl;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/flurry/sdk/es;->a()Lcom/flurry/sdk/es;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/es;->b()V

    invoke-static {}, Lcom/flurry/sdk/dw;->a()Lcom/flurry/sdk/dw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dw;->b()V

    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    if-eqz v0, :cond_44

    sget-object v1, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session already started with context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/flurry/sdk/el;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_60

    :goto_42
    monitor-exit p0

    return-void

    :cond_44
    :try_start_44
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    :goto_54
    iget-object v1, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->b(Landroid/content/Context;)V
    :try_end_5f
    .catchall {:try_start_44 .. :try_end_5f} :catchall_60

    goto :goto_42

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_63
    :try_start_63
    new-instance v0, Lcom/flurry/sdk/dg;

    invoke-direct {v0, p2}, Lcom/flurry/sdk/dg;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/flurry/sdk/dg;->a(Landroid/content/Context;)V
    :try_end_70
    .catchall {:try_start_63 .. :try_end_70} :catchall_60

    goto :goto_54
.end method

.method public a(Lcom/flurry/sdk/dg;)V
    .registers 4

    iget-object v1, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/flurry/sdk/di;->f:Lcom/flurry/sdk/dg;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/di;->a:Ljava/lang/String;

    const-string v2, "Ended session is not in the session map! Maybe it was already destroyed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_2d

    :goto_11
    monitor-exit p0

    return-void

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/flurry/sdk/di;->c()Lcom/flurry/sdk/dg;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V

    :cond_27
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_2d

    goto :goto_11

    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Lcom/flurry/sdk/dg;
    .registers 3

    iget-object v1, p0, Lcom/flurry/sdk/di;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/flurry/sdk/di;->f:Lcom/flurry/sdk/dg;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public declared-synchronized d()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flurry/sdk/dg;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/dg;->c(Landroid/content/Context;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_27

    goto :goto_b

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/flurry/sdk/di;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dg;

    invoke-virtual {v0}, Lcom/flurry/sdk/dg;->c()V

    goto :goto_3e

    :cond_4e
    iget-object v0, p0, Lcom/flurry/sdk/di;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/flurry/sdk/di;->a(Lcom/flurry/sdk/dg;)V
    :try_end_57
    .catchall {:try_start_2a .. :try_end_57} :catchall_27

    monitor-exit p0

    return-void
.end method
