.class public final Lcom/google/b/c/m;
.super Ljava/lang/Object;
.source "Iterators.java"


# static fields
.field static final a:Lcom/google/b/c/bz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/bz",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/b/c/n;

    invoke-direct {v0}, Lcom/google/b/c/n;-><init>()V

    sput-object v0, Lcom/google/b/c/m;->a:Lcom/google/b/c/bz;

    new-instance v0, Lcom/google/b/c/o;

    invoke-direct {v0}, Lcom/google/b/c/o;-><init>()V

    sput-object v0, Lcom/google/b/c/m;->b:Ljava/util/Iterator;

    return-void
.end method

.method public static a()Lcom/google/b/c/by;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/b/c/by",
            "<TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/b/c/m;->a:Lcom/google/b/c/bz;

    return-object v0
.end method

.method public static a(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)Z"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_4

    :cond_14
    return v0
.end method

.method public static a(Ljava/util/Iterator;Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<*>;",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    const/4 v0, 0x1

    goto :goto_4

    :cond_19
    return v0
.end method