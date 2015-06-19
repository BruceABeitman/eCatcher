.class public final Lcom/google/common/collect/Lists;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/common/collect/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method public static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator",
            "<+TE;>;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    return-object v0
.end method

.method public static a(Ljava/util/List;I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;I)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-lez p1, :cond_13

    const/4 v0, 0x1

    :goto_6
    invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/k;-><init>(Ljava/util/List;I)V

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    new-instance v0, Lcom/google/common/collect/j;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/j;-><init>(Ljava/util/List;I)V

    goto :goto_12
.end method

.method public static a(Ljava/util/List;Lcom/google/common/base/b;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TF;>;",
            "Lcom/google/common/base/b",
            "<-TF;+TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/common/collect/Lists$TransformingRandomAccessList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingRandomAccessList;-><init>(Ljava/util/List;Lcom/google/common/base/b;)V

    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Lcom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Lists$TransformingSequentialList;-><init>(Ljava/util/List;Lcom/google/common/base/b;)V

    goto :goto_9
.end method
