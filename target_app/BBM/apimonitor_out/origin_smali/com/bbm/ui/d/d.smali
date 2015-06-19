.class public final Lcom/bbm/ui/d/d;
.super Ljava/lang/Object;
.source "ChannelIncomingManager.java"

# interfaces
.implements Lcom/bbm/f/ac;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/ui/d/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lcom/bbm/ui/d/c;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bbm/f/a;)V
    .registers 10

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/b/c/q;

    invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V

    invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/d/d;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/b/c/q;

    invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V

    invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/d/d;->b:Ljava/util/Map;

    new-instance v3, Lcom/google/b/c/q;

    invoke-direct {v3}, Lcom/google/b/c/q;-><init>()V

    sget-object v4, Lcom/google/b/c/bc;->c:Lcom/google/b/c/bc;

    iget-object v0, v3, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;

    if-nez v0, :cond_85

    move v0, v1

    :goto_37
    const-string v5, "Key strength was already set to %s"

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v3, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;

    aput-object v7, v6, v2

    invoke-static {v0, v5, v6}, Lcom/google/b/a/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/bc;

    iput-object v0, v3, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;

    iget-object v0, v3, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;

    sget-object v5, Lcom/google/b/c/bc;->b:Lcom/google/b/c/bc;

    if-eq v0, v5, :cond_51

    move v2, v1

    :cond_51
    const-string v0, "Soft keys are not supported"

    invoke-static {v2, v0}, Lcom/google/b/a/o;->a(ZLjava/lang/Object;)V

    sget-object v0, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;

    if-eq v4, v0, :cond_5c

    iput-boolean v1, v3, Lcom/google/b/c/q;->b:Z

    :cond_5c
    invoke-virtual {v3}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    new-instance v1, Lcom/bbm/ui/d/b;

    invoke-direct {v1}, Lcom/bbm/ui/d/b;-><init>()V

    iget-object v0, v1, Lcom/bbm/ui/d/b;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p0}, Lcom/bbm/ui/d/d;->b(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    goto :goto_75

    :cond_85
    move v0, v2

    goto :goto_37

    :cond_87
    invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/bbm/f/ab;)V
    .registers 4

    iget-object v0, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/d/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/bbm/ui/d/d;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/d/c;

    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/bbm/ui/d/c;->a(Lcom/bbm/f/ab;)V

    :cond_17
    iget-object v0, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;

    const-string v1, "cookie"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/d/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/bbm/ui/d/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/d/c;

    if-eqz v0, :cond_36

    invoke-interface {v0, p1}, Lcom/bbm/ui/d/c;->a(Lcom/bbm/f/ab;)V

    :cond_36
    return-void
.end method

.method public final a(Ljava/lang/Object;Lcom/bbm/ui/d/c;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_13
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/d/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_15
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method

.method public final b(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/d/d;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    :goto_15
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void

    :cond_19
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/bbm/ui/d/d;->c:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15
.end method
