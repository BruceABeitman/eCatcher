.class Lcom/google/common/collect/MapMakerInternalMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/locks/ReentrantLock;"
    }
.end annotation


# instance fields
.field volatile count:I

.field final evictionQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final expirationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final map:Lcom/google/common/collect/MapMakerInternalMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final maxSegmentSize:I

.field modCount:I

.field final readCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final recencyQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field threshold:I

.field final valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/MapMakerInternalMap;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/MapMakerInternalMap",
            "<TK;TV;>;II)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iput p3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    invoke-static {p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-ne v2, v3, :cond_29

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    :cond_29
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_73

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_36
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_43

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_43
    iput-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-nez v0, :cond_51

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v0

    if-eqz v0, :cond_75

    :cond_51
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_56
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_7a

    new-instance v0, Lcom/google/common/collect/p;

    invoke-direct {v0}, Lcom/google/common/collect/p;-><init>()V

    :goto_63
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Lcom/google/common/collect/q;

    invoke-direct {v0}, Lcom/google/common/collect/q;-><init>()V

    :goto_70
    iput-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    return-void

    :cond_73
    move-object v0, v1

    goto :goto_36

    :cond_75
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_56

    :cond_7a
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_63

    :cond_7f
    invoke-static {}, Lcom/google/common/collect/MapMakerInternalMap;->h()Ljava/util/Queue;

    move-result-object v0

    goto :goto_70
.end method

.method private a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/common/collect/ac;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/common/collect/u;)Lcom/google/common/collect/ac;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/ac;)V

    goto :goto_7
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/common/collect/u;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;J)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_19
    return-void
.end method

.method private a(Lcom/google/common/collect/u;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/k;

    invoke-virtual {v0}, Lcom/google/common/base/k;->a()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-interface {p1, v0, v1}, Lcom/google/common/collect/u;->a(J)V

    return-void
.end method

.method private a(Lcom/google/common/collect/u;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueStrength:Lcom/google/common/collect/MapMakerInternalMap$Strength;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Strength;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Lcom/google/common/collect/u;Ljava/lang/Object;)Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/common/collect/u;->a(Lcom/google/common/collect/ac;)V

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    :goto_27
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;J)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void

    :cond_30
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterWriteNanos:J

    goto :goto_27
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    sget-object v1, Lcom/google/common/collect/MapMakerInternalMap;->f:Ljava/util/Queue;

    if-eq v0, v1, :cond_14

    new-instance v0, Lcom/google/common/collect/MapMaker$RemovalNotification;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/common/collect/MapMaker$RemovalNotification;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v1, v1, Lcom/google/common/collect/MapMakerInternalMap;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method private static a(Lcom/google/common/collect/ac;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ac",
            "<TK;TV;>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private a(Lcom/google/common/collect/u;I)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_3
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v1, v0

    :goto_16
    if-eqz v1, :cond_4b

    if-ne v1, p1, :cond_46

    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-interface {v1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v4, v5, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_53

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    const/4 v0, 0x1

    :goto_45
    return v0

    :cond_46
    :try_start_46
    invoke-interface {v1}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_53

    move-result-object v1

    goto :goto_16

    :cond_4b
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    const/4 v0, 0x0

    goto :goto_45

    :catchall_53
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0
.end method

.method private a(Lcom/google/common/collect/u;ILcom/google/common/collect/MapMaker$RemovalCause;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;I",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v1, v0

    :goto_13
    if-eqz v1, :cond_40

    if-ne v1, p1, :cond_3b

    iget v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-interface {v1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, v4, v5, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    const/4 v0, 0x1

    :goto_3a
    return v0

    :cond_3b
    invoke-interface {v1}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v1

    goto :goto_13

    :cond_40
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method private a(Ljava/lang/Object;ILcom/google/common/collect/ac;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/common/collect/ac",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_4
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v2, v0

    :goto_17
    if-eqz v2, :cond_72

    invoke-interface {v2}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/common/collect/u;->c()I

    move-result v6

    if-ne v6, p2, :cond_6d

    if-eqz v5, :cond_6d

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-interface {v2}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v5

    if-ne v5, p3, :cond_5f

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-interface {p3}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v5, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v1, v5}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_51
    .catchall {:try_start_4 .. :try_end_51} :catchall_80

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_5d
    const/4 v0, 0x1

    :goto_5e
    return v0

    :cond_5f
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_6b

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_6b
    move v0, v1

    goto :goto_5e

    :cond_6d
    :try_start_6d
    invoke-interface {v2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_80

    move-result-object v2

    goto :goto_17

    :cond_72
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_7e
    move v0, v1

    goto :goto_5e

    :catchall_80
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_8d

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_8d
    throw v0
.end method

.method private b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    invoke-interface {p2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v1

    :goto_10
    if-eq p1, p2, :cond_29

    invoke-direct {p0, p1, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    if-eqz v0, :cond_20

    move v1, v2

    :goto_19
    invoke-interface {p1}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_10

    :cond_20
    invoke-direct {p0, p1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;)V

    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_19

    :cond_29
    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    return-object v1
.end method

.method private b(Lcom/google/common/collect/u;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/common/collect/u;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    :goto_13
    if-eqz v0, :cond_34

    invoke-interface {v0}, Lcom/google/common/collect/u;->c()I

    move-result v1

    if-ne v1, p2, :cond_24

    invoke-interface {v0}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a()V

    :cond_24
    invoke-interface {v0}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    goto :goto_13

    :cond_29
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v1}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    :goto_33
    return-object v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/common/collect/u;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d(Ljava/lang/Object;I)Lcom/google/common/collect/u;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->b()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2, v1}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b()V

    goto :goto_7

    :cond_1c
    move-object v0, v1

    goto :goto_7
.end method

.method private e()V
    .registers 7

    const/16 v5, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->d()Z

    move-result v0

    if-eqz v0, :cond_27

    move v1, v2

    :goto_c
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->keyReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_27

    check-cast v0, Lcom/google/common/collect/u;

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-interface {v0}, Lcom/google/common/collect/u;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v3

    invoke-direct {v3, v0, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;I)Z

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v5, :cond_53

    :cond_27
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->e()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_2f
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->valueReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_52

    check-cast v0, Lcom/google/common/collect/ac;

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-interface {v0}, Lcom/google/common/collect/ac;->a()Lcom/google/common/collect/u;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/common/collect/u;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/common/collect/MapMakerInternalMap;->a(I)Lcom/google/common/collect/MapMakerInternalMap$Segment;

    move-result-object v1

    invoke-interface {v3}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v4, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;ILcom/google/common/collect/ac;)Z

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_2f

    :cond_52
    return-void

    :cond_53
    move v1, v0

    goto :goto_c
.end method

.method private f()V
    .registers 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_17
    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v1}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2d
    return-void
.end method

.method private g()V
    .registers 6

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->ticker:Lcom/google/common/base/k;

    invoke-virtual {v0}, Lcom/google/common/base/k;->a()J

    move-result-wide v1

    :cond_14
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->expirationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    if-eqz v0, :cond_b

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/MapMakerInternalMap;->a(Lcom/google/common/collect/u;J)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Lcom/google/common/collect/u;->c()I

    move-result v3

    sget-object v4, Lcom/google/common/collect/MapMaker$RemovalCause;->d:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v3, v4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private h()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->e()V

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->g()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->e(Ljava/lang/Object;I)Lcom/google/common/collect/u;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_31

    move-result-object v1

    if-nez v1, :cond_b

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    invoke-interface {v1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v2}, Lcom/google/common/collect/MapMakerInternalMap;->c()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-wide v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->expireAfterAccessNanos:J

    invoke-direct {p0, v1, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;J)V

    :cond_24
    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->recencyQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_31

    :goto_29
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    goto :goto_a

    :cond_2d
    :try_start_2d
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_29

    :catchall_31
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_4
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v3, v0

    :goto_18
    if-eqz v3, :cond_7e

    invoke-interface {v3}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Lcom/google/common/collect/u;->c()I

    move-result v2

    if-ne v2, p2, :cond_78

    if-eqz v6, :cond_78

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_78

    invoke-interface {v3}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_62

    invoke-static {v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ac;)Z

    move-result v7

    if-eqz v7, :cond_5a

    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    sget-object v7, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v6, v2, v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_86

    :cond_5a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v1

    :goto_61
    return-object v0

    :cond_62
    :try_start_62
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->b:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v3, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Ljava/lang/Object;)V
    :try_end_70
    .catchall {:try_start_62 .. :try_end_70} :catchall_86

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v2

    goto :goto_61

    :cond_78
    :try_start_78
    invoke-interface {v3}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_86

    move-result-object v2

    move-object v3, v2

    goto :goto_18

    :cond_7e
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v1

    goto :goto_61

    :catchall_86
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_3
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    if-le v1, v0, :cond_92

    iget-object v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/high16 v0, 0x4000

    if-ge v8, v0, :cond_8e

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->threshold:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_32
    if-ge v6, v8, :cond_8a

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    if-eqz v0, :cond_161

    invoke-interface {v0}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/common/collect/u;->c()I

    move-result v2

    and-int v3, v2, v10

    if-nez v4, :cond_51

    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v1

    :goto_4c
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    goto :goto_32

    :cond_51
    move-object v5, v0

    :goto_52
    if-eqz v4, :cond_63

    invoke-interface {v4}, Lcom/google/common/collect/u;->c()I

    move-result v2

    and-int/2addr v2, v10

    if-eq v2, v3, :cond_164

    move-object v3, v4

    :goto_5c
    invoke-interface {v4}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v4

    move-object v5, v3

    move v3, v2

    goto :goto_52

    :cond_63
    invoke-virtual {v9, v3, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v2, v0

    :goto_67
    if-eq v2, v5, :cond_161

    invoke-interface {v2}, Lcom/google/common/collect/u;->c()I

    move-result v0

    and-int v3, v0, v10

    invoke-virtual {v9, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    invoke-direct {p0, v2, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    if-eqz v0, :cond_84

    invoke-virtual {v9, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_7e
    invoke-interface {v2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v0

    move-object v2, v0

    goto :goto_67

    :cond_84
    invoke-direct {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_7e

    :cond_8a
    iput-object v9, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    :cond_8e
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v0, 0x1

    :cond_92
    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v2, v0

    :goto_a3
    if-eqz v2, :cond_105

    invoke-interface {v2}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/common/collect/u;->c()I

    move-result v6

    if-ne v6, p2, :cond_100

    if-eqz v5, :cond_100

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_100

    invoke-interface {v2}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_df

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-direct {p0, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Ljava/lang/Object;)V

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_d7
    .catchall {:try_start_3 .. :try_end_d7} :catchall_144

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    const/4 v0, 0x0

    :goto_de
    return-object v0

    :cond_df
    if-eqz p4, :cond_eb

    :try_start_e1
    invoke-direct {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;)V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_144

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    goto :goto_de

    :cond_eb
    :try_start_eb
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->b:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v2, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Ljava/lang/Object;)V
    :try_end_f9
    .catchall {:try_start_eb .. :try_end_f9} :catchall_144

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    goto :goto_de

    :cond_100
    :try_start_100
    invoke-interface {v2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;

    move-result-object v2

    goto :goto_a3

    :cond_105
    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->d:Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;

    invoke-virtual {v2, p0, p1, p2, v0}, Lcom/google/common/collect/MapMakerInternalMap$EntryFactory;->a(Lcom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->a()Z

    move-result v0

    if-eqz v0, :cond_15d

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->maxSegmentSize:I

    if-lt v0, v2, :cond_15d

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->f()V

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->evictionQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    invoke-interface {v0}, Lcom/google/common/collect/u;->c()I

    move-result v2

    sget-object v3, Lcom/google/common/collect/MapMaker$RemovalCause;->e:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v0, v2, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;ILcom/google/common/collect/MapMaker$RemovalCause;)Z

    move-result v0

    if-nez v0, :cond_14c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_144
    .catchall {:try_start_100 .. :try_end_144} :catchall_144

    :catchall_144
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0

    :cond_14c
    const/4 v0, 0x1

    :goto_14d
    if-eqz v0, :cond_15f

    :try_start_14f
    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v0, v0, 0x1

    :goto_153
    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_155
    .catchall {:try_start_14f .. :try_end_155} :catchall_144

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    const/4 v0, 0x0

    goto :goto_de

    :cond_15d
    const/4 v0, 0x0

    goto :goto_14d

    :cond_15f
    move v0, v1

    goto :goto_153

    :cond_161
    move v0, v1

    goto/16 :goto_4c

    :cond_164
    move v2, v3

    move-object v3, v5

    goto/16 :goto_5c
.end method

.method final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->e()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/common/collect/u;Lcom/google/common/collect/MapMaker$RemovalCause;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/u",
            "<TK;TV;>;",
            "Lcom/google/common/collect/MapMaker$RemovalCause;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/common/collect/u;->c()I

    invoke-interface {p1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    return-void
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_4
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    iget-object v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v2, v0

    :goto_18
    if-eqz v2, :cond_92

    invoke-interface {v2}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/common/collect/u;->c()I

    move-result v6

    if-ne v6, p2, :cond_8d

    if-eqz v5, :cond_8d

    iget-object v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v6, v6, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v6, p1, v5}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8d

    invoke-interface {v2}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_62

    invoke-static {v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ac;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    sget-object v6, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, v5, v7, v6}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_9a

    :cond_5a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move v0, v1

    :goto_61
    return v0

    :cond_62
    :try_start_62
    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v0, v0, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v0, p3, v7}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_82

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->b:Lcom/google/common/collect/MapMaker$RemovalCause;

    invoke-direct {p0, p1, v7, v0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v2, p4}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;Ljava/lang/Object;)V
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_9a

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    const/4 v0, 0x1

    goto :goto_61

    :cond_82
    :try_start_82
    invoke-direct {p0, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/u;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_9a

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move v0, v1

    goto :goto_61

    :cond_8d
    :try_start_8d
    invoke-interface {v2}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_90
    .catchall {:try_start_8d .. :try_end_90} :catchall_9a

    move-result-object v2

    goto :goto_18

    :cond_92
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move v0, v1

    goto :goto_61

    :catchall_9a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0
.end method

.method final b()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->g()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    throw v0
.end method

.method final b(Ljava/lang/Object;I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    if-eqz v1, :cond_1e

    invoke-direct {p0, p1, p2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->e(Ljava/lang/Object;I)Lcom/google/common/collect/u;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_22

    move-result-object v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    :goto_e
    return v0

    :cond_f
    :try_start_f
    invoke-interface {v1}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_22

    move-result-object v1

    if-eqz v1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    goto :goto_e

    :cond_1e
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    goto :goto_e

    :catchall_22
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->c()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_4
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v3, v0

    :goto_1a
    if-eqz v3, :cond_81

    invoke-interface {v3}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Lcom/google/common/collect/u;->c()I

    move-result v2

    if-ne v2, p2, :cond_7b

    if-eqz v6, :cond_7b

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v3}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v8, v8, Lcom/google/common/collect/MapMakerInternalMap;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v8, p3, v7}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_69

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;

    :goto_46
    iget v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-direct {p0, v6, v7, v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v3, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    sget-object v0, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_5e
    .catchall {:try_start_4 .. :try_end_5e} :catchall_88

    if-ne v2, v0, :cond_79

    const/4 v0, 0x1

    :goto_61
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move v1, v0

    :goto_68
    return v1

    :cond_69
    :try_start_69
    invoke-static {v2}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ac;)Z

    move-result v2

    if-eqz v2, :cond_72

    sget-object v2, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_71
    .catchall {:try_start_69 .. :try_end_71} :catchall_88

    goto :goto_46

    :cond_72
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    goto :goto_68

    :cond_79
    move v0, v1

    goto :goto_61

    :cond_7b
    :try_start_7b
    invoke-interface {v3}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_88

    move-result-object v2

    move-object v3, v2

    goto :goto_1a

    :cond_81
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    goto :goto_68

    :catchall_88
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->lock()V

    :try_start_4
    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    iget v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    iget-object v4, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/u;

    move-object v3, v0

    :goto_1a
    if-eqz v3, :cond_73

    invoke-interface {v3}, Lcom/google/common/collect/u;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Lcom/google/common/collect/u;->c()I

    move-result v2

    if-ne v2, p2, :cond_6d

    if-eqz v6, :cond_6d

    iget-object v2, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    iget-object v2, v2, Lcom/google/common/collect/MapMakerInternalMap;->keyEquivalence:Lcom/google/common/base/Equivalence;

    invoke-virtual {v2, p1, v6}, Lcom/google/common/base/Equivalence;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v3}, Lcom/google/common/collect/u;->a()Lcom/google/common/collect/ac;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/common/collect/ac;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5c

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->a:Lcom/google/common/collect/MapMaker$RemovalCause;

    :goto_3e
    iget v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->modCount:I

    invoke-direct {p0, v6, v2, v1}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/MapMaker$RemovalCause;)V

    invoke-direct {p0, v0, v3}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->b(Lcom/google/common/collect/u;Lcom/google/common/collect/u;)Lcom/google/common/collect/u;

    move-result-object v0

    iget v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->count:I
    :try_end_54
    .catchall {:try_start_4 .. :try_end_54} :catchall_7b

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v2

    :goto_5b
    return-object v0

    :cond_5c
    :try_start_5c
    invoke-static {v7}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->a(Lcom/google/common/collect/ac;)Z

    move-result v7

    if-eqz v7, :cond_65

    sget-object v1, Lcom/google/common/collect/MapMaker$RemovalCause;->c:Lcom/google/common/collect/MapMaker$RemovalCause;
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_7b

    goto :goto_3e

    :cond_65
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v1

    goto :goto_5b

    :cond_6d
    :try_start_6d
    invoke-interface {v3}, Lcom/google/common/collect/u;->b()Lcom/google/common/collect/u;
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_7b

    move-result-object v2

    move-object v3, v2

    goto :goto_1a

    :cond_73
    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    move-object v0, v1

    goto :goto_5b

    :catchall_7b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->unlock()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    throw v0
.end method

.method final c()V
    .registers 2

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->readCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->h()V

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->d()V

    :cond_10
    return-void
.end method

.method final d()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/common/collect/MapMakerInternalMap$Segment;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/common/collect/MapMakerInternalMap$Segment;->map:Lcom/google/common/collect/MapMakerInternalMap;

    invoke-virtual {v0}, Lcom/google/common/collect/MapMakerInternalMap;->i()V

    :cond_b
    return-void
.end method
