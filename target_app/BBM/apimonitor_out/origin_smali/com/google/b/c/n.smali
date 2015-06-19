.class final Lcom/google/b/c/n;
.super Lcom/google/b/c/bz;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/b/c/bz",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/b/c/bz;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final hasPrevious()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final nextIndex()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final previous()Ljava/lang/Object;
    .registers 2

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final previousIndex()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method
