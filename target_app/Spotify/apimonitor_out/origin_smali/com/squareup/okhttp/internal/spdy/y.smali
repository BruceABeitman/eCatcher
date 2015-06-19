.class final Lcom/squareup/okhttp/internal/spdy/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/a/o;


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/squareup/okhttp/internal/spdy/x;

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/y;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/x;)V
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/y;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/y;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/spdy/y;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/y;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->c:Z

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/y;->a:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v1

    :try_start_15
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->f(Lcom/squareup/okhttp/internal/spdy/x;)V

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_15 .. :try_end_1b} :catchall_25

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->d()V

    return-void

    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/squareup/okhttp/internal/a/i;J)V
    .registers 12

    const-wide/16 v6, 0x0

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/y;->a:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    :try_start_14
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->f(Lcom/squareup/okhttp/internal/spdy/x;)V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_14 .. :try_end_29} :catchall_57

    sub-long/2addr p2, v4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/x;)I

    move-result v1

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u;->a(IZLcom/squareup/okhttp/internal/a/i;J)V

    :cond_3b
    cmp-long v0, p2, v6

    if-lez v0, :cond_5a

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v1

    :goto_42
    :try_start_42
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-wide v2, v0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    cmp-long v0, v2, v6

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_57
    .catch Ljava/lang/InterruptedException; {:try_start_42 .. :try_end_4f} :catch_50

    goto :goto_42

    :catch_50
    move-exception v0

    :try_start_51
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_57
    .catchall {:try_start_51 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5a
    return-void
.end method

.method public final close()V
    .registers 7

    const/4 v2, 0x1

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/y;->a:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_13
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v1

    :try_start_16
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->c:Z

    if-eqz v0, :cond_1c

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_4d

    :goto_1b
    return-void

    :cond_1c
    monitor-exit v1

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    iget-boolean v0, v0, Lcom/squareup/okhttp/internal/spdy/y;->d:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/x;)I

    move-result v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u;->a(IZLcom/squareup/okhttp/internal/a/i;J)V

    :cond_37
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_3b
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->c:Z

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_50

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/u;->d()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/y;->b:Lcom/squareup/okhttp/internal/spdy/x;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/x;->e(Lcom/squareup/okhttp/internal/spdy/x;)V

    goto :goto_1b

    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_50
    move-exception v0

    monitor-exit v1

    throw v0
.end method
