.class abstract Lcom/google/b/b/ag;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:I

.field c:I

.field d:Lcom/google/b/b/an;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/an",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/b/b/am;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/n",
            "<TK;TV;>.com/google/b/b/bl;"
        }
    .end annotation
.end field

.field h:Lcom/google/b/b/bl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/n",
            "<TK;TV;>.com/google/b/b/bl;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/b/b/n;


# direct methods
.method constructor <init>(Lcom/google/b/b/n;)V
    .registers 3

    iput-object p1, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/b/b/ag;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/b/b/ag;->c:I

    invoke-direct {p0}, Lcom/google/b/b/ag;->b()V

    return-void
.end method

.method private a(Lcom/google/b/b/am;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v1}, Lcom/google/b/a/v;->a()J

    move-result-wide v2

    invoke-interface {p1}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    invoke-interface {p1}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_27

    :cond_15
    :goto_15
    if-eqz v0, :cond_39

    new-instance v1, Lcom/google/b/b/bl;

    iget-object v2, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    invoke-direct {v1, v2, v4, v0}, Lcom/google/b/b/bl;-><init>(Lcom/google/b/b/n;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/b/b/ag;->g:Lcom/google/b/b/bl;
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_40

    iget-object v0, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    invoke-virtual {v0}, Lcom/google/b/b/an;->b()V

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    :try_start_27
    invoke-interface {p1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {v5, p1, v2, v3}, Lcom/google/b/b/n;->a(Lcom/google/b/b/am;J)Z
    :try_end_34
    .catchall {:try_start_27 .. :try_end_34} :catchall_40

    move-result v2

    if-nez v2, :cond_15

    move-object v0, v1

    goto :goto_15

    :cond_39
    iget-object v0, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    invoke-virtual {v0}, Lcom/google/b/b/an;->b()V

    const/4 v0, 0x0

    goto :goto_26

    :catchall_40
    move-exception v0

    iget-object v1, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    invoke-virtual {v1}, Lcom/google/b/b/an;->b()V

    throw v0
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/b/ag;->g:Lcom/google/b/b/bl;

    invoke-direct {p0}, Lcom/google/b/b/ag;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/b/b/ag;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_10
    iget v0, p0, Lcom/google/b/b/ag;->b:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;

    iget v1, p0, Lcom/google/b/b/ag;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/b/b/ag;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    iget-object v0, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    iget v0, v0, Lcom/google/b/b/an;->b:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/b/b/ag;->d:Lcom/google/b/b/an;

    iget-object v0, v0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/b/b/ag;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/google/b/b/ag;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/b/b/ag;->c:I

    invoke-direct {p0}, Lcom/google/b/b/ag;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    invoke-interface {v0}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    :goto_c
    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    invoke-direct {p0, v0}, Lcom/google/b/b/ag;->a(Lcom/google/b/b/am;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    invoke-interface {v0}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v0

    iput-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()Z
    .registers 4

    :cond_0
    iget v0, p0, Lcom/google/b/b/ag;->c:I

    if-ltz v0, :cond_26

    iget-object v0, p0, Lcom/google/b/b/ag;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/b/b/ag;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/b/b/ag;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    iput-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/b/b/ag;->f:Lcom/google/b/b/am;

    invoke-direct {p0, v0}, Lcom/google/b/b/ag;->a(Lcom/google/b/b/am;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/google/b/b/ag;->c()Z

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
.method final a()Lcom/google/b/b/bl;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/b/b/n",
            "<TK;TV;>.com/google/b/b/bl;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/ag;->g:Lcom/google/b/b/bl;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/b/b/ag;->g:Lcom/google/b/b/bl;

    iput-object v0, p0, Lcom/google/b/b/ag;->h:Lcom/google/b/b/bl;

    invoke-direct {p0}, Lcom/google/b/b/ag;->b()V

    iget-object v0, p0, Lcom/google/b/b/ag;->h:Lcom/google/b/b/bl;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/b/b/ag;->g:Lcom/google/b/b/bl;

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

    iget-object v0, p0, Lcom/google/b/b/ag;->h:Lcom/google/b/b/bl;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/b/a/o;->b(Z)V

    iget-object v0, p0, Lcom/google/b/b/ag;->i:Lcom/google/b/b/n;

    iget-object v1, p0, Lcom/google/b/b/ag;->h:Lcom/google/b/b/bl;

    invoke-virtual {v1}, Lcom/google/b/b/bl;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/b/b/n;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/b/b/ag;->h:Lcom/google/b/b/bl;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
