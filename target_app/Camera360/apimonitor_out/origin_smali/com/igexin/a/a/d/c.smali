.class public Lcom/igexin/a/a/d/c;
.super Ljava/lang/Object;


# static fields
.field static final synthetic h:Z


# instance fields
.field final transient a:Ljava/util/concurrent/locks/ReentrantLock;

.field final transient b:Ljava/util/concurrent/locks/Condition;

.field final c:Ljava/util/TreeSet;

.field final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field e:I

.field f:Lcom/igexin/a/a/d/e;

.field public final g:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/igexin/a/a/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/igexin/a/a/d/c;->h:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljava/util/Comparator;Lcom/igexin/a/a/d/e;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    iput-object p2, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    return-void
.end method

.method private e()Lcom/igexin/a/a/d/d;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    iget-object v2, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object v0, v1

    goto :goto_7
.end method


# virtual methods
.method public final a(Lcom/igexin/a/a/d/d;JLjava/util/concurrent/TimeUnit;)I
    .registers 11

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_31

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :goto_11
    return v0

    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p2, p3, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {p0, p1}, Lcom/igexin/a/a/d/c;->a(Lcom/igexin/a/a/d/d;)Z
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_31

    move-result v0

    if-eqz v0, :cond_2f

    const/4 v0, 0x1

    :goto_2b
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_11

    :cond_2f
    const/4 v0, -0x2

    goto :goto_2b

    :catchall_31
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method a()Lcom/igexin/a/a/d/d;
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/a/d/d;
    :try_end_8
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public final a(Lcom/igexin/a/a/d/d;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v0

    :cond_4
    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_9
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v2

    iget v3, p0, Lcom/igexin/a/a/d/c;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/igexin/a/a/d/c;->e:I

    iput v3, p1, Lcom/igexin/a/a/d/d;->H:I

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v3, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    iget v2, p1, Lcom/igexin/a/a/d/d;->H:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p1, Lcom/igexin/a/a/d/d;->H:I
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_23} :catch_42

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :cond_27
    :try_start_27
    invoke-virtual {p1}, Lcom/igexin/a/a/d/d;->n()V

    if-eqz v2, :cond_38

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3d

    :cond_38
    iget-object v2, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_3d
    .catchall {:try_start_27 .. :try_end_3d} :catchall_4d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_42

    :cond_3d
    const/4 v0, 0x1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catch_42
    move-exception v2

    :try_start_43
    const-string/jumbo v2, "ScheduleQueue|offer|error"

    invoke-static {v2}, Lcom/igexin/a/a/c/a;->a(Ljava/lang/String;)V
    :try_end_49
    .catchall {:try_start_43 .. :try_end_49} :catchall_4d

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_3

    :catchall_4d
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method final b()Z
    .registers 3

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    move-result v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v0

    :catchall_f
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public final c()Lcom/igexin/a/a/d/d;
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/igexin/a/a/d/c;->a:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lockInterruptibly()V

    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->a()Lcom/igexin/a/a/d/d;

    move-result-object v4

    if-nez v4, :cond_21

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/igexin/a/a/d/c;->e:I

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_1c

    goto :goto_7

    :catchall_1c
    move-exception v0

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_21
    :try_start_21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v0}, Lcom/igexin/a/a/d/d;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    iget-boolean v0, v4, Lcom/igexin/a/a/d/d;->x:Z

    if-nez v0, :cond_2f

    iget-boolean v0, v4, Lcom/igexin/a/a/d/d;->y:Z

    if-eqz v0, :cond_48

    :cond_2f
    move v0, v2

    :goto_30
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-lez v7, :cond_38

    if-eqz v0, :cond_60

    :cond_38
    invoke-direct {p0}, Lcom/igexin/a/a/d/c;->e()Lcom/igexin/a/a/d/d;

    move-result-object v0

    sget-boolean v1, Lcom/igexin/a/a/d/c;->h:Z

    if-nez v1, :cond_4a

    if-nez v0, :cond_4a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_48
    move v0, v1

    goto :goto_30

    :cond_4a
    invoke-virtual {p0}, Lcom/igexin/a/a/d/c;->b()Z

    move-result v1

    if-nez v1, :cond_55

    iget-object v1, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    :cond_55
    iget-object v1, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_1c

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-wide v7, v4, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    iget-boolean v0, v0, Lcom/igexin/a/a/d/e;->y:Z

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->f:Lcom/igexin/a/a/d/e;

    iget-wide v7, v4, Lcom/igexin/a/a/d/d;->G:J

    invoke-virtual {v0, v7, v8}, Lcom/igexin/a/a/d/e;->a(J)V

    :cond_74
    iget-object v0, p0, Lcom/igexin/a/a/d/c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0, v5, v6}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J
    :try_end_79
    .catchall {:try_start_60 .. :try_end_79} :catchall_1c

    goto :goto_7
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/igexin/a/a/d/c;->c:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    return-void
.end method
