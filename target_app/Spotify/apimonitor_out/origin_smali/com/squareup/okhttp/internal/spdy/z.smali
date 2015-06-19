.class final Lcom/squareup/okhttp/internal/spdy/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/p;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/x;

.field private final c:Lcom/squareup/okhttp/internal/a/i;

.field private final d:Lcom/squareup/okhttp/internal/a/i;

.field private final e:J

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/z;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/x;J)V
    .registers 5

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->c:Lcom/squareup/okhttp/internal/a/i;

    new-instance v0, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    iput-wide p2, p0, Lcom/squareup/okhttp/internal/spdy/z;->e:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/x;JB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/z;-><init>(Lcom/squareup/okhttp/internal/spdy/x;J)V

    return-void
.end method

.method private a()V
    .registers 11

    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/x;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6f

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long v4, v0, v4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/x;)J

    move-result-wide v0

    :goto_1b
    :try_start_1b
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_6e

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->g:Z

    if-nez v6, :cond_6e

    iget-boolean v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->f:Z

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/x;->d(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v6

    if-nez v6, :cond_6e

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v6}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/x;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_4c

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_44} :catch_45

    goto :goto_1b

    :catch_45
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :cond_4c
    cmp-long v6, v0, v2

    if-lez v6, :cond_66

    :try_start_50
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->c(Lcom/squareup/okhttp/internal/spdy/x;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    goto :goto_1b

    :cond_66
    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "Read timed out"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_50 .. :try_end_6e} :catch_45

    :cond_6e
    return-void

    :cond_6f
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_1b
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/z;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/z;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/z;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/z;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->f:Z

    return v0
.end method


# virtual methods
.method final a(Lcom/squareup/okhttp/internal/a/c;J)V
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/z;->a:Z

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_16
    sub-long/2addr p2, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v3

    :try_start_1a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v4

    cmp-long v0, v4, v9

    if-nez v0, :cond_7c

    move v0, v1

    :goto_25
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/z;->c:Lcom/squareup/okhttp/internal/a/i;

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/z;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v6}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/squareup/okhttp/internal/a/i;->a(Lcom/squareup/okhttp/internal/a/i;J)V

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_1a .. :try_end_3a} :catchall_7e

    :cond_3a
    cmp-long v0, p2, v9

    if-lez v0, :cond_5e

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v3

    :try_start_41
    iget-boolean v4, p0, Lcom/squareup/okhttp/internal/spdy/z;->g:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v5

    add-long/2addr v5, p2

    iget-wide v7, p0, Lcom/squareup/okhttp/internal/spdy/z;->e:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_5f

    move v0, v1

    :goto_51
    monitor-exit v3
    :try_end_52
    .catchall {:try_start_41 .. :try_end_52} :catchall_61

    if-eqz v0, :cond_64

    invoke-interface {p1, p2, p3}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->h:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    move v0, v2

    goto :goto_51

    :catchall_61
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_64
    if-eqz v4, :cond_6a

    invoke-interface {p1, p2, p3}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    goto :goto_5e

    :cond_6a
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->c:Lcom/squareup/okhttp/internal/a/i;

    invoke-interface {p1, v0, p2, p3}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_16

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_7c
    move v0, v2

    goto :goto_25

    :catchall_7e
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final b(Lcom/squareup/okhttp/internal/a/i;J)J
    .registers 11

    const-wide/16 v3, 0x0

    cmp-long v0, p2, v3

    if-gez v0, :cond_1b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v2

    :try_start_1e
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/z;->a()V

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->f:Z

    if-eqz v0, :cond_30

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_2d

    :catchall_2d
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->d(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_53

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "stream was reset: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->d(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_53
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_61

    const-wide/16 v0, -0x1

    monitor-exit v2

    :goto_60
    return-wide v0

    :cond_61
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v3

    invoke-static {p2, p3, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    invoke-virtual {v0, p1, v3, v4}, Lcom/squareup/okhttp/internal/a/i;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    move-result-wide v0

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v5

    iget-object v5, v5, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/q;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_a8

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v4}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/x;)I

    move-result v4

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v5, v5, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/u;->a(IJ)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    :cond_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_30 .. :try_end_a9} :catchall_2d

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v2

    monitor-enter v2

    :try_start_b0
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v3

    iget-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    add-long/2addr v4, v0

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v3

    iget-wide v3, v3, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v5

    iget-object v5, v5, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/spdy/q;->d()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_f2

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v5}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v5

    iget-wide v5, v5, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/squareup/okhttp/internal/spdy/u;->a(IJ)V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v3}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v3

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    :cond_f2
    monitor-exit v2
    :try_end_f3
    .catchall {:try_start_b0 .. :try_end_f3} :catchall_f5

    goto/16 :goto_60

    :catchall_f5
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final close()V
    .registers 3

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->f:Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->d:Lcom/squareup/okhttp/internal/a/i;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/i;->p()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_17

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/z;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->e(Lcom/squareup/okhttp/internal/spdy/x;)V

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method
