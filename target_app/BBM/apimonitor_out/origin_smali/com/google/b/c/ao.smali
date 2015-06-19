.class final Lcom/google/b/c/ao;
.super Ljava/util/AbstractSet;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/b/c/aa;


# direct methods
.method constructor <init>(Lcom/google/b/c/aa;)V
    .registers 2

    iput-object p1, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-virtual {v2, v1}, Lcom/google/b/c/aa;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    iget-object v2, v2, Lcom/google/b/c/aa;->g:Lcom/google/b/a/c;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/b/c/an;

    iget-object v1, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-direct {v0, v1}, Lcom/google/b/c/an;-><init>(Lcom/google/b/c/aa;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/google/b/c/aa;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/ao;->a:Lcom/google/b/c/aa;

    invoke-virtual {v0}, Lcom/google/b/c/aa;->size()I

    move-result v0

    return v0
.end method
