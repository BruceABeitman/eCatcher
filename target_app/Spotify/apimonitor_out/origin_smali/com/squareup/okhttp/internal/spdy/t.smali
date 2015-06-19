.class final Lcom/squareup/okhttp/internal/spdy/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/c;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/a/b;

.field private final b:Lcom/squareup/okhttp/internal/a/i;

.field private final c:Lcom/squareup/okhttp/internal/a/b;

.field private final d:Z

.field private e:Z


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/b;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/t;->d:Z

    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/r;->a:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setDictionary([B)V

    new-instance v1, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v1}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    new-instance v1, Lcom/squareup/okhttp/internal/a/f;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v1, v2, v0}, Lcom/squareup/okhttp/internal/a/f;-><init>(Lcom/squareup/okhttp/internal/a/o;Ljava/util/zip/Deflater;)V

    invoke-static {v1}, Lcom/squareup/okhttp/internal/a/j;->a(Lcom/squareup/okhttp/internal/a/o;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_12
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_21
    if-ge v1, v2, :cond_53

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->h:Lcom/squareup/okhttp/internal/a/d;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/d;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/d;->i:Lcom/squareup/okhttp/internal/a/d;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->e()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v3, v0}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/d;)Lcom/squareup/okhttp/internal/a/b;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_21

    :cond_53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .registers 1

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(IJ)V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

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

    if-lez v0, :cond_32

    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "windowSizeIncrement must be between 1 and 0x7fffffff: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, -0x7ffcfff7

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    long-to-int v1, p2

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_51
    .catchall {:try_start_1d .. :try_end_51} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

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
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, -0x7ffcfffd

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyRstCode:I

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_3f
    .catchall {:try_start_10 .. :try_end_3f} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

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
    iget v0, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "errorCode.spdyGoAwayCode == -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, -0x7ffcfff9

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->spdyGoAwayCode:I

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(Lcom/squareup/okhttp/internal/spdy/q;)V
    .registers 7

    const v4, 0xffffff

    monitor-enter p0

    :try_start_4
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/q;->b()I

    move-result v0

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v3, -0x7ffcfffc

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    and-int/2addr v1, v4

    or-int/lit8 v1, v1, 0x0

    invoke-interface {v2, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    const/4 v0, 0x0

    :goto_31
    const/16 v1, 0xa

    if-gt v0, v1, :cond_57

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->a(I)Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    and-int v3, v0, v4

    or-int/2addr v1, v3

    invoke-interface {v2, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-virtual {p1, v0}, Lcom/squareup/okhttp/internal/spdy/q;->b(I)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    :cond_54
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    :cond_57
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_5c
    .catchall {:try_start_13 .. :try_end_5c} :catchall_10

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZII)V
    .registers 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_3
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

    if-eqz v2, :cond_12

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_12
    :try_start_12
    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->d:Z

    and-int/lit8 v2, p2, 0x1

    if-ne v2, v0, :cond_25

    move v2, v0

    :goto_19
    if-eq v3, v2, :cond_27

    :goto_1b
    if-eq p1, v0, :cond_29

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "payload != reply"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    move v2, v1

    goto :goto_19

    :cond_27
    move v0, v1

    goto :goto_1b

    :cond_29
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, -0x7ffcfffa

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0, p2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_41
    .catchall {:try_start_12 .. :try_end_41} :catchall_f

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILcom/squareup/okhttp/internal/a/i;I)V
    .registers 10

    monitor-enter p0

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :goto_4
    :try_start_4
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

    if-eqz v1, :cond_15

    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_10

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_4

    :cond_15
    int-to-long v1, p4

    const-wide/32 v3, 0xffffff

    cmp-long v1, v1, v3

    if-lez v1, :cond_32

    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FRAME_TOO_LARGE max size is 16Mib: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v2, 0x7fffffff

    and-int/2addr v2, p2

    invoke-interface {v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v2, 0xffffff

    and-int/2addr v2, p4

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    if-lez p4, :cond_51

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    int-to-long v1, p4

    invoke-interface {v0, p3, v1, v2}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V
    :try_end_51
    .catchall {:try_start_1d .. :try_end_51} :catchall_10

    :cond_51
    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized a(ZILjava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

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
    invoke-direct {p0, p3}, Lcom/squareup/okhttp/internal/spdy/t;->a(Ljava/util/List;)V

    const-wide/16 v1, 0xa

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v3

    add-long/2addr v1, v3

    long-to-int v1, v1

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    :cond_21
    or-int/lit8 v0, v0, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v3, -0x7ffcffff

    invoke-interface {v2, v3}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const v3, 0xffffff

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const v1, 0x7fffffff

    and-int/2addr v1, p2

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/a/b;->a(I)Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->c()Lcom/squareup/okhttp/internal/a/b;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/t;->b:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v2}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/squareup/okhttp/internal/a/b;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_5f
    .catchall {:try_start_11 .. :try_end_5f} :catchall_e

    monitor-exit p0

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final declared-synchronized c()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

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
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/b;->a()V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_d

    monitor-exit p0

    return-void
.end method

.method public final declared-synchronized close()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->e:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/t;->a:Lcom/squareup/okhttp/internal/a/b;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/t;->c:Lcom/squareup/okhttp/internal/a/b;

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/io/Closeable;Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
