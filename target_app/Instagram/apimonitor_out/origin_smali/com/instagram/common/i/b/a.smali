.class public final Lcom/instagram/common/i/b/a;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/instagram/common/i/b/a;->b:I

    iput v0, p0, Lcom/instagram/common/i/b/a;->c:I

    iput v0, p0, Lcom/instagram/common/i/b/a;->d:I

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    return-void
.end method

.method private declared-synchronized d()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized e()Z
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v1, v1
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_d

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    :catchall_d
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
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I

    if-lez v0, :cond_2a

    const/4 v0, 0x1

    :goto_6
    const-string v1, "Underflow"

    invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/instagram/common/i/b/a;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    iget v2, p0, Lcom/instagram/common/i/b/a;->c:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget v1, p0, Lcom/instagram/common/i/b/a;->c:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/instagram/common/i/b/a;->c:I

    iget v1, p0, Lcom/instagram/common/i/b/a;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/instagram/common/i/b/a;->b:I
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2c

    monitor-exit p0

    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_6

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I

    if-gt v0, p1, :cond_e

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_b

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_e
    :try_start_e
    iget v0, p0, Lcom/instagram/common/i/b/a;->c:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    aget-object v0, v1, v0
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_b

    monitor-exit p0

    return-object v0
.end method

.method public final declared-synchronized a(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/instagram/common/i/b/a;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0}, Lcom/instagram/common/i/b/a;->d()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/instagram/common/i/b/a;->a()Ljava/lang/Object;

    :cond_10
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_35

    const/4 v0, 0x1

    :goto_18
    const-string v1, "Overflow"

    invoke-static {v0, v1}, Lcom/instagram/common/i/a/f;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lcom/instagram/common/i/b/a;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lcom/instagram/common/i/b/a;->d:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/instagram/common/i/b/a;->d:I

    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/instagram/common/i/b/a;->b:I
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_37

    monitor-exit p0

    return-void

    :cond_35
    const/4 v0, 0x0

    goto :goto_18

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/instagram/common/i/b/a;->b:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .registers 4

    const/4 v0, 0x0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/instagram/common/i/b/a;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/instagram/common/i/b/a;->c:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/instagram/common/i/b/a;->d:I

    :goto_b
    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/instagram/common/i/b/a;->a:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
