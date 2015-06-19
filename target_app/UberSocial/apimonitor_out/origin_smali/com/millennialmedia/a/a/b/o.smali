.class abstract Lcom/millennialmedia/a/a/b/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field b:Lcom/millennialmedia/a/a/b/p;

.field c:Lcom/millennialmedia/a/a/b/p;

.field d:I

.field final synthetic e:Lcom/millennialmedia/a/a/b/j;


# direct methods
.method private constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
    .registers 3

    iput-object p1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    iget-object v0, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->e:I

    iput v0, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/millennialmedia/a/a/b/j;Lcom/millennialmedia/a/a/b/j$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/millennialmedia/a/a/b/o;-><init>(Lcom/millennialmedia/a/a/b/j;)V

    return-void
.end method


# virtual methods
.method final b()Lcom/millennialmedia/a/a/b/p;
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, v1, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    if-ne v0, v1, :cond_e

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_e
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v1, v1, Lcom/millennialmedia/a/a/b/j;->e:I

    iget v2, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    if-eq v1, v2, :cond_1c

    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1c
    iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;

    iput-object v1, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    return-object v0
.end method

.method public final hasNext()Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->b:Lcom/millennialmedia/a/a/b/p;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, v1, Lcom/millennialmedia/a/a/b/j;->c:Lcom/millennialmedia/a/a/b/p;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/o;->c:Lcom/millennialmedia/a/a/b/p;

    iget-object v0, p0, Lcom/millennialmedia/a/a/b/o;->e:Lcom/millennialmedia/a/a/b/j;

    iget v0, v0, Lcom/millennialmedia/a/a/b/j;->e:I

    iput v0, p0, Lcom/millennialmedia/a/a/b/o;->d:I

    return-void
.end method
