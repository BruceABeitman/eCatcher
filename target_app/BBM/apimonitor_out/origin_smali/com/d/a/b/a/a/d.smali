.class public Lcom/d/a/b/a/a/d;
.super Ljava/util/AbstractQueue;
.source "LinkedBlockingDeque.java"

# interfaces
.implements Lcom/d/a/b/a/a/a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Lcom/d/a/b/a/a/a",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient a:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field

.field transient b:Lcom/d/a/b/a/a/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/d/a/b/a/a/g",
            "<TE;>;"
        }
    .end annotation
.end field

.field final c:Ljava/util/concurrent/locks/ReentrantLock;

.field private transient d:I

.field private final e:I

.field private final f:Ljava/util/concurrent/locks/Condition;

.field private final g:Ljava/util/concurrent/locks/Condition;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/d/a/b/a/a/d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->f:Ljava/util/concurrent/locks/Condition;

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/d/a/b/a/a/d;->e:I

    return-void
.end method

.method private a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    move-wide v1, v0

    :goto_a
    :try_start_a
    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->b()Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_27

    move-result-object v0

    if-nez v0, :cond_23

    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gtz v0, :cond_1b

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_1a
    return-object v0

    :cond_1b
    :try_start_1b
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_20
    .catchall {:try_start_1b .. :try_end_20} :catchall_27

    move-result-wide v0

    move-wide v1, v0

    goto :goto_a

    :cond_23
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1a

    :catchall_27
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v2, Lcom/d/a/b/a/a/g;

    invoke-direct {v2, p1}, Lcom/d/a/b/a/a/g;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_16
    :try_start_16
    invoke-direct {p0, v2}, Lcom/d/a/b/a/a/d;->b(Lcom/d/a/b/a/a/g;)Z
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_33

    move-result v4

    if-nez v4, :cond_2e

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gtz v4, :cond_27

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    :goto_26
    return v0

    :cond_27
    :try_start_27
    iget-object v4, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v4, v0, v1}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_33

    move-result-wide v0

    goto :goto_16

    :cond_2e
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_26

    :catchall_33
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private b()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    if-nez v2, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v3, v2, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    iget-object v1, v2, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iput-object v0, v2, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iput-object v2, v2, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    iput-object v3, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    if-nez v3, :cond_21

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    :goto_14
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    move-object v0, v1

    goto :goto_5

    :cond_21
    iput-object v0, v3, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    goto :goto_14
.end method

.method private b(Lcom/d/a/b/a/a/g;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget v1, p0, Lcom/d/a/b/a/a/d;->e:I

    if-lt v0, v1, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    iput-object v0, p1, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    iput-object p1, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    if-nez v1, :cond_21

    iput-object p1, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_14
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v0, 0x1

    goto :goto_7

    :cond_21
    iput-object p1, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    goto :goto_14
.end method

.method private b(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Lcom/d/a/b/a/a/g;

    invoke-direct {v0, p1}, Lcom/d/a/b/a/a/g;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_12
    invoke-direct {p0, v0}, Lcom/d/a/b/a/a/d;->b(Lcom/d/a/b/a/a/g;)Z
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_1a

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->b()Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_d

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_d
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method private c(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    iget-object v1, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_b
    if-eqz v1, :cond_20

    iget-object v3, v1, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {p0, v1}, Lcom/d/a/b/a/a/d;->a(Lcom/d/a/b/a/a/g;)V
    :try_end_18
    .catchall {:try_start_9 .. :try_end_18} :catchall_24

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_1d
    :try_start_1d
    iget-object v1, v1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_24

    goto :goto_b

    :cond_20
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_24
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private d()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_5
    :try_start_5
    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->b()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_11

    goto :goto_5

    :catchall_11
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_16
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0
.end method

.method private e()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_13

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_e
    :try_start_e
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    iget-object v0, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_13

    goto :goto_a

    :catchall_13
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method

.method final a(Lcom/d/a/b/a/a/g;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/d/a/b/a/a/g",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    iget-object v1, p1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->b()Ljava/lang/Object;

    :cond_a
    :goto_a
    return-void

    :cond_b
    if-nez v1, :cond_2e

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    if-eqz v0, :cond_a

    iget-object v1, v0, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    iget-object v2, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iput-object v3, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iput-object v0, v0, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    iput-object v1, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    if-nez v1, :cond_2b

    iput-object v3, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_1f
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_a

    :cond_2b
    iput-object v3, v1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    goto :goto_1f

    :cond_2e
    iput-object v1, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    iput-object v0, v1, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    iput-object v3, p1, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    goto :goto_a
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Lcom/d/a/b/a/a/g;

    invoke-direct {v0, p1}, Lcom/d/a/b/a/a/g;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_12
    iget v2, p0, Lcom/d/a/b/a/a/d;->d:I

    iget v3, p0, Lcom/d/a/b/a/a/d;->e:I
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_39

    if-lt v2, v3, :cond_1d

    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :cond_1d
    :try_start_1d
    iget-object v2, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    iput-object v2, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    if-nez v3, :cond_36

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    :goto_29
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    const/4 v0, 0x1

    goto :goto_19

    :cond_36
    iput-object v0, v2, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;
    :try_end_38
    .catchall {:try_start_1d .. :try_end_38} :catchall_39

    goto :goto_29

    :catchall_39
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/d/a/b/a/a/d;->b(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Deque full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .registers 5

    iget-object v2, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_7
    if-eqz v0, :cond_16

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    iget-object v1, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/d/a/b/a/a/g;->b:Lcom/d/a/b/a/a/g;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    move-object v0, v1

    goto :goto_7

    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->b:Lcom/d/a/b/a/a/g;

    iput-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    const/4 v0, 0x0

    iput v0, p0, Lcom/d/a/b/a/a/d;->d:I

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_23
    .catchall {:try_start_5 .. :try_end_23} :catchall_27

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_27
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v2, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    iget-object v1, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_b
    if-eqz v1, :cond_1d

    iget-object v3, v1, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_21

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    goto :goto_3

    :cond_1a
    :try_start_1a
    iget-object v1, v1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_21

    goto :goto_b

    :cond_1d
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_21
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;)I"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/d/a/b/a/a/d;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-TE;>;I)I"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    if-ne p1, p0, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_10
    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_15
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v0, 0x0

    :goto_1c
    if-ge v0, v2, :cond_2b

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    iget-object v3, v3, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->b()Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_15 .. :try_end_28} :catchall_2f

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_2f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->e()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/d/a/b/a/a/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/d/a/b/a/a/f;-><init>(Lcom/d/a/b/a/a/d;B)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/d/a/b/a/a/d;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/d/a/b/a/a/d;->a(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TE;"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/d/a/b/a/a/d;->a(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_8
    new-instance v0, Lcom/d/a/b/a/a/g;

    invoke-direct {v0, p1}, Lcom/d/a/b/a/a/g;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :goto_12
    :try_start_12
    invoke-direct {p0, v0}, Lcom/d/a/b/a/a/d;->b(Lcom/d/a/b/a/a/g;)Z

    move-result v2

    if-nez v2, :cond_23

    iget-object v2, p0, Lcom/d/a/b/a/a/d;->g:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1e

    goto :goto_12

    :catchall_1e
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_23
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void
.end method

.method public remainingCapacity()I
    .registers 4

    iget-object v1, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/d/a/b/a/a/d;->e:I

    iget v2, p0, Lcom/d/a/b/a/a/d;->d:I
    :try_end_9
    .catchall {:try_start_5 .. :try_end_9} :catchall_e

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_e
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/d/a/b/a/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/d/a/b/a/a/d;->c(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v1, p0, Lcom/d/a/b/a/a/d;->d:I
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_b

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v1

    :catchall_b
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/d/a/b/a/a/d;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget v0, p0, Lcom/d/a/b/a/a/d;->d:I

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_c
    if-eqz v0, :cond_18

    add-int/lit8 v2, v1, 0x1

    iget-object v5, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    aput-object v5, v4, v1

    iget-object v0, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_1c

    move v1, v2

    goto :goto_c

    :cond_18
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v4

    :catchall_1c
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v3, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    array-length v0, p1

    iget v1, p0, Lcom/d/a/b/a/a/d;->d:I

    if-ge v0, v1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lcom/d/a/b/a/a/d;->d:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    :cond_1d
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    :goto_20
    if-eqz v0, :cond_2c

    add-int/lit8 v2, v1, 0x1

    iget-object v4, v0, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    aput-object v4, p1, v1

    iget-object v0, v0, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    move v1, v2

    goto :goto_20

    :cond_2c
    array-length v0, p1

    if-le v0, v1, :cond_32

    const/4 v0, 0x0

    aput-object v0, p1, v1
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_36

    :cond_32
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_36
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v2, p0, Lcom/d/a/b/a/a/d;->c:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/d/a/b/a/a/d;->a:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_f

    const-string v0, "[]"
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_42

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v1, v0

    :goto_1a
    iget-object v0, v1, Lcom/d/a/b/a/a/g;->a:Ljava/lang/Object;

    if-ne v0, p0, :cond_20

    const-string v0, "(this Collection)"

    :cond_20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/d/a/b/a/a/g;->c:Lcom/d/a/b/a/a/g;

    if-nez v0, :cond_35

    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_42

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_e

    :cond_35
    const/16 v1, 0x2c

    :try_start_37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_40
    .catchall {:try_start_37 .. :try_end_40} :catchall_42

    move-object v1, v0

    goto :goto_1a

    :catchall_42
    move-exception v0

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
