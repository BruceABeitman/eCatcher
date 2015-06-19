.class final Lcom/google/b/b/an;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "LocalCache.java"


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
.field final a:Lcom/google/b/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/b/n",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile b:I

.field c:I

.field d:I

.field e:I

.field volatile f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final g:J

.field final h:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TK;>;"
        }
    .end annotation
.end field

.field final i:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;"
        }
    .end annotation
.end field

.field final j:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field final l:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final m:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field final n:Lcom/google/b/b/c;


# direct methods
.method constructor <init>(Lcom/google/b/b/n;IJLcom/google/b/b/c;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/n",
            "<TK;TV;>;IJ",
            "Lcom/google/b/b/c;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/b/b/an;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iput-wide p3, p0, Lcom/google/b/b/an;->g:J

    invoke-static {p5}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/c;

    iput-object v0, p0, Lcom/google/b/b/an;->n:Lcom/google/b/b/c;

    invoke-static {p2}, Lcom/google/b/b/an;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/google/b/b/an;->e:I

    iget-object v2, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v2}, Lcom/google/b/b/n;->b()Z

    move-result v2

    if-nez v2, :cond_3c

    iget v2, p0, Lcom/google/b/b/an;->e:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/google/b/b/an;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3c

    iget v2, p0, Lcom/google/b/b/an;->e:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/b/b/an;->e:I

    :cond_3c
    iput-object v0, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {p1}, Lcom/google/b/b/n;->h()Z

    move-result v0

    if-eqz v0, :cond_80

    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :goto_49
    iput-object v0, p0, Lcom/google/b/b/an;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/b/b/n;->i()Z

    move-result v0

    if-eqz v0, :cond_56

    new-instance v1, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    :cond_56
    iput-object v1, p0, Lcom/google/b/b/an;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p1}, Lcom/google/b/b/n;->f()Z

    move-result v0

    if-eqz v0, :cond_82

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_63
    iput-object v0, p0, Lcom/google/b/b/an;->j:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/b/b/n;->c()Z

    move-result v0

    if-eqz v0, :cond_87

    new-instance v0, Lcom/google/b/b/bi;

    invoke-direct {v0}, Lcom/google/b/b/bi;-><init>()V

    :goto_70
    iput-object v0, p0, Lcom/google/b/b/an;->l:Ljava/util/Queue;

    invoke-virtual {p1}, Lcom/google/b/b/n;->f()Z

    move-result v0

    if-eqz v0, :cond_8c

    new-instance v0, Lcom/google/b/b/s;

    invoke-direct {v0}, Lcom/google/b/b/s;-><init>()V

    :goto_7d
    iput-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    return-void

    :cond_80
    move-object v0, v1

    goto :goto_49

    :cond_82
    invoke-static {}, Lcom/google/b/b/n;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_63

    :cond_87
    invoke-static {}, Lcom/google/b/b/n;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_70

    :cond_8c
    invoke-static {}, Lcom/google/b/b/n;->l()Ljava/util/Queue;

    move-result-object v0

    goto :goto_7d
.end method

.method private a(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    invoke-interface {p1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_18

    invoke-interface {v1}, Lcom/google/b/b/ba;->d()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_18
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->s:Lcom/google/b/b/v;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/b/b/v;->a(Lcom/google/b/b/an;Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    iget-object v3, p0, Lcom/google/b/b/an;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-interface {v1, v3, v2, v0}, Lcom/google/b/b/ba;->a(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lcom/google/b/b/am;)Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/b/b/am;->a(Lcom/google/b/b/ba;)V

    goto :goto_7
.end method

.method private a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;TK;",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;",
            "Lcom/google/b/b/bs;",
            ")",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-direct {p0, p3, p4, p5}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    iget-object v0, p0, Lcom/google/b/b/an;->l:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v0, p2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    invoke-interface {p4}, Lcom/google/b/b/ba;->c()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-interface {p4, v0}, Lcom/google/b/b/ba;->a(Ljava/lang/Object;)V

    :goto_17
    return-object p1

    :cond_18
    invoke-direct {p0, p1, p2}, Lcom/google/b/b/an;->b(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object p1

    goto :goto_17
.end method

.method private a(Ljava/lang/Object;IJ)Lcom/google/b/b/am;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "IJ)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/b/b/an;->e(Ljava/lang/Object;I)Lcom/google/b/b/am;

    move-result-object v1

    if-nez v1, :cond_8

    :goto_7
    return-object v0

    :cond_8
    iget-object v2, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v2, v1, p3, p4}, Lcom/google/b/b/n;->a(Lcom/google/b/b/am;J)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p0, p3, p4}, Lcom/google/b/b/an;->a(J)V

    goto :goto_7

    :cond_14
    move-object v0, v1

    goto :goto_7
.end method

.method private a(Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->s:Lcom/google/b/b/v;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p2, p3}, Lcom/google/b/b/v;->a(Lcom/google/b/b/an;Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/Object;ILcom/google/b/b/k;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/k",
            "<-TK;TV;>;)TV;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/b/b/an;->d(Ljava/lang/Object;I)Lcom/google/b/b/aj;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v0, v6

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {v4, p1, p3}, Lcom/google/b/b/aj;->a(Ljava/lang/Object;Lcom/google/b/b/k;)Lcom/google/b/f/a/l;

    move-result-object v5

    new-instance v0, Lcom/google/b/b/ao;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/ao;-><init>(Lcom/google/b/b/an;Ljava/lang/Object;ILcom/google/b/b/aj;Lcom/google/b/f/a/l;)V

    sget-object v1, Lcom/google/b/b/n;->b:Lcom/google/b/f/a/n;

    invoke-interface {v5, v0, v1}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-interface {v5}, Lcom/google/b/f/a/l;->isDone()Z

    move-result v0

    if-eqz v0, :cond_26

    :try_start_20
    invoke-static {v5}, Lcom/google/b/f/a/s;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_23} :catch_25

    move-result-object v0

    goto :goto_8

    :catch_25
    move-exception v0

    :cond_26
    move-object v0, v6

    goto :goto_8
.end method

.method private static a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray",
            "<",
            "Lcom/google/b/b/am",
            "<TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method private a(Lcom/google/b/b/am;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    invoke-virtual {p0, p1, v0}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/bs;)V

    iget-object v0, p0, Lcom/google/b/b/an;->l:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/b/b/am;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;J)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v0}, Lcom/google/b/b/n;->d()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p2, p3}, Lcom/google/b/b/am;->a(J)V

    :cond_b
    iget-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Lcom/google/b/b/am;Ljava/lang/Object;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;TV;J)V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->l:Lcom/google/b/b/cf;

    const/4 v1, 0x1

    const-string v2, "Weights must be non-negative"

    invoke-static {v1, v2}, Lcom/google/b/a/o;->b(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->j:Lcom/google/b/b/aq;

    invoke-virtual {v1, p0, p1, p2}, Lcom/google/b/b/aq;->a(Lcom/google/b/b/an;Lcom/google/b/b/am;Ljava/lang/Object;)Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/google/b/b/am;->a(Lcom/google/b/b/ba;)V

    invoke-direct {p0}, Lcom/google/b/b/an;->e()V

    iget v1, p0, Lcom/google/b/b/an;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/b/an;->c:I

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v1}, Lcom/google/b/b/n;->d()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p1, p3, p4}, Lcom/google/b/b/am;->a(J)V

    :cond_2d
    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v1}, Lcom/google/b/b/n;->g()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p1, p3, p4}, Lcom/google/b/b/am;->b(J)V

    :cond_38
    iget-object v1, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/b/b/an;->l:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Lcom/google/b/b/ba;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;",
            "Lcom/google/b/b/bs;",
            ")V"
        }
    .end annotation

    iget v0, p0, Lcom/google/b/b/an;->c:I

    invoke-interface {p2}, Lcom/google/b/b/ba;->a()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/b/b/an;->c:I

    invoke-virtual {p3}, Lcom/google/b/b/bs;->a()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/b/b/an;->n:Lcom/google/b/b/c;

    invoke-interface {v0}, Lcom/google/b/b/c;->c()V

    :cond_14
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->p:Ljava/util/Queue;

    sget-object v1, Lcom/google/b/b/n;->w:Ljava/util/Queue;

    if-eq v0, v1, :cond_2c

    invoke-interface {p2}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/google/b/b/bz;

    invoke-direct {v1, p1, v0, p3}, Lcom/google/b/b/bz;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/b/b/bs;)V

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->p:Ljava/util/Queue;

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

.method private a(Lcom/google/b/b/am;I)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;I)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_3
    iget v0, p0, Lcom/google/b/b/an;->b:I

    iget-object v6, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_16
    if-eqz v2, :cond_45

    if-ne v2, p1, :cond_40

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_4d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x1

    :goto_3f
    return v0

    :cond_40
    :try_start_40
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_4d

    move-result-object v2

    goto :goto_16

    :cond_45
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x0

    goto :goto_3f

    :catchall_4d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method private a(Lcom/google/b/b/am;ILcom/google/b/b/bs;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;I",
            "Lcom/google/b/b/bs;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/google/b/b/an;->b:I

    iget-object v6, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_13
    if-eqz v2, :cond_3b

    if-ne v2, p1, :cond_36

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I

    const/4 v0, 0x1

    :goto_35
    return v0

    :cond_36
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v2

    goto :goto_13

    :cond_3b
    const/4 v0, 0x0

    goto :goto_35
.end method

.method private a(Ljava/lang/Object;ILcom/google/b/b/aj;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/aj",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v3, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v4, p2, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    move-object v2, v0

    :goto_15
    if-eqz v2, :cond_63

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v6

    if-ne v6, p2, :cond_5e

    if-eqz v5, :cond_5e

    iget-object v6, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v6, v6, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v6, p1, v5}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v5

    if-ne v5, p3, :cond_56

    invoke-virtual {p3}, Lcom/google/b/b/aj;->d()Z

    move-result v1

    if-eqz v1, :cond_46

    iget-object v0, p3, Lcom/google/b/b/aj;->a:Lcom/google/b/b/ba;

    invoke-interface {v2, v0}, Lcom/google/b/b/am;->a(Lcom/google/b/b/ba;)V
    :try_end_3e
    .catchall {:try_start_4 .. :try_end_3e} :catchall_4e

    :goto_3e
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x1

    :goto_45
    return v0

    :cond_46
    :try_start_46
    invoke-direct {p0, v0, v2}, Lcom/google/b/b/an;->b(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_4e

    goto :goto_3e

    :catchall_4e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0

    :cond_56
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v1

    goto :goto_45

    :cond_5e
    :try_start_5e
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_4e

    move-result-object v2

    goto :goto_15

    :cond_63
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v1

    goto :goto_45
.end method

.method private a(Ljava/lang/Object;ILcom/google/b/b/aj;Ljava/lang/Object;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/aj",
            "<TK;TV;>;TV;)Z"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/google/b/b/an;->c(J)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lcom/google/b/b/an;->e:I

    if-le v2, v0, :cond_1e

    invoke-direct {p0}, Lcom/google/b/b/an;->g()V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v2, v0, 0x1

    :cond_1e
    iget-object v6, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v7, p2, v0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    move-object v3, v0

    :goto_2f
    if-eqz v3, :cond_96

    invoke-interface {v3}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v3}, Lcom/google/b/b/am;->c()I

    move-result v9

    if-ne v9, p2, :cond_91

    if-eqz v8, :cond_91

    iget-object v9, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v9, v9, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v9, p1, v8}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_91

    invoke-interface {v3}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v6

    if-eq p3, v0, :cond_57

    if-nez v6, :cond_7f

    sget-object v7, Lcom/google/b/b/n;->v:Lcom/google/b/b/ba;

    if-eq v0, v7, :cond_7f

    :cond_57
    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    invoke-virtual {p3}, Lcom/google/b/b/aj;->d()Z

    move-result v0

    if-eqz v0, :cond_bb

    if-nez v6, :cond_7c

    sget-object v0, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    :goto_67
    invoke-direct {p0, p1, p3, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    add-int/lit8 v0, v2, -0x1

    :goto_6c
    invoke-direct {p0, v3, p4, v4, v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    iput v0, p0, Lcom/google/b/b/an;->b:I

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_74
    .catchall {:try_start_4 .. :try_end_74} :catchall_b3

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v1

    :goto_7b
    return v0

    :cond_7c
    :try_start_7c
    sget-object v0, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    goto :goto_67

    :cond_7f
    new-instance v0, Lcom/google/b/b/bh;

    invoke-direct {v0, p4}, Lcom/google/b/b/bh;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V
    :try_end_89
    .catchall {:try_start_7c .. :try_end_89} :catchall_b3

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x0

    goto :goto_7b

    :cond_91
    :try_start_91
    invoke-interface {v3}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v3

    goto :goto_2f

    :cond_96
    iget v3, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/b/b/an;->d:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    invoke-direct {p0, v0, p4, v4, v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v2, p0, Lcom/google/b/b/an;->b:I

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_ab
    .catchall {:try_start_91 .. :try_end_ab} :catchall_b3

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v1

    goto :goto_7b

    :catchall_b3
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0

    :cond_bb
    move v0, v2

    goto :goto_6c
.end method

.method private a(Ljava/lang/Object;ILcom/google/b/b/ba;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/ba",
            "<TK;TV;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget v1, p0, Lcom/google/b/b/an;->b:I

    iget-object v6, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_17
    if-eqz v2, :cond_6c

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v4

    if-ne v4, p2, :cond_67

    if-eqz v3, :cond_67

    iget-object v4, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v4, v4, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v4, p1, v3}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    if-ne v4, p3, :cond_5a

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v6, v7, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I
    :try_end_4c
    .catchall {:try_start_4 .. :try_end_4c} :catchall_79

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_58

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    :cond_58
    const/4 v0, 0x1

    :cond_59
    :goto_59
    return v0

    :cond_5a
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_59

    :cond_67
    :try_start_67
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_79

    move-result-object v2

    goto :goto_17

    :cond_6c
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_59

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_59

    :catchall_79
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->isHeldByCurrentThread()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    :cond_86
    throw v0
.end method

.method private b(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;",
            "Lcom/google/b/b/am",
            "<TK;TV;>;)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget v2, p0, Lcom/google/b/b/an;->b:I

    invoke-interface {p2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v1

    :goto_6
    if-eq p1, p2, :cond_1f

    invoke-direct {p0, p1, v1}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    if-eqz v0, :cond_16

    move v1, v2

    :goto_f
    invoke-interface {p1}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object p1

    move v2, v1

    move-object v1, v0

    goto :goto_6

    :cond_16
    invoke-direct {p0, p1}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;)V

    add-int/lit8 v0, v2, -0x1

    move-object v3, v1

    move v1, v0

    move-object v0, v3

    goto :goto_f

    :cond_1f
    iput v2, p0, Lcom/google/b/b/an;->b:I

    return-object v1
.end method

.method private b(J)V
    .registers 6

    invoke-direct {p0}, Lcom/google/b/b/an;->e()V

    :cond_3
    iget-object v0, p0, Lcom/google/b/b/an;->l:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/b/b/n;->a(Lcom/google/b/b/am;J)Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v1

    sget-object v2, Lcom/google/b/b/bs;->d:Lcom/google/b/b/bs;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;ILcom/google/b/b/bs;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_27
    iget-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    if-eqz v0, :cond_4b

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v1, v0, p1, p2}, Lcom/google/b/b/n;->a(Lcom/google/b/b/am;J)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v1

    sget-object v2, Lcom/google/b/b/bs;->d:Lcom/google/b/b/bs;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;ILcom/google/b/b/bs;)Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4b
    return-void
.end method

.method private c(J)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/b/b/an;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_6
    invoke-direct {p0}, Lcom/google/b/b/an;->d()V

    invoke-direct {p0, p1, p2}, Lcom/google/b/b/an;->b(J)V

    iget-object v0, p0, Lcom/google/b/b/an;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    :cond_15
    return-void

    :catchall_16
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    throw v0
.end method

.method private d(Ljava/lang/Object;I)Lcom/google/b/b/aj;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)",
            "Lcom/google/b/b/aj",
            "<TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_3
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/google/b/b/an;->c(J)V

    iget-object v4, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    move-object v1, v0

    :goto_1f
    if-eqz v1, :cond_70

    invoke-interface {v1}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Lcom/google/b/b/am;->c()I

    move-result v7

    if-ne v7, p2, :cond_6b

    if-eqz v6, :cond_6b

    iget-object v7, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v7, v7, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v7, p1, v6}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    invoke-interface {v1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/b/b/ba;->c()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-interface {v1}, Lcom/google/b/b/am;->h()J

    move-result-wide v5

    sub-long/2addr v2, v5

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-wide v5, v0, Lcom/google/b/b/n;->o:J
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_8d

    cmp-long v0, v2, v5

    if-gez v0, :cond_56

    :cond_4e
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x0

    :goto_55
    return-object v0

    :cond_56
    :try_start_56
    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    new-instance v0, Lcom/google/b/b/aj;

    invoke-direct {v0, v4}, Lcom/google/b/b/aj;-><init>(Lcom/google/b/b/ba;)V

    invoke-interface {v1, v0}, Lcom/google/b/b/am;->a(Lcom/google/b/b/ba;)V
    :try_end_64
    .catchall {:try_start_56 .. :try_end_64} :catchall_8d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_55

    :cond_6b
    :try_start_6b
    invoke-interface {v1}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v1

    goto :goto_1f

    :cond_70
    iget v1, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/b/an;->d:I

    new-instance v1, Lcom/google/b/b/aj;

    invoke-direct {v1}, Lcom/google/b/b/aj;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/b/b/am;->a(Lcom/google/b/b/ba;)V

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
    :try_end_85
    .catchall {:try_start_6b .. :try_end_85} :catchall_8d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v1

    goto :goto_55

    :catchall_8d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method private d()V
    .registers 7

    const/16 v5, 0x10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v0}, Lcom/google/b/b/n;->h()Z

    move-result v0

    if-eqz v0, :cond_27

    move v1, v2

    :goto_c
    iget-object v0, p0, Lcom/google/b/b/an;->h:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_27

    check-cast v0, Lcom/google/b/b/am;

    iget-object v3, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;

    move-result-object v3

    invoke-direct {v3, v0, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;I)Z

    add-int/lit8 v0, v1, 0x1

    if-ne v0, v5, :cond_53

    :cond_27
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v0}, Lcom/google/b/b/n;->i()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_2f
    iget-object v0, p0, Lcom/google/b/b/an;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_52

    check-cast v0, Lcom/google/b/b/ba;

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-interface {v0}, Lcom/google/b/b/ba;->b()Lcom/google/b/b/am;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/b/b/am;->c()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;

    move-result-object v1

    invoke-interface {v3}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v3, v4, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/ba;)Z

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_2f

    :cond_52
    return-void

    :cond_53
    move v1, v0

    goto :goto_c
.end method

.method private e(Ljava/lang/Object;I)Lcom/google/b/b/am;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/b/b/am",
            "<TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    :goto_f
    if-eqz v0, :cond_30

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v1

    if-ne v1, p2, :cond_20

    invoke-interface {v0}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/google/b/b/an;->a()V

    :cond_20
    invoke-interface {v0}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v0

    goto :goto_f

    :cond_25
    iget-object v2, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v2, v2, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v2, p1, v1}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    :goto_2f
    return-object v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method

.method private e()V
    .registers 3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/b/b/an;->j:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_18
    return-void
.end method

.method private f()V
    .registers 5

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v0}, Lcom/google/b/b/n;->a()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-direct {p0}, Lcom/google/b/b/an;->e()V

    :cond_c
    iget v0, p0, Lcom/google/b/b/an;->c:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/b/b/an;->g:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/google/b/b/an;->m:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    invoke-interface {v0}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/b/b/ba;->a()I

    move-result v2

    if-lez v2, :cond_1b

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v1

    sget-object v2, Lcom/google/b/b/bs;->e:Lcom/google/b/b/bs;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;ILcom/google/b/b/bs;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_43
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private g()V
    .registers 12

    iget-object v7, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v8

    const/high16 v0, 0x4000

    if-lt v8, v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget v5, p0, Lcom/google/b/b/an;->b:I

    shl-int/lit8 v0, v8, 0x1

    invoke-static {v0}, Lcom/google/b/b/an;->a(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/b/b/an;->e:I

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v10, v0, -0x1

    const/4 v0, 0x0

    move v6, v0

    :goto_25
    if-ge v6, v8, :cond_7f

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    if-eqz v0, :cond_86

    invoke-interface {v0}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/b/b/am;->c()I

    move-result v1

    and-int v4, v1, v10

    if-nez v2, :cond_44

    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v2, v5

    :cond_3f
    :goto_3f
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v5, v2

    goto :goto_25

    :cond_44
    move-object v1, v0

    :goto_45
    if-eqz v2, :cond_55

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v3

    and-int/2addr v3, v10

    if-eq v3, v4, :cond_84

    move-object v1, v2

    :goto_4f
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v2

    move v4, v3

    goto :goto_45

    :cond_55
    invoke-virtual {v9, v4, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move-object v3, v0

    move v2, v5

    :goto_5a
    if-eq v3, v1, :cond_3f

    invoke-interface {v3}, Lcom/google/b/b/am;->c()I

    move-result v0

    and-int v4, v0, v10

    invoke-virtual {v9, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    invoke-direct {p0, v3, v0}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    if-eqz v0, :cond_79

    invoke-virtual {v9, v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    move v0, v2

    :goto_72
    invoke-interface {v3}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v2

    move-object v3, v2

    move v2, v0

    goto :goto_5a

    :cond_79
    invoke-direct {p0, v3}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;)V

    add-int/lit8 v0, v2, -0x1

    goto :goto_72

    :cond_7f
    iput-object v9, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput v5, p0, Lcom/google/b/b/an;->b:I

    goto :goto_a

    :cond_84
    move v3, v4

    goto :goto_4f

    :cond_86
    move v2, v5

    goto :goto_3f
.end method


# virtual methods
.method final a(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/google/b/b/an;->b:I

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v1}, Lcom/google/b/a/v;->a()J

    move-result-wide v2

    invoke-direct {p0, p1, p2, v2, v3}, Lcom/google/b/b/an;->a(Ljava/lang/Object;IJ)Lcom/google/b/b/am;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_6b

    move-result-object v4

    if-nez v4, :cond_17

    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    :goto_16
    return-object v0

    :cond_17
    :try_start_17
    invoke-interface {v4}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_64

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v0}, Lcom/google/b/b/n;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v4, v2, v3}, Lcom/google/b/b/am;->a(J)V

    :cond_2c
    iget-object v0, p0, Lcom/google/b/b/an;->j:Ljava/util/Queue;

    invoke-interface {v0, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v5, v5, Lcom/google/b/b/n;->u:Lcom/google/b/b/k;

    iget-object v6, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    invoke-virtual {v6}, Lcom/google/b/b/n;->e()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v4}, Lcom/google/b/b/am;->h()J

    move-result-wide v6

    sub-long/2addr v2, v6

    iget-object v6, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-wide v6, v6, Lcom/google/b/b/n;->o:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_62

    invoke-interface {v4}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/b/b/ba;->c()Z

    move-result v2

    if-nez v2, :cond_62

    invoke-direct {p0, v0, p2, v5}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/k;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_6b

    move-result-object v0

    if-eqz v0, :cond_62

    :goto_5e
    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    goto :goto_16

    :cond_62
    move-object v0, v1

    goto :goto_5e

    :cond_64
    :try_start_64
    invoke-virtual {p0}, Lcom/google/b/b/an;->a()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_6b

    :cond_67
    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    goto :goto_16

    :catchall_6b
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILcom/google/b/b/aj;Lcom/google/b/f/a/l;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lcom/google/b/b/aj",
            "<TK;TV;>;",
            "Lcom/google/b/f/a/l",
            "<TV;>;)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p4}, Lcom/google/b/f/a/s;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    new-instance v0, Lcom/google/b/b/l;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CacheLoader returned null for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/b/b/l;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/google/b/b/an;->n:Lcom/google/b/b/c;

    invoke-virtual {p3}, Lcom/google/b/b/aj;->e()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/google/b/b/c;->b(J)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/aj;)Z

    :cond_31
    throw v0

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/b/b/an;->n:Lcom/google/b/b/c;

    invoke-virtual {p3}, Lcom/google/b/b/aj;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/b/b/c;->a(J)V

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/aj;Ljava/lang/Object;)Z
    :try_end_3e
    .catchall {:try_start_32 .. :try_end_3e} :catchall_22

    if-nez v1, :cond_4c

    iget-object v0, p0, Lcom/google/b/b/an;->n:Lcom/google/b/b/c;

    invoke-virtual {p3}, Lcom/google/b/b/aj;->e()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/google/b/b/c;->b(J)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/aj;)Z

    :cond_4c
    return-object v1
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/google/b/b/an;->c(J)V

    iget-object v9, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_20
    if-eqz v2, :cond_85

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v0

    if-ne v0, p2, :cond_80

    if-eqz v3, :cond_80

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v0, p1, v3}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    invoke-interface {v4}, Lcom/google/b/b/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/google/b/b/an;->b:I

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_8d

    :cond_60
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v6

    :goto_67
    return-object v0

    :cond_68
    :try_start_68
    iget v1, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/b/an;->d:I

    sget-object v1, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    invoke-direct {p0, p1, v4, v1}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    invoke-direct {p0, v2, p3, v7, v8}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_79
    .catchall {:try_start_68 .. :try_end_79} :catchall_8d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_67

    :cond_80
    :try_start_80
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_8d

    move-result-object v2

    goto :goto_20

    :cond_85
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v6

    goto :goto_67

    :catchall_8d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/google/b/b/an;->c(J)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/google/b/b/an;->e:I

    if-le v0, v2, :cond_1c

    invoke-direct {p0}, Lcom/google/b/b/an;->g()V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    :cond_1c
    iget-object v5, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v6, p2, v0

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/am;

    move-object v2, v0

    :goto_2d
    if-eqz v2, :cond_a3

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v8

    if-ne v8, p2, :cond_9e

    if-eqz v7, :cond_9e

    iget-object v8, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v8, v8, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v8, p1, v7}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9e

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_7a

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    invoke-interface {v5}, Lcom/google/b/b/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_72

    sget-object v0, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    invoke-direct {p0, p1, v5, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    invoke-direct {p0, v2, p3, v3, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    :goto_65
    iput v0, p0, Lcom/google/b/b/an;->b:I

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_6a
    .catchall {:try_start_4 .. :try_end_6a} :catchall_c4

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v1

    :goto_71
    return-object v0

    :cond_72
    :try_start_72
    invoke-direct {p0, v2, p3, v3, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_7a
    if-eqz p4, :cond_86

    invoke-direct {p0, v2, v3, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;J)V
    :try_end_7f
    .catchall {:try_start_72 .. :try_end_7f} :catchall_c4

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_71

    :cond_86
    :try_start_86
    iget v1, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/b/b/an;->d:I

    sget-object v1, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    invoke-direct {p0, p1, v5, v1}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    invoke-direct {p0, v2, p3, v3, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_97
    .catchall {:try_start_86 .. :try_end_97} :catchall_c4

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_71

    :cond_9e
    :try_start_9e
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;

    move-result-object v2

    goto :goto_2d

    :cond_a3
    iget v2, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/b/b/an;->d:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILcom/google/b/b/am;)Lcom/google/b/b/am;

    move-result-object v0

    invoke-direct {p0, v0, p3, v3, v4}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    invoke-virtual {v5, v6, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->b:I

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_bc
    .catchall {:try_start_9e .. :try_end_bc} :catchall_c4

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v1

    goto :goto_71

    :catchall_c4
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method final a()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/b/b/an;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-direct {p0}, Lcom/google/b/b/an;->d()V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    throw v0
.end method

.method final a(J)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/b/b/an;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_6
    invoke-direct {p0, p1, p2}, Lcom/google/b/b/an;->b(J)V
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_d

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    :cond_c
    return-void

    :catchall_d
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    throw v0
.end method

.method final a(Lcom/google/b/b/am;Lcom/google/b/b/bs;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/b/b/am",
            "<TK;TV;>;",
            "Lcom/google/b/b/bs;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/b/b/am;->c()I

    invoke-interface {p1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    return-void
.end method

.method final a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Lcom/google/b/b/an;->c(J)V

    iget-object v9, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v10, p2, v0

    invoke-virtual {v9, v10}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_20
    if-eqz v2, :cond_9b

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v0

    if-ne v0, p2, :cond_96

    if-eqz v3, :cond_96

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v0, p1, v3}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_68

    invoke-interface {v4}, Lcom/google/b/b/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_60

    iget v0, p0, Lcom/google/b/b/an;->b:I

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9, v10, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I
    :try_end_60
    .catchall {:try_start_4 .. :try_end_60} :catchall_a3

    :cond_60
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v6

    :goto_67
    return v0

    :cond_68
    :try_start_68
    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->h:Lcom/google/b/a/c;

    invoke-virtual {v1, p3, v0}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8b

    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    sget-object v0, Lcom/google/b/b/bs;->b:Lcom/google/b/b/bs;

    invoke-direct {p0, p1, v4, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)V

    invoke-direct {p0, v2, p4, v7, v8}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Ljava/lang/Object;J)V

    invoke-direct {p0}, Lcom/google/b/b/an;->f()V
    :try_end_83
    .catchall {:try_start_68 .. :try_end_83} :catchall_a3

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    const/4 v0, 0x1

    goto :goto_67

    :cond_8b
    :try_start_8b
    invoke-direct {p0, v2, v7, v8}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;J)V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a3

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v6

    goto :goto_67

    :cond_96
    :try_start_96
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a3

    move-result-object v2

    goto :goto_20

    :cond_9b
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v0, v6

    goto :goto_67

    :catchall_a3
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method final b()V
    .registers 3

    iget-object v0, p0, Lcom/google/b/b/an;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    and-int/lit8 v0, v0, 0x3f

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/b/b/an;->c(J)V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    :cond_18
    return-void
.end method

.method final b(Ljava/lang/Object;I)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    iget v1, p0, Lcom/google/b/b/an;->b:I

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v1}, Lcom/google/b/a/v;->a()J

    move-result-wide v1

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/b/b/an;->a(Ljava/lang/Object;IJ)Lcom/google/b/b/am;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2a

    move-result-object v1

    if-nez v1, :cond_17

    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    :goto_16
    return v0

    :cond_17
    :try_start_17
    invoke-interface {v1}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_2a

    move-result-object v1

    if-eqz v1, :cond_22

    const/4 v0, 0x1

    :cond_22
    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    goto :goto_16

    :cond_26
    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    goto :goto_16

    :catchall_2a
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->b()V

    throw v0
.end method

.method final b(Ljava/lang/Object;ILjava/lang/Object;)Z
    .registers 13

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v0}, Lcom/google/b/a/v;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/b/b/an;->c(J)V

    iget v0, p0, Lcom/google/b/b/an;->b:I

    iget-object v7, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    and-int v8, p2, v0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_22
    if-eqz v2, :cond_88

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v0

    if-ne v0, p2, :cond_83

    if-eqz v3, :cond_83

    iget-object v0, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v0, v0, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v0, p1, v3}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v5, v5, Lcom/google/b/b/n;->h:Lcom/google/b/a/c;

    invoke-virtual {v5, p3, v0}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6f

    sget-object v5, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;

    :goto_4e
    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I

    sget-object v0, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;
    :try_end_64
    .catchall {:try_start_4 .. :try_end_64} :catchall_8f

    if-ne v5, v0, :cond_81

    const/4 v0, 0x1

    :goto_67
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move v6, v0

    :goto_6e
    return v6

    :cond_6f
    if-nez v0, :cond_7a

    :try_start_71
    invoke-interface {v4}, Lcom/google/b/b/ba;->d()Z

    move-result v0

    if-eqz v0, :cond_7a

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;
    :try_end_79
    .catchall {:try_start_71 .. :try_end_79} :catchall_8f

    goto :goto_4e

    :cond_7a
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_6e

    :cond_81
    move v0, v6

    goto :goto_67

    :cond_83
    :try_start_83
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_8f

    move-result-object v2

    goto :goto_22

    :cond_88
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_6e

    :catchall_8f
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method final c(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/b/b/an;->lock()V

    :try_start_4
    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v1, v1, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;

    invoke-virtual {v1}, Lcom/google/b/a/v;->a()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/b/b/an;->c(J)V

    iget v1, p0, Lcom/google/b/b/an;->b:I

    iget-object v7, p0, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int v8, p2, v1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/b/b/am;

    move-object v2, v1

    :goto_22
    if-eqz v2, :cond_77

    invoke-interface {v2}, Lcom/google/b/b/am;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Lcom/google/b/b/am;->c()I

    move-result v4

    if-ne v4, p2, :cond_72

    if-eqz v3, :cond_72

    iget-object v4, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    iget-object v4, v4, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;

    invoke-virtual {v4, p1, v3}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v2}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_62

    sget-object v5, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;

    :goto_46
    iget v0, p0, Lcom/google/b/b/an;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/b/b/an;->d:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/am;Ljava/lang/Object;Lcom/google/b/b/ba;Lcom/google/b/b/bs;)Lcom/google/b/b/am;

    move-result-object v0

    iget v1, p0, Lcom/google/b/b/an;->b:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v8, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    iput v1, p0, Lcom/google/b/b/an;->b:I
    :try_end_5a
    .catchall {:try_start_4 .. :try_end_5a} :catchall_7e

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    move-object v0, v6

    :goto_61
    return-object v0

    :cond_62
    :try_start_62
    invoke-interface {v4}, Lcom/google/b/b/ba;->d()Z

    move-result v5

    if-eqz v5, :cond_6b

    sget-object v5, Lcom/google/b/b/bs;->c:Lcom/google/b/b/bs;
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_7e

    goto :goto_46

    :cond_6b
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_61

    :cond_72
    :try_start_72
    invoke-interface {v2}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_7e

    move-result-object v2

    goto :goto_22

    :cond_77
    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    goto :goto_61

    :catchall_7e
    move-exception v0

    invoke-virtual {p0}, Lcom/google/b/b/an;->unlock()V

    invoke-virtual {p0}, Lcom/google/b/b/an;->c()V

    throw v0
.end method

.method final c()V
    .registers 6

    invoke-virtual {p0}, Lcom/google/b/b/an;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v1, p0, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;

    :goto_8
    iget-object v0, v1, Lcom/google/b/b/n;->p:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/b/b/bz;

    if-eqz v0, :cond_20

    :try_start_12
    iget-object v0, v1, Lcom/google/b/b/n;->q:Lcom/google/b/b/by;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_14} :catch_15

    goto :goto_8

    :catch_15
    move-exception v0

    sget-object v2, Lcom/google/b/b/n;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_20
    return-void
.end method
