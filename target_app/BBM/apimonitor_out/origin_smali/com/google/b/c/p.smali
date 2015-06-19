.class public final Lcom/google/b/c/p;
.super Ljava/lang/Object;
.source "Lists.java"


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

    invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/google/b/c/d;->a(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_10
    return-object v0

    :cond_11
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/b/c/p;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_10
.end method

.method private static a(Ljava/util/Iterator;)Ljava/util/ArrayList;
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

    invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public static varargs a([Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/ArrayList",
            "<TE;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v1, p0

    if-ltz v1, :cond_1f

    const/4 v0, 0x1

    :goto_7
    invoke-static {v0}, Lcom/google/b/a/o;->a(Z)V

    const-wide/16 v2, 0x5

    int-to-long v4, v1

    add-long/2addr v2, v4

    div-int/lit8 v0, v1, 0xa

    int-to-long v0, v0

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/google/b/e/a;->a(J)I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v1, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v1

    :cond_1f
    const/4 v0, 0x0

    goto :goto_7
.end method
