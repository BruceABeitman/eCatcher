.class final Lcom/google/common/collect/q;
.super Ljava/util/AbstractQueue;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<",
        "Lcom/google/common/collect/u",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Lcom/google/common/collect/q$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q$1;-><init>(Lcom/google/common/collect/q;)V

    iput-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    return-void
.end method

.method private a()Lcom/google/common/collect/u;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :cond_b
    return-object v0
.end method


# virtual methods
.method public final clear()V
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    :goto_6
    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-eq v0, v1, :cond_13

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/u;)V

    move-object v0, v1

    goto :goto_6

    :cond_13
    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0, v1}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/u;)V

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0, v1}, Lcom/google/common/collect/u;->b(Lcom/google/common/collect/u;)V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/google/common/collect/u;

    invoke-interface {p1}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->a:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isEmpty()Z
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/q$2;

    invoke-direct {p0}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/q$2;-><init>(Lcom/google/common/collect/q;Lcom/google/common/collect/u;)V

    return-object v0
.end method

.method public final synthetic offer(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/google/common/collect/u;

    invoke-interface {p1}, Lcom/google/common/collect/u;->g()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->g()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-static {p1, v0}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final synthetic peek()Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/google/common/collect/q;->a()Lcom/google/common/collect/u;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic poll()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p0, v0}, Lcom/google/common/collect/q;->remove(Ljava/lang/Object;)Z

    goto :goto_b
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/google/common/collect/u;

    invoke-interface {p1}, Lcom/google/common/collect/u;->g()Lcom/google/common/collect/u;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)V

    invoke-static {p1}, Lcom/google/common/collect/MapMakerInternalMap;->b(Lcom/google/common/collect/u;)V

    sget-object v0, Lcom/google/common/collect/MapMakerInternalMap$NullEntry;->a:Lcom/google/common/collect/MapMakerInternalMap$NullEntry;

    if-eq v1, v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final size()I
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    :goto_7
    iget-object v2, p0, Lcom/google/common/collect/q;->a:Lcom/google/common/collect/u;

    if-eq v0, v2, :cond_12

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Lcom/google/common/collect/u;->f()Lcom/google/common/collect/u;

    move-result-object v0

    goto :goto_7

    :cond_12
    return v1
.end method
