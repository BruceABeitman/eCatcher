.class public abstract Lcom/google/b/c/h;
.super Lcom/google/b/c/f;
.source "ForwardingListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/b/c/f",
        "<TE;>;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/b/c/f;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public add(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic b()Ljava/util/Iterator;
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public hasPrevious()Z
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public nextIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public previousIndex()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/c/h;->a()Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
