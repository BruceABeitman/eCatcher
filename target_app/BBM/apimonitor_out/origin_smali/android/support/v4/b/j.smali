.class final Landroid/support/v4/b/j;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/b/h;


# direct methods
.method constructor <init>(Landroid/support/v4/b/h;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;)Z"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v3, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/b/h;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_a

    :cond_24
    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I

    move-result v0

    if-eq v1, v0, :cond_2e

    const/4 v0, 0x1

    :goto_2d
    return v0

    :cond_2e
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->c()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    instance-of v1, p1, Ljava/util/Map$Entry;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v1, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/b/h;->a(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_5

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v4/b/j;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x1

    goto :goto_15
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Landroid/support/v4/b/h;->a(Ljava/util/Set;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    move v4, v1

    :goto_b
    if-ltz v3, :cond_33

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;

    move-result-object v5

    if-nez v0, :cond_28

    move v2, v1

    :goto_1d
    if-nez v5, :cond_2e

    move v0, v1

    :goto_20
    xor-int/2addr v0, v2

    add-int v2, v4, v0

    add-int/lit8 v0, v3, -0x1

    move v3, v0

    move v4, v2

    goto :goto_b

    :cond_28
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    move v2, v0

    goto :goto_1d

    :cond_2e
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_20

    :cond_33
    return v4
.end method

.method public final isEmpty()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
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

    new-instance v0, Landroid/support/v4/b/l;

    iget-object v1, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-direct {v0, v1}, Landroid/support/v4/b/l;-><init>(Landroid/support/v4/b/h;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Landroid/support/v4/b/j;->a:Landroid/support/v4/b/h;

    invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
