.class public Lcom/flurry/sdk/dp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Map;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Object;Z)Ljava/util/List;
    .registers 5

    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz p2, :cond_1c

    if-nez v0, :cond_1c

    iget v0, p0, Lcom/flurry/sdk/dp;->b:I

    if-lez v0, :cond_1d

    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/flurry/sdk/dp;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_17
    iget-object v1, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-object v0

    :cond_1d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_17
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/util/List;
    .registers 3

    if-nez p1, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_6
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_6
.end method

.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(Lcom/flurry/sdk/dp;)V
    .registers 6

    if-nez p1, :cond_3

    :cond_2
    return-void

    :cond_3
    iget-object v0, p1, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()Ljava/util/Collection;
    .registers 8

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    :cond_3c
    return-object v2
.end method

.method public b(Ljava/lang/Object;)Z
    .registers 4

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_f
    move v1, v0

    goto :goto_3

    :cond_11
    move v0, v1

    goto :goto_f
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/flurry/sdk/dp;->a(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method

.method public c()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/flurry/sdk/dp;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
