.class final Lcom/squareup/okhttp/internal/spdy/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/c;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/a/b;

.field private final b:Z

.field private final c:Lcom/squareup/okhttp/internal/a/i;

.field private final d:Lcom/squareup/okhttp/internal/spdy/g;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/b;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Z

    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/g;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/g;-><init>(Lcom/squareup/okhttp/internal/a/i;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/g;

    return-void
.end method

.method private a(IBBI)V
    .registers 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x3fff

    if-le p1, v0, :cond_15

    const-string v0, "FRAME_SIZE_ERROR length > 16383: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_15
    const/high16 v0, -0x8000

    and-int/2addr v0, p4

    if-eqz v0, :cond_29

    const-string v0, "reserved bit set: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_29
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    and-int/lit16 v1, p1, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p3, 0xff

    or-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, 0x7fffffff

    and-int/2addr v1, p4

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->b:Z
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_d

    if-nez v0, :cond_16

    :goto_14
    monitor-exit p0

    return-void

    :cond_16
    :try_start_16
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/h;->a()Lcom/squareup/okhttp/internal/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/d;->f()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a([B)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_28
    .catchall {:try_start_16 .. :try_end_28} :catchall_d

    goto :goto_14
.end method

.method public final declared-synchronized a(IJ)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_1d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-lez v0, :cond_2e

    :cond_1d
    :try_start_1d
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_2e
    const/4 v0, 0x4

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_40
    .catchall {:try_start_1d .. :try_end_40} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1b
    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_2d
    .catchall {:try_start_10 .. :try_end_2d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .registers 8

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1f

    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/h;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    :cond_1f
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->httpCode:I

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    array-length v0, p3

    if-lez v0, :cond_3c

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p3}, Lcom/squareup/okhttp/internal/a/b;->a([B)Lcom/squareup/okhttp/internal/a/b;

    :cond_3c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_41
    .catchall {:try_start_10 .. :try_end_41} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/squareup/okhttp/internal/spdy/q;)V
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    :try_start_11
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/q;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    :goto_1d
    const/16 v1, 0xa

    if-ge v0, v1, :cond_3c

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    const v2, 0xffffff

    and-int/2addr v2, v0

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_3c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_41
    .catchall {:try_start_11 .. :try_end_41} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZII)V
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    const/16 v1, 0x8

    const/4 v2, 0x6

    const/4 v3, 0x0

    :try_start_18
    invoke-direct {p0, v1, v2, v0, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p3}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_2a
    .catchall {:try_start_18 .. :try_end_2a} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILcom/squareup/okhttp/internal/a/i;I)V
    .registers 8

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v1, :cond_11

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_11
    if-eqz p1, :cond_14

    const/4 v0, 0x1

    :cond_14
    const/4 v1, 0x0

    :try_start_15
    invoke-direct {p0, p4, v1, v0, p2}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    if-lez p4, :cond_20

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V
    :try_end_20
    .catchall {:try_start_15 .. :try_end_20} :catchall_e

    :cond_20
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_2e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->d:Lcom/squareup/okhttp/internal/spdy/g;

    invoke-virtual {v0, p3}, Lcom/squareup/okhttp/internal/spdy/g;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    long-to-int v1, v0

    const/4 v0, 0x4

    if-eqz p1, :cond_3e

    const/4 v0, 0x5

    :cond_3e
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0, p2}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/k;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V
    :try_end_4f
    .catchall {:try_start_10 .. :try_end_4f} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_14
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/k;->a(IBBI)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_d

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized close()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->e:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/k;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->close()V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
