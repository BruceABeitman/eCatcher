.class public Lcom/facebook/d/e/a;
.super Ljava/lang/Object;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:Lcom/facebook/d/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/d/e/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final g:Lcom/facebook/d/f/a;

.field private final h:J

.field private i:J

.field private j:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/d/e/a;

    sput-object v0, Lcom/facebook/d/e/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;IIIJLcom/facebook/d/e/b;Lcom/facebook/d/f/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;IIIJ",
            "Lcom/facebook/d/e/b",
            "<TT;>;",
            "Lcom/facebook/d/f/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/d/e/a;->b:Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/d/e/a;->c:I

    iget v0, p0, Lcom/facebook/d/e/a;->c:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/d/e/a;->d:I

    const/4 v0, 0x1

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/d/e/a;->e:I

    iput-wide p5, p0, Lcom/facebook/d/e/a;->h:J

    iput-object p7, p0, Lcom/facebook/d/e/a;->f:Lcom/facebook/d/e/b;

    iput-object p8, p0, Lcom/facebook/d/e/a;->g:Lcom/facebook/d/f/a;

    iget-object v0, p0, Lcom/facebook/d/e/a;->b:Ljava/lang/Class;

    iget v1, p0, Lcom/facebook/d/e/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    return-void
.end method

.method private a(I)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/d/e/a;->b:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    array-length v2, v2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    iget v0, p0, Lcom/facebook/d/e/a;->k:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/facebook/d/e/a;->k:I

    return-void
.end method

.method static synthetic b()Ljava/lang/Class;
    .registers 1

    sget-object v0, Lcom/facebook/d/e/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method private declared-synchronized c()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d/e/a;->g:Lcom/facebook/d/f/a;

    invoke-interface {v0}, Lcom/facebook/d/f/a;->now()J

    move-result-wide v0

    iget v2, p0, Lcom/facebook/d/e/a;->k:I

    iget v3, p0, Lcom/facebook/d/e/a;->e:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_11

    iput-wide v0, p0, Lcom/facebook/d/e/a;->i:J

    :cond_11
    iget-wide v2, p0, Lcom/facebook/d/e/a;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/facebook/d/e/a;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1f

    sget-object v0, Lcom/facebook/d/e/a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/facebook/d/e/a;->d()V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_21

    :cond_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/facebook/d/e/a;->e:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/facebook/d/e/a;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    array-length v1, v1

    if-eq v0, v1, :cond_15

    invoke-direct {p0, v0}, Lcom/facebook/d/e/a;->a(I)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/facebook/d/e/a;->k:I

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/facebook/d/e/a;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/facebook/d/e/a;->k:I

    iget-object v0, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/d/e/a;->k:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    iget v2, p0, Lcom/facebook/d/e/a;->k:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    :goto_18
    iget-object v1, p0, Lcom/facebook/d/e/a;->f:Lcom/facebook/d/e/b;
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_23

    monitor-exit p0

    return-object v0

    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/facebook/d/e/a;->f:Lcom/facebook/d/e/b;

    invoke-interface {v0}, Lcom/facebook/d/e/b;->a()Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_23

    move-result-object v0

    goto :goto_18

    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/facebook/d/e/a;->c()V

    iget-object v0, p0, Lcom/facebook/d/e/a;->f:Lcom/facebook/d/e/b;

    invoke-interface {v0, p1}, Lcom/facebook/d/e/b;->a(Ljava/lang/Object;)V

    iget v0, p0, Lcom/facebook/d/e/a;->k:I

    iget v1, p0, Lcom/facebook/d/e/a;->d:I

    if-ge v0, v1, :cond_31

    iget v0, p0, Lcom/facebook/d/e/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    array-length v1, v1

    if-le v0, v1, :cond_27

    iget v0, p0, Lcom/facebook/d/e/a;->d:I

    iget-object v1, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    array-length v1, v1

    iget v2, p0, Lcom/facebook/d/e/a;->e:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/d/e/a;->a(I)V

    :cond_27
    iget-object v0, p0, Lcom/facebook/d/e/a;->j:[Ljava/lang/Object;

    iget v1, p0, Lcom/facebook/d/e/a;->k:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/d/e/a;->k:I

    aput-object p1, v0, v1
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_33

    :cond_31
    monitor-exit p0

    return-void

    :catchall_33
    move-exception v0

    monitor-exit p0

    throw v0
.end method
