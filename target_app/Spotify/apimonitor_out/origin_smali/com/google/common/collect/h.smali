.class public final Lcom/google/common/collect/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/Iterable;Lcom/google/common/base/j;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/j",
            "<-TT;>;)Z"
        }
    .end annotation

    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_15

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_15

    check-cast p0, Ljava/util/List;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/j;

    invoke-static {p0, v0}, Lcom/google/common/collect/h;->a(Ljava/util/List;Lcom/google/common/base/j;)Z

    move-result v0

    :goto_14
    return v0

    :cond_15
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/common/collect/i;->a(Ljava/util/Iterator;Lcom/google/common/base/j;)Z

    move-result v0

    goto :goto_14
.end method

.method private static a(Ljava/util/List;Lcom/google/common/base/j;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/google/common/base/j",
            "<-TT;>;)Z"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_43

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/base/j;->a(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1b

    if-le v2, v0, :cond_19

    :try_start_16
    invoke-interface {p0, v0, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_16 .. :try_end_19} :catch_1e

    :cond_19
    add-int/lit8 v0, v0, 0x1

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catch_1e
    move-exception v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_25
    if-le v1, v2, :cond_37

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lcom/google/common/base/j;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_34
    add-int/lit8 v1, v1, -0x1

    goto :goto_25

    :cond_37
    add-int/lit8 v1, v2, -0x1

    :goto_39
    if-lt v1, v0, :cond_41

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_39

    :cond_41
    move v1, v3

    :cond_42
    :goto_42
    return v1

    :cond_43
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p0, v0, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    if-eq v2, v0, :cond_42

    move v1, v3

    goto :goto_42
.end method

.method public static b(Ljava/lang/Iterable;Lcom/google/common/base/j;)Ljava/lang/Iterable;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable",
            "<TT;>;",
            "Lcom/google/common/base/j",
            "<-TT;>;)",
            "Ljava/lang/Iterable",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/h$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/h$1;-><init>(Ljava/lang/Iterable;Lcom/google/common/base/j;)V

    return-object v0
.end method
