.class final Lcom/mapquest/android/maps/bu;
.super Ljava/lang/Object;
.source "ThreadBasedTileDownloader.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# instance fields
.field volatile a:Z

.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapquest/android/maps/bu;->a:Z

    iput-object p1, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    return-void
.end method

.method private a()V
    .registers 3

    iget-boolean v0, p0, Lcom/mapquest/android/maps/bu;->a:Z

    if-eqz v0, :cond_c

    new-instance v0, Lcom/mapquest/android/maps/bv;

    const-string v1, "Queue instance is blocked and cannot be used further"

    invoke-direct {v0, v1}, Lcom/mapquest/android/maps/bv;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->element()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isEmpty()Z
    .registers 2

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
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

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final size()I
    .registers 2

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .registers 2

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    invoke-direct {p0}, Lcom/mapquest/android/maps/bu;->a()V

    iget-object v0, p0, Lcom/mapquest/android/maps/bu;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
