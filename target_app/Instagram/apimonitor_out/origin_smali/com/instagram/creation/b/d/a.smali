.class public final Lcom/instagram/creation/b/d/a;
.super Ljava/lang/Object;
.source "PendingMediaStore.java"


# static fields
.field private static b:Lcom/instagram/creation/b/d/a;


# instance fields
.field final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/instagram/creation/b/d/a;
    .registers 1

    sget-object v0, Lcom/instagram/creation/b/d/a;->b:Lcom/instagram/creation/b/d/a;

    if-nez v0, :cond_7

    invoke-static {}, Lcom/instagram/creation/b/d/a;->g()V

    :cond_7
    sget-object v0, Lcom/instagram/creation/b/d/a;->b:Lcom/instagram/creation/b/d/a;

    return-object v0
.end method

.method private static declared-synchronized g()V
    .registers 2

    const-class v1, Lcom/instagram/creation/b/d/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/creation/b/d/a;->b:Lcom/instagram/creation/b/d/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/instagram/creation/b/d/a;

    invoke-direct {v0}, Lcom/instagram/creation/b/d/a;-><init>()V

    sput-object v0, Lcom/instagram/creation/b/d/a;->b:Lcom/instagram/creation/b/d/a;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    return-object v0
.end method

.method public final a(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-ne v3, v4, :cond_15

    sget v3, Lcom/instagram/creation/b/d/b;->a:I

    if-ne p1, v3, :cond_33

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v3

    if-nez v3, :cond_3d

    :cond_33
    sget v3, Lcom/instagram/creation/b/d/b;->b:I

    if-ne p1, v3, :cond_15

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->O()Z

    move-result v3

    if-nez v3, :cond_15

    :cond_3d
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_41
    return-object v1
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/creation/b/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/instagram/creation/b/d/a;->f()V

    return-void
.end method

.method final a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/creation/b/a/b;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    iget-object v2, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_20
    invoke-virtual {p0}, Lcom/instagram/creation/b/d/a;->f()V

    :cond_23
    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v1

    sget-object v3, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-eq v1, v3, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Deleting media"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_36
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/instagram/creation/b/d/a;->f()V

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->j()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    :cond_1f
    return-void
.end method

.method public final c()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->K()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_23
    return-object v1
.end method

.method public final d()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->k()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_34
    return-object v1
.end method

.method public final e()Lcom/instagram/creation/b/a/b;
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->N()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->z()Lcom/instagram/creation/b/a/d;

    move-result-object v3

    sget-object v4, Lcom/instagram/creation/b/a/d;->c:Lcom/instagram/creation/b/a/d;

    if-eq v3, v4, :cond_28

    :goto_25
    move-object v1, v0

    goto :goto_b

    :cond_27
    return-object v1

    :cond_28
    move-object v0, v1

    goto :goto_25
.end method

.method public final f()V
    .registers 3

    const-string v0, "PendingMediaStore.INTENT_ACTION_PENDING_MEDIA_CHANGED"

    invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z

    invoke-static {}, Lcom/instagram/common/o/a;->b()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, p0, Lcom/instagram/creation/b/d/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/b/a/b;

    invoke-virtual {v0}, Lcom/instagram/creation/b/a/b;->toString()Ljava/lang/String;

    goto :goto_1e

    :cond_34
    return-void
.end method
