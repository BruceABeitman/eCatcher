.class abstract Lcom/google/common/collect/r;
.super Ljava/lang/Object;
.source "SourceFile"

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

.field d:Lcom/google/common/collect/MapMakerInternalMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap$Segment",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field f:Lcom/google/common/collect/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field g:Lcom/google/common/collect/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/aj;"
        }
    .end annotation
.end field

.field h:Lcom/google/common/collect/aj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/aj;"
        }
    .end annotation
.end field

.field final synthetic i:Lcom/google/common/collect/MapMakerInternalMap;


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;)V
    .registers 3

    iput-object p1, p0, Lcom/google/common/collect/r;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/r;->b:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/collect/r;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/r;->b()V

    return-void
.end method

.method private a(Lcom/google/common/collect/u;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/collect/r;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-interface {p1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1f

    :cond_d
    :goto_d
    if-eqz v0, :cond_37

    new-instance v1, Lcom/google/common/collect/aj;

    iget-object v3, p0, Lcom/google/common/collect/r;->i:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-direct {v1, v3, v2, v0}, Lcom/google/common/collect/aj;-><init>(Lcom/google/common/collect/MapMakerInternalMap;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/common/collect/r;->g:Lcom/google/common/collect/aj;
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_3e

    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    const/4 v0, 0x1

    :goto_1e
    return v0

    :cond_1f
    :try_start_1f
    invoke-interface {p1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v3}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {v3, p1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;)Z
    :try_end_32
    .catchall {:try_start_1f .. :try_end_32} :catchall_3e

    move-result v3

    if-nez v3, :cond_d

    :cond_35
    move-object v0, v1

    goto :goto_d

    :cond_37
    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    const/4 v0, 0x0

    goto :goto_1e

    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    throw v0
.end method

.method private b()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/r;->g:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Lcom/google/common/collect/r;->c()Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_9
    :goto_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/google/common/collect/r;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_10
    iget v0, p0, Lcom/google/common/collect/r;->b:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/google/common/collect/r;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->c:[Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v1, p0, Lcom/google/common/collect/r;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/r;->b:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/common/collect/r;->d:Lcom/google/common/collect/MapMakerInternalMap$Segment;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/google/common/collect/r;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget-object v0, p0, Lcom/google/common/collect/r;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/collect/r;->c:I

    invoke-direct {p0}, Lcom/google/common/collect/r;->d()Z

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_9
.end method

.method private c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    :goto_c
    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    invoke-direct {p0, v0}, Lcom/google/common/collect/r;->a(Lcom/google/common/collect/u;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private d()Z
    .registers 4

    :cond_0
    iget v0, p0, Lcom/google/common/collect/r;->c:I

    if-ltz v0, :cond_26

    iget-object v0, p0, Lcom/google/common/collect/r;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iget v1, p0, Lcom/google/common/collect/r;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/common/collect/r;->c:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    iput-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/r;->f:Lcom/google/common/collect/u;

    invoke-direct {p0, v0}, Lcom/google/common/collect/r;->a(Lcom/google/common/collect/u;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-direct {p0}, Lcom/google/common/collect/r;->c()Z

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
.method final a()Lcom/google/common/collect/aj;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>.com/google/common/collect/aj;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/r;->g:Lcom/google/common/collect/aj;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/google/common/collect/r;->g:Lcom/google/common/collect/aj;

    iput-object v0, p0, Lcom/google/common/collect/r;->h:Lcom/google/common/collect/aj;

    invoke-direct {p0}, Lcom/google/common/collect/r;->b()V

    iget-object v0, p0, Lcom/google/common/collect/r;->h:Lcom/google/common/collect/aj;

    return-object v0
.end method

.method public hasNext()Z
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/r;->g:Lcom/google/common/collect/aj;

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

    iget-object v0, p0, Lcom/google/common/collect/r;->h:Lcom/google/common/collect/aj;

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V

    iget-object v0, p0, Lcom/google/common/collect/r;->i:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, p0, Lcom/google/common/collect/r;->h:Lcom/google/common/collect/aj;

    invoke-virtual {v1}, Lcom/google/common/collect/aj;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/MapMakerInternalMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/r;->h:Lcom/google/common/collect/aj;

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_5
.end method
