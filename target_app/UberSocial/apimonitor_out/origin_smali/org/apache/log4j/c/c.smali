.class public Lorg/apache/log4j/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[Lorg/apache/log4j/k/k;

.field b:I

.field c:I

.field d:I

.field e:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/apache/log4j/c/c;->b:I

    iput v0, p0, Lorg/apache/log4j/c/c;->c:I

    iput v0, p0, Lorg/apache/log4j/c/c;->d:I

    const/4 v0, 0x1

    if-ge p1, v0, :cond_2c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The maxSize argument ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ") is not a positive integer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2c
    iput p1, p0, Lorg/apache/log4j/c/c;->e:I

    new-array v0, p1, [Lorg/apache/log4j/k/k;

    iput-object v0, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    return-void
.end method


# virtual methods
.method a(II)I
    .registers 3

    if-ge p1, p2, :cond_3

    :goto_2
    return p1

    :cond_3
    move p1, p2

    goto :goto_2
.end method

.method public a()Lorg/apache/log4j/k/k;
    .registers 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/apache/log4j/c/c;->b:I

    if-nez v1, :cond_6

    :goto_5
    return-object v0

    :cond_6
    iget-object v1, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    iget v2, p0, Lorg/apache/log4j/c/c;->c:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    iget v3, p0, Lorg/apache/log4j/c/c;->c:I

    aput-object v0, v2, v3

    iget v0, p0, Lorg/apache/log4j/c/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/c;->c:I

    iget v2, p0, Lorg/apache/log4j/c/c;->e:I

    if-ne v0, v2, :cond_1f

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/c/c;->c:I

    :cond_1f
    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/log4j/c/c;->b:I

    move-object v0, v1

    goto :goto_5
.end method

.method public declared-synchronized a(I)V
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget v1, p0, Lorg/apache/log4j/c/c;->e:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_4e

    if-ne p1, v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    new-array v1, p1, [Lorg/apache/log4j/k/k;

    iget v2, p0, Lorg/apache/log4j/c/c;->e:I

    iget v3, p0, Lorg/apache/log4j/c/c;->c:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2, p1}, Lorg/apache/log4j/c/c;->a(II)I

    move-result v2

    iget v3, p0, Lorg/apache/log4j/c/c;->b:I

    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/c/c;->a(II)I

    move-result v2

    iget-object v3, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    iget v4, p0, Lorg/apache/log4j/c/c;->c:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/apache/log4j/c/c;->b:I

    if-ge v2, v3, :cond_36

    if-ge v2, p1, :cond_36

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    sub-int/2addr v0, v2

    sub-int v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lorg/apache/log4j/c/c;->a(II)I

    move-result v0

    iget-object v3, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    iput-object v1, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    iput p1, p0, Lorg/apache/log4j/c/c;->e:I

    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/log4j/c/c;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/log4j/c/c;->b:I

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    iput v0, p0, Lorg/apache/log4j/c/c;->d:I

    iget v0, p0, Lorg/apache/log4j/c/c;->d:I

    iget v1, p0, Lorg/apache/log4j/c/c;->e:I

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/c/c;->d:I
    :try_end_4d
    .catchall {:try_start_8 .. :try_end_4d} :catchall_4e

    goto :goto_6

    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lorg/apache/log4j/k/k;)V
    .registers 4

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    iget v1, p0, Lorg/apache/log4j/c/c;->e:I

    if-eq v0, v1, :cond_1f

    iget-object v0, p0, Lorg/apache/log4j/c/c;->a:[Lorg/apache/log4j/k/k;

    iget v1, p0, Lorg/apache/log4j/c/c;->d:I

    aput-object p1, v0, v1

    iget v0, p0, Lorg/apache/log4j/c/c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/c;->d:I

    iget v1, p0, Lorg/apache/log4j/c/c;->e:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/log4j/c/c;->d:I

    :cond_19
    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/log4j/c/c;->b:I

    :cond_1f
    return-void
.end method

.method public b()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/c/c;->e:I

    return v0
.end method

.method public c()Z
    .registers 3

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    iget v1, p0, Lorg/apache/log4j/c/c;->e:I

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public d()I
    .registers 2

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    return v0
.end method

.method public e()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lorg/apache/log4j/c/c;->b:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public f()Z
    .registers 3

    iget v0, p0, Lorg/apache/log4j/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/log4j/c/c;->e:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
