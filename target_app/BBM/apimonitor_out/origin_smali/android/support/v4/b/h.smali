.class abstract Landroid/support/v4/b/h;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field b:Landroid/support/v4/b/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<TK;TV;>.android/support/v4/b/j;"
        }
    .end annotation
.end field

.field c:Landroid/support/v4/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<TK;TV;>.android/support/v4/b/k;"
        }
    .end annotation
.end field

.field d:Landroid/support/v4/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/b/h",
            "<TK;TV;>.android/support/v4/b/m;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/Set;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_23

    check-cast p1, Ljava/util/Set;

    :try_start_b
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v2, v3, :cond_1b

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_18} :catch_1d
    .catch Ljava/lang/ClassCastException; {:try_start_b .. :try_end_18} :catch_20

    move-result v2

    if-nez v2, :cond_4

    :cond_1b
    move v0, v1

    goto :goto_4

    :catch_1d
    move-exception v0

    move v0, v1

    goto :goto_4

    :catch_20
    move-exception v0

    move v0, v1

    goto :goto_4

    :cond_23
    move v0, v1

    goto :goto_4
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Ljava/lang/Object;)I
.end method

.method protected abstract a(II)Ljava/lang/Object;
.end method

.method protected abstract a(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method protected abstract a(I)V
.end method

.method protected abstract a(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public final a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/support/v4/b/h;->a()I

    move-result v2

    array-length v0, p1

    if-ge v0, v2, :cond_2a

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    :goto_17
    const/4 v1, 0x0

    :goto_18
    if-ge v1, v2, :cond_23

    invoke-virtual {p0, v1, p2}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    :cond_23
    array-length v1, v0

    if-le v1, v2, :cond_29

    const/4 v1, 0x0

    aput-object v1, v0, v2

    :cond_29
    return-object v0

    :cond_2a
    move-object v0, p1

    goto :goto_17
.end method

.method protected abstract b(Ljava/lang/Object;)I
.end method

.method protected abstract b()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public final b(I)[Ljava/lang/Object;
    .registers 6

    invoke-virtual {p0}, Landroid/support/v4/b/h;->a()I

    move-result v1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v1, :cond_12

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    return-object v2
.end method

.method protected abstract c()V
.end method
