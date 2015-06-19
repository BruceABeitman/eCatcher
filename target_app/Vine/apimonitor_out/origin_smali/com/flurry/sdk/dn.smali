.class public Lcom/flurry/sdk/dn;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/dn$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/dn$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dn;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p2, :cond_a

    if-eqz p1, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/flurry/sdk/dn$a;

    invoke-interface {v0, p1, p2}, Lcom/flurry/sdk/dn$a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_14

    :cond_24
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/dn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_23

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    if-eqz p2, :cond_7

    :try_start_b
    iget-object v0, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :cond_1a
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_b .. :try_end_22} :catchall_23

    goto :goto_7

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_20

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    :goto_7
    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/flurry/sdk/dn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_23

    iget-object v0, p0, Lcom/flurry/sdk/dn;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1c
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/dn;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_9 .. :try_end_1f} :catchall_20

    goto :goto_7

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/flurry/sdk/dn;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_20

    goto :goto_1c
.end method

.method public declared-synchronized b(Ljava/lang/String;Lcom/flurry/sdk/dn$a;)Z
    .registers 5

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_20

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    if-nez p2, :cond_f

    move v0, v1

    goto :goto_9

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/flurry/sdk/dn;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1b

    move v0, v1

    goto :goto_9

    :cond_1b
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_20

    move-result v0

    goto :goto_9

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
