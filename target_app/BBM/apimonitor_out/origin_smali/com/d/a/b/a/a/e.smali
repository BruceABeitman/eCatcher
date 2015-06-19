.class abstract Lcom/d/a/b/a/a/e;
.super Ljava/lang/Object;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field a:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/d/a/b/a/a/d;

.field private d:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/d/a/b/a/a/d;)V
    .registers 4

    iput-object p1, p0, Lcom/d/a/b/a/a/e;->c:Lcom/d/a/b/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_a
    invoke-virtual {p0}, Lcom/d/a/b/a/a/e;->a()Lcom/d/a/b/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_1b

    const/4 v0, 0x0

    :goto_15
    iput-object v0, p0, Lcom/d/a/b/a/a/e;->b:Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_a .. :try_end_17} :catchall_20

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    iget-object v0, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_20

    goto :goto_15

    :catchall_20
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/d/a/b/a/a/e;->c:Lcom/d/a/b/a/a/d;

    iget-object v3, v1, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_8
    iget-object v1, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    move-object v2, v1

    :goto_b
    invoke-virtual {p0, v2}, Lcom/d/a/b/a/a/e;->a(Lcom/d/a/b/a/a/g;)Lcom/d/a/b/a/a/g;

    move-result-object v1

    if-nez v1, :cond_1e

    move-object v1, v0

    :cond_12
    :goto_12
    iput-object v1, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    iget-object v1, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    if-nez v1, :cond_2b

    :goto_18
    iput-object v0, p0, Lcom/d/a/b/a/a/e;->b:Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_30

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_1e
    :try_start_1e
    iget-object v4, v1, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    if-nez v4, :cond_12

    if-ne v1, v2, :cond_29

    invoke-virtual {p0}, Lcom/d/a/b/a/a/e;->a()Lcom/d/a/b/a/a/g;

    move-result-object v1

    goto :goto_12

    :cond_29
    move-object v2, v1

    goto :goto_b

    :cond_2b
    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    iget-object v0, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_30

    goto :goto_18

    :catchall_30
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method abstract a()Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end method

.method abstract a(Lcom/d/a/b/a/a/g;)Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;)",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/d/a/b/a/a/e;->a:Lcom/d/a/b/a/a/g;

    iput-object v0, p0, Lcom/d/a/b/a/a/e;->d:Lcom/d/a/b/a/a/g;

    iget-object v0, p0, Lcom/d/a/b/a/a/e;->b:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/d/a/b/a/a/e;->b()V

    return-object v0
.end method

.method public remove()V
    .registers 4

    iget-object v0, p0, Lcom/d/a/b/a/a/e;->d:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/d/a/b/a/a/e;->d:Lcom/d/a/b/a/a/g;

    iget-object v1, p0, Lcom/d/a/b/a/a/e;->c:Lcom/d/a/b/a/a/d;

    iget-object v1, v1, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_14
    iget-object v2, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/d/a/b/a/a/e;->c:Lcom/d/a/b/a/a/d;

    invoke-virtual {v2, v0}, Lcom/d/a/b/a/a/d;->a(Lcom/d/a/b/a/a/g;)V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    :cond_1d
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_21
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
