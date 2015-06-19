.class public abstract Lcom/google/common/collect/ImmutableList;
.super Lcom/google/common/collect/ImmutableCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/common/collect/ImmutableCollection;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/common/collect/ImmutableCollection;

    if-eqz v0, :cond_15

    check-cast p0, Lcom/google/common/collect/ImmutableCollection;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableCollection;->e()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->a()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :cond_14
    :goto_14
    return-object v0

    :cond_15
    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_14
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    array-length v0, p0

    packed-switch v0, :pswitch_data_1c

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_e
    return-object v0

    :pswitch_f
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;

    goto :goto_e

    :pswitch_12
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    goto :goto_e

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method

.method private static b(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<+TE;>;)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method static b([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    array-length v0, p0

    packed-switch v0, :pswitch_data_16

    invoke-static {p0}, Lcom/google/common/collect/ImmutableList;->c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_8
    return-object v0

    :pswitch_9
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;

    goto :goto_8

    :pswitch_c
    new-instance v0, Lcom/google/common/collect/SingletonImmutableList;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/SingletonImmutableList;-><init>(Ljava/lang/Object;)V

    goto :goto_8

    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method private static varargs c([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_c

    aget-object v1, p0, v0

    invoke-static {v1, v0}, Lcom/google/common/collect/al;->a(Ljava/lang/Object;I)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_c
    new-instance v0, Lcom/google/common/collect/RegularImmutableList;

    invoke-direct {v0, p0}, Lcom/google/common/collect/RegularImmutableList;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static g()Lcom/google/common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;

    return-object v0
.end method

.method public static h()Lcom/google/common/collect/g;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/g",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/g;

    invoke-direct {v0}, Lcom/google/common/collect/g;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(II)Lcom/google/common/collect/ImmutableList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/i;->a(III)V

    sub-int v0, p2, p1

    packed-switch v0, :pswitch_data_1e

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->b(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    :goto_10
    return-object v0

    :pswitch_11
    sget-object v0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;

    goto :goto_10

    :pswitch_14
    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_10

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_11
        :pswitch_14
    .end packed-switch
.end method

.method public a(I)Lcom/google/common/collect/ar;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/ar",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableList$1;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/common/collect/ImmutableList$1;-><init>(Lcom/google/common/collect/ImmutableList;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method b(II)Lcom/google/common/collect/ImmutableList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/ImmutableList$SubList;

    sub-int v1, p2, p1

    invoke-direct {v0, p0, p1, v1}, Lcom/google/common/collect/ImmutableList$SubList;-><init>(Lcom/google/common/collect/ImmutableList;II)V

    return-object v0
.end method

.method public b()Lcom/google/common/collect/aq;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/aq",
            "<TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ar;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/common/collect/ar;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ar",
            "<TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/ar;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final e()Lcom/google/common/collect/ImmutableList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_8

    :cond_7
    :goto_7
    return v0

    :cond_8
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_26

    check-cast p1, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_26

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/common/collect/i;->a(Ljava/util/Iterator;Ljava/util/Iterator;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_26
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_1a

    const/4 v0, 0x0

    :goto_14
    add-int/2addr v0, v3

    xor-int/lit8 v0, v0, -0x1

    xor-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_14

    :cond_1f
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4

    if-eqz p1, :cond_1b

    invoke-interface {p0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, -0x1

    goto :goto_1a
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/aq;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4

    if-eqz p1, :cond_1f

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/common/base/e;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    :goto_1e
    return v0

    :cond_1f
    const/4 v0, -0x1

    goto :goto_1e
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ar;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/ar;

    move-result-object v0

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic subList(II)Ljava/util/List;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/google/common/collect/ImmutableList$SerializedForm;

    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableList$SerializedForm;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
