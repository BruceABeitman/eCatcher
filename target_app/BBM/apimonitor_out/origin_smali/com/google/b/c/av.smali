.class abstract Lcom/google/b/c/av;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/b/c/ba;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/ba",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/b/c/az",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/b/c/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/az",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/b/c/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/aa",
            "<TK;TV;>.com/google/b/c/bt;"
        }
    .end annotation
.end field

.field h:Lcom/google/b/c/bt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/c/aa",
            "<TK;TV;>.com/google/b/c/bt;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/b/c/aa;


# direct methods
.method constructor <init>(Lcom/google/b/c/aa;)V
    .registers 3

    iput-object p1, p0, Lcom/google/b/c/av;->i:Lcom/google/b/c/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/b/c/av;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/c/av;->c:I

    invoke-direct {p0}, Lcom/google/b/c/av;->b()V

    return-void
.end method

.method private a(Lcom/google/b/c/az;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/c/az",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lcom/google/b/c/az;->d()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/b/c/av;->i:Lcom/google/b/c/aa;

    invoke-interface {p1}, Lcom/google/b/c/az;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    :cond_d
    :goto_d
    if-eqz v0, :cond_37

    new-instance v1, Lcom/google/b/c/bt;

    iget-object v3, p0, Lcom/google/b/c/av;->i:Lcom/google/b/c/aa;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/b/c/bt;-><init>(Lcom/google/b/c/aa;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/b/c/av;->g:Lcom/google/b/c/bt;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3e

    iget-object v0, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    invoke-virtual {v0}, Lcom/google/b/c/ba;->c()V

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    :try_start_1f
    invoke-interface {p1}, Lcom/google/b/c/az;->a()Lcom/google/b/c/bm;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/b/c/bm;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/google/b/c/aa;->b()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v3, p1}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;)Z
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_3e

    move-result v3

    if-nez v3, :cond_d

    :cond_35
    move-object v0, v1

    goto :goto_d

    :cond_37
    iget-object v0, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    invoke-virtual {v0}, Lcom/google/b/c/ba;->c()V

    const/4 v0, 0x0

    goto :goto_1e

    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    invoke-virtual {v1}, Lcom/google/b/c/ba;->c()V

    throw v0
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/c/av;->g:Lcom/google/b/c/bt;

    invoke-direct {p0}, Lcom/google/b/c/av;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/b/c/av;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_10
    iget v0, p0, Lcom/google/b/c/av;->b:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/b/c/av;->i:Lcom/google/b/c/aa;

    iget-object v0, v0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;

    iget v1, p0, Lcom/google/b/c/av;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/b/c/av;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    iget-object v0, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    iget v0, v0, Lcom/google/b/c/ba;->b:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/b/c/av;->d:Lcom/google/b/c/ba;

    iget-object v0, v0, Lcom/google/b/c/ba;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/b/c/av;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/google/b/c/av;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/b/c/av;->c:I

    invoke-direct {p0}, Lcom/google/b/c/av;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    invoke-interface {v0}, Lcom/google/b/c/az;->b()Lcom/google/b/c/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    :goto_c
    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    invoke-direct {p0, v0}, Lcom/google/b/c/av;->a(Lcom/google/b/c/az;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    invoke-interface {v0}, Lcom/google/b/c/az;->b()Lcom/google/b/c/az;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()Z
    .registers 4

    :cond_0
    iget v0, p0, Lcom/google/b/c/av;->c:I

    if-ltz v0, :cond_26

    iget-object v0, p0, Lcom/google/b/c/av;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/b/c/av;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/b/c/av;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/c/az;

    iput-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/c/av;->f:Lcom/google/b/c/az;

    invoke-direct {p0, v0}, Lcom/google/b/c/av;->a(Lcom/google/b/c/az;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/google/b/c/av;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_24
    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method


# virtual methods
.method final a()Lcom/google/b/c/bt;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/c/aa",
            "<TK;TV;>.com/google/b/c/bt;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/c/av;->g:Lcom/google/b/c/bt;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/b/c/av;->g:Lcom/google/b/c/bt;

    iput-object v0, p0, Lcom/google/b/c/av;->h:Lcom/google/b/c/bt;

    invoke-direct {p0}, Lcom/google/b/c/av;->b()V

    iget-object v0, p0, Lcom/google/b/c/av;->h:Lcom/google/b/c/bt;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/c/av;->g:Lcom/google/b/c/bt;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public remove()V
    .registers 3

    iget-object v0, p0, Lcom/google/b/c/av;->h:Lcom/google/b/c/bt;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/b/a/o;->b(Z)V

    iget-object v0, p0, Lcom/google/b/c/av;->i:Lcom/google/b/c/aa;

    iget-object v1, p0, Lcom/google/b/c/av;->h:Lcom/google/b/c/bt;

    invoke-virtual {v1}, Lcom/google/b/c/bt;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/c/aa;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/c/av;->h:Lcom/google/b/c/bt;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
