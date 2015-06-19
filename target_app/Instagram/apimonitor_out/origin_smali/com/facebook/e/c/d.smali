.class final Lcom/facebook/e/c/d;
.super Ljava/lang/Object;
.source "ThreadTrace.java"


# static fields
.field static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/facebook/e/c/d;",
            ">;"
        }
    .end annotation
.end field

.field static b:I

.field private static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final e:Landroid/support/v4/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/c/d",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:[Lcom/facebook/e/c/g;

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/facebook/e/c/e;

    invoke-direct {v0}, Lcom/facebook/e/c/e;-><init>()V

    sput-object v0, Lcom/facebook/e/c/d;->a:Ljava/lang/ThreadLocal;

    const/4 v0, -0x1

    sput v0, Lcom/facebook/e/c/d;->b:I

    new-instance v0, Lcom/facebook/e/c/f;

    invoke-direct {v0}, Lcom/facebook/e/c/f;-><init>()V

    sput-object v0, Lcom/facebook/e/c/d;->c:Ljava/util/Comparator;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/c/d;

    invoke-direct {v0}, Landroid/support/v4/c/d;-><init>()V

    iput-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    const/16 v0, 0x64

    new-array v0, v0, [Lcom/facebook/e/c/g;

    iput-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    return-void
.end method

.method private a(J)I
    .registers 14

    const/4 v10, 0x0

    const/4 v0, 0x0

    const/16 v1, 0xa

    new-array v1, v1, [I

    move-object v2, v1

    move v3, v0

    move v1, v0

    :goto_9
    iget v4, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v4, :cond_66

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2d

    invoke-virtual {v4}, Lcom/facebook/e/c/g;->c()I

    move-result v5

    sget v6, Lcom/facebook/e/c/i;->a:I

    if-ne v5, v6, :cond_30

    array-length v4, v2

    if-lt v1, v4, :cond_29

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    :cond_29
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2d
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_30
    invoke-virtual {v4}, Lcom/facebook/e/c/g;->c()I

    move-result v5

    sget v6, Lcom/facebook/e/c/i;->b:I

    if-ne v5, v6, :cond_2d

    add-int/lit8 v5, v1, -0x1

    aget v5, v2, v5

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v6

    invoke-virtual {v4}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v6, v6, p1

    if-gtz v6, :cond_2d

    iget-object v6, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v6, v6, v5

    invoke-virtual {v4}, Lcom/facebook/e/c/g;->a()V

    invoke-virtual {v6}, Lcom/facebook/e/c/g;->a()V

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v10, v4, v0

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v10, v4, v5

    iget v4, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x2

    goto :goto_2d

    :cond_66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    return v3
.end method

.method private a(Lcom/facebook/e/c/g;)V
    .registers 5

    iget v0, p0, Lcom/facebook/e/c/d;->h:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-le v0, v1, :cond_b

    invoke-direct {p0}, Lcom/facebook/e/c/d;->g()V

    :cond_b
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    array-length v1, v1

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/e/c/g;

    iput-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    :cond_23
    iget-object v0, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/e/c/d;->g:I

    aput-object p1, v0, v1

    return-void
.end method

.method private b(I)J
    .registers 8

    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    const/16 v1, 0x5dc

    if-gt v0, v1, :cond_b

    const-wide/16 v0, -0x1

    :cond_a
    :goto_a
    return-wide v0

    :cond_b
    new-instance v1, Ljava/util/PriorityQueue;

    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    div-int/lit8 v0, v0, 0x2

    sget-object v2, Lcom/facebook/e/c/d;->c:Ljava/util/Comparator;

    invoke-direct {v1, v0, v2}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_17
    iget v2, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v2, :cond_2f

    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2c

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->c()I

    move-result v3

    sget v4, Lcom/facebook/e/c/i;->b:I

    if-ne v3, v4, :cond_2c

    invoke-virtual {v1, v2}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_2f
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    add-int/lit16 v2, v0, -0x5dc

    invoke-virtual {v1}, Ljava/util/PriorityQueue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v0, 0x0

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    if-lez v2, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/g;

    invoke-virtual {v0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/facebook/e/c/g;->e()J

    move-result-wide v0

    sub-long v0, v4, v0

    add-int/lit8 v2, v2, -0x2

    goto :goto_3b

    :cond_56
    if-lez v2, :cond_a

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_a
.end method

.method private b()V
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    :goto_2
    iget v2, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v2, v2, v0

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->c()I

    move-result v3

    sget v4, Lcom/facebook/e/c/i;->a:I

    if-ne v3, v4, :cond_1d

    iget-object v3, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v2}, Lcom/facebook/e/c/g;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/c/d;->b(I)V

    :cond_1d
    invoke-virtual {v2}, Lcom/facebook/e/c/g;->a()V

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_23
    iput v1, p0, Lcom/facebook/e/c/d;->g:I

    iput v1, p0, Lcom/facebook/e/c/d;->h:I

    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0}, Landroid/support/v4/c/d;->b()V

    return-void
.end method

.method private c(I)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()I

    move-result v2

    sget v3, Lcom/facebook/e/c/i;->a:I

    if-ne v2, v3, :cond_1a

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v1

    if-ne v1, p1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    const/4 v0, -0x1

    goto :goto_19
.end method

.method private c()V
    .registers 11

    const/16 v5, 0x7d0

    const/4 v1, 0x0

    const-wide/32 v8, 0xf4240

    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v2

    :try_start_a
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_7c

    move-result v0

    if-gt v0, v5, :cond_2f

    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v0, v6, v8

    if-lez v0, :cond_2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v0, v4, v2

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    :try_start_2f
    invoke-direct {p0}, Lcom/facebook/e/c/d;->d()I

    move-result v0

    add-int/lit8 v1, v0, 0x0

    invoke-direct {p0}, Lcom/facebook/e/c/d;->e()I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    const/16 v4, 0x5dc

    if-le v0, v4, :cond_47

    invoke-direct {p0}, Lcom/facebook/e/c/d;->f()I

    move-result v0

    add-int/2addr v1, v0

    :cond_47
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v0

    if-le v0, v5, :cond_78

    const-string v0, "ThreadTrace"

    const-string v4, "Resetting because hit couldn\'t get under hard limit after normal pruning"

    invoke-static {v0, v4}, Lcom/facebook/e/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/facebook/e/c/d;->b()V
    :try_end_57
    .catchall {:try_start_2f .. :try_end_57} :catchall_7c

    :goto_57
    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v0, v6, v8

    if-gtz v0, :cond_63

    if-lez v1, :cond_2e

    :cond_63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v0, v4, v2

    div-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    goto :goto_2e

    :cond_78
    :try_start_78
    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_57

    :catchall_7c
    move-exception v0

    invoke-static {}, Lcom/facebook/e/c/n;->b()J

    move-result-wide v4

    sub-long v6, v4, v2

    cmp-long v6, v6, v8

    if-gtz v6, :cond_89

    if-lez v1, :cond_9d

    :cond_89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    sub-long v1, v4, v2

    div-long/2addr v1, v8

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    :cond_9d
    throw v0
.end method

.method private d()I
    .registers 11

    const/4 v1, 0x0

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v4

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_8
    iget v6, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v6, :cond_38

    iget-object v6, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v6, v6, v0

    if-eqz v6, :cond_2e

    invoke-virtual {v6}, Lcom/facebook/e/c/g;->c()I

    move-result v7

    sget v8, Lcom/facebook/e/c/i;->a:I

    if-ne v7, v8, :cond_31

    add-int/lit8 v3, v3, 0x1

    :cond_1c
    :goto_1c
    invoke-virtual {v6}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide v8, 0x29e8d60800L

    cmp-long v6, v6, v8

    if-ltz v6, :cond_38

    if-nez v3, :cond_2e

    move v2, v0

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_31
    sget v8, Lcom/facebook/e/c/i;->b:I

    if-ne v7, v8, :cond_1c

    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    :cond_38
    if-lez v2, :cond_58

    move v0, v1

    :goto_3b
    add-int/lit8 v3, v2, 0x1

    if-ge v1, v3, :cond_59

    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v1

    if-eqz v3, :cond_55

    invoke-virtual {v3}, Lcom/facebook/e/c/g;->a()V

    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v0, v0, 0x1

    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_3b

    :cond_58
    move v0, v1

    :cond_59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    return v0
.end method

.method private d(I)I
    .registers 6

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v1, :cond_1d

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->c()I

    move-result v2

    sget v3, Lcom/facebook/e/c/i;->b:I

    if-ne v2, v3, :cond_1a

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v1

    if-ne v1, p1, :cond_1a

    :goto_19
    return v0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1d
    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v0, v0, -0x1

    goto :goto_19
.end method

.method private e()I
    .registers 5

    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->b(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    invoke-direct {p0, v0, v1}, Lcom/facebook/e/c/d;->a(J)I

    move-result v0

    goto :goto_d
.end method

.method private f()I
    .registers 7

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/facebook/e/c/d;->h()I

    move-result v1

    add-int/lit16 v1, v1, -0x5dc

    move v2, v0

    :goto_8
    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v0, v3, :cond_31

    if-lez v1, :cond_31

    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v0

    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Lcom/facebook/e/c/g;->c()I

    move-result v4

    sget v5, Lcom/facebook/e/c/i;->e:I

    if-ne v4, v5, :cond_2e

    invoke-virtual {v3}, Lcom/facebook/e/c/g;->a()V

    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v4, 0x0

    aput-object v4, v3, v0

    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, -0x1

    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    return v2
.end method

.method private g()V
    .registers 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_3
    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    if-ge v2, v3, :cond_16

    iget-object v3, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v3, v3, v2

    if-eqz v3, :cond_13

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_16
    iput v0, p0, Lcom/facebook/e/c/d;->g:I

    iput v1, p0, Lcom/facebook/e/c/d;->h:I

    return-void
.end method

.method private h()I
    .registers 3

    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    iget v1, p0, Lcom/facebook/e/c/d;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private static i()I
    .registers 2

    sget-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    :goto_6
    sget v1, Lcom/facebook/e/c/d;->b:I

    if-eq v0, v1, :cond_c

    if-nez v0, :cond_13

    :cond_c
    sget-object v0, Lcom/facebook/e/c/d;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    goto :goto_6

    :cond_13
    return v0
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;Z)I
    .registers 7

    invoke-direct {p0}, Lcom/facebook/e/c/d;->c()V

    invoke-static {}, Lcom/facebook/e/c/d;->i()I

    move-result v0

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/e/c/g;->a(ILjava/lang/String;Ljava/lang/String;Z)Lcom/facebook/e/c/g;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    iget-object v2, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/c/d;->b(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->b()I

    move-result v0

    return v0
.end method

.method final a()J
    .registers 3

    iget v0, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v0, v0, -0x1

    :goto_4
    if-ltz v0, :cond_14

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v1, v1, v0

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v0

    :goto_10
    return-wide v0

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_14
    const-wide/16 v0, -0x1

    goto :goto_10
.end method

.method final a(IJZ)J
    .registers 11

    invoke-static {}, Lcom/facebook/e/c/n;->a()J

    move-result-wide v1

    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0, p1}, Landroid/support/v4/c/d;->f(I)I

    move-result v3

    if-gez v3, :cond_f

    const-wide/16 v0, -0x1

    :goto_e
    return-wide v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v0, v3}, Landroid/support/v4/c/d;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/e/c/g;

    iget-object v4, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-virtual {v4, v3}, Landroid/support/v4/c/d;->c(I)V

    invoke-virtual {v0}, Lcom/facebook/e/c/g;->f()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x2dc6c0

    cmp-long v3, v1, v3

    if-gez v3, :cond_47

    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    add-int/lit8 v3, v3, -0x1

    :goto_2c
    if-ltz v3, :cond_42

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    aget-object v4, v4, v3

    if-ne v4, v0, :cond_44

    iget-object v4, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    iget v3, p0, Lcom/facebook/e/c/d;->h:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/facebook/e/c/d;->h:I

    invoke-virtual {v0}, Lcom/facebook/e/c/g;->a()V

    :cond_42
    :goto_42
    move-wide v0, v1

    goto :goto_e

    :cond_44
    add-int/lit8 v3, v3, -0x1

    goto :goto_2c

    :cond_47
    invoke-static {v0}, Lcom/facebook/e/c/g;->a(Lcom/facebook/e/c/g;)Lcom/facebook/e/c/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    goto :goto_42
.end method

.method final a(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/e/c/g;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/facebook/e/c/d;->g()V

    invoke-direct {p0, p1}, Lcom/facebook/e/c/d;->c(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    invoke-direct {p0, p1}, Lcom/facebook/e/c/d;->d(I)I

    move-result v1

    iget-object v2, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method final a(IILjava/lang/String;)V
    .registers 8

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/facebook/e/c/d;->f:[Lcom/facebook/e/c/g;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/e/c/d;->g:I

    invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/e/c/d;->e:Landroid/support/v4/c/d;

    invoke-static {p1, v0, p3, v1, v2}, Lcom/facebook/e/c/j;->a(IILjava/lang/String;Ljava/util/List;Landroid/support/v4/c/d;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/facebook/e/c/d;->i()I

    move-result v0

    invoke-static {v0, p1}, Lcom/facebook/e/c/g;->a(ILjava/lang/String;)Lcom/facebook/e/c/g;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/e/c/d;->a(Lcom/facebook/e/c/g;)V

    return-void
.end method
