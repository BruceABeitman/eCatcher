.class public final Lcom/squareup/okhttp/internal/spdy/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic d:Z


# instance fields
.field a:J

.field b:J

.field final c:Lcom/squareup/okhttp/internal/spdy/y;

.field private final e:I

.field private final f:Lcom/squareup/okhttp/internal/spdy/u;

.field private final g:I

.field private h:J

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/squareup/okhttp/internal/spdy/z;

.field private l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/squareup/okhttp/internal/spdy/x;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILcom/squareup/okhttp/internal/spdy/u;ZZILjava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/squareup/okhttp/internal/spdy/u;",
            "ZZI",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->a:J

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    if-nez p6, :cond_20

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    iput-object p2, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget-object v0, p2, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/q;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/z;

    iget-object v1, p2, Lcom/squareup/okhttp/internal/spdy/u;->e:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/q;->d()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/squareup/okhttp/internal/spdy/z;-><init>(Lcom/squareup/okhttp/internal/spdy/x;JB)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/y;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/internal/spdy/y;-><init>(Lcom/squareup/okhttp/internal/spdy/x;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v0, p4}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/spdy/z;Z)Z

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v0, p3}, Lcom/squareup/okhttp/internal/spdy/y;->a(Lcom/squareup/okhttp/internal/spdy/y;Z)Z

    iput p5, p0, Lcom/squareup/okhttp/internal/spdy/x;->g:I

    iput-object p6, p0, Lcom/squareup/okhttp/internal/spdy/x;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/u;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/x;)I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/x;)J
    .registers 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/x;)Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    return-object v0
.end method

.method private d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z
    .registers 4

    const/4 v0, 0x0

    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_11
    monitor-enter p0

    :try_start_12
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v1, :cond_18

    monitor-exit p0

    :goto_17
    return v0

    :cond_18
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/spdy/z;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/y;->a(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v1

    if-eqz v1, :cond_2d

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_12 .. :try_end_29} :catchall_2a

    goto :goto_17

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2d
    :try_start_2d
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;

    const/4 v0, 0x1

    goto :goto_17
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/x;)V
    .registers 3

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/spdy/z;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/z;->b(Lcom/squareup/okhttp/internal/spdy/z;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/y;->a(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/y;->b(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v0

    if-eqz v0, :cond_3f

    :cond_31
    const/4 v0, 0x1

    :goto_32
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/x;->a()Z

    move-result v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_41

    if-eqz v0, :cond_44

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, v0}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    :cond_3e
    :goto_3e
    return-void

    :cond_3f
    const/4 v0, 0x0

    goto :goto_32

    :catchall_41
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_44
    if-nez v1, :cond_3e

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;

    goto :goto_3e
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/x;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/y;->b(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/spdy/y;->a(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-eqz v0, :cond_3b

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    return-void
.end method


# virtual methods
.method public final a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    return-void
.end method

.method final a(Lcom/squareup/okhttp/internal/a/c;I)V
    .registers 6

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/a/c;J)V

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/x;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/u;->b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_6
.end method

.method final a(Ljava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;",
            "Lcom/squareup/okhttp/internal/spdy/HeadersMode;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v0, 0x1

    sget-boolean v1, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    if-nez v1, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    const/4 v1, 0x0

    monitor-enter p0

    :try_start_14
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    if-nez v3, :cond_35

    sget-object v3, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p2, v3, :cond_1d

    move v2, v0

    :cond_1d
    if-eqz v2, :cond_28

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    :goto_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_14 .. :try_end_22} :catchall_32

    if-eqz v1, :cond_4f

    invoke-virtual {p0, v1}, Lcom/squareup/okhttp/internal/spdy/x;->b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    :cond_27
    :goto_27
    return-void

    :cond_28
    :try_start_28
    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/x;->a()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_31
    .catchall {:try_start_28 .. :try_end_31} :catchall_32

    goto :goto_21

    :catchall_32
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_35
    :try_start_35
    sget-object v3, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    if-ne p2, v3, :cond_3a

    move v2, v0

    :cond_3a
    if-eqz v2, :cond_3f

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->e:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    goto :goto_21

    :cond_3f
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;
    :try_end_4e
    .catchall {:try_start_35 .. :try_end_4e} :catchall_32

    goto :goto_21

    :cond_4f
    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;

    goto :goto_27
.end method

.method public final declared-synchronized a()Z
    .registers 3

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_2e

    if-eqz v1, :cond_8

    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/spdy/z;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/z;->b(Lcom/squareup/okhttp/internal/spdy/z;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_18
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/y;->a(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v1

    if-nez v1, :cond_28

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    invoke-static {v1}, Lcom/squareup/okhttp/internal/spdy/y;->b(Lcom/squareup/okhttp/internal/spdy/y;)Z

    move-result v1

    if-eqz v1, :cond_2c

    :cond_28
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_2e

    if-nez v1, :cond_6

    :cond_2c
    const/4 v0, 0x1

    goto :goto_6

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(J)V
    .registers 5

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->b:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_e
    return-void
.end method

.method public final b(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/x;->d(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/squareup/okhttp/internal/spdy/u;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto :goto_6
.end method

.method public final b()Z
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    :goto_9
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget-boolean v3, v3, Lcom/squareup/okhttp/internal/spdy/u;->b:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    goto :goto_9

    :cond_12
    move v1, v2

    goto :goto_f
.end method

.method public final declared-synchronized c()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;"
        }
    .end annotation

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_3
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7c

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v4, 0xf4240

    div-long/2addr v0, v4

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_2f

    :goto_13
    :try_start_13
    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    if-nez v6, :cond_5d

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v6, :cond_5d

    iget-wide v6, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_32

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_24} :catch_25

    goto :goto_13

    :catch_25
    move-exception v0

    :try_start_26
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
    :try_end_2f
    .catchall {:try_start_26 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_32
    cmp-long v6, v4, v2

    if-lez v6, :cond_46

    :try_start_36
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    add-long/2addr v4, v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v4, v6

    goto :goto_13

    :cond_46
    new-instance v0, Ljava/net/SocketTimeoutException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Read response header timeout. readTimeoutMillis: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;
    :try_end_63
    .catchall {:try_start_36 .. :try_end_63} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_36 .. :try_end_63} :catch_25

    monitor-exit p0

    return-object v0

    :cond_65
    :try_start_65
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stream was reset: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catchall {:try_start_65 .. :try_end_7c} :catchall_2f
    .catch Ljava/lang/InterruptedException; {:try_start_65 .. :try_end_7c} :catch_25

    :cond_7c
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_13
.end method

.method final declared-synchronized c(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    if-nez v0, :cond_a

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/x;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()J
    .registers 3

    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->h:J

    return-wide v0
.end method

.method public final e()Lcom/squareup/okhttp/internal/a/p;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/internal/a/o;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->j:Ljava/util/List;

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/x;->b()Z

    move-result v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->c:Lcom/squareup/okhttp/internal/spdy/y;

    return-object v0
.end method

.method final g()V
    .registers 3

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/x;->d:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_10
    monitor-enter p0

    :try_start_11
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->k:Lcom/squareup/okhttp/internal/spdy/z;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/spdy/z;->a(Lcom/squareup/okhttp/internal/spdy/z;Z)Z

    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/x;->a()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_11 .. :try_end_1f} :catchall_29

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/x;->f:Lcom/squareup/okhttp/internal/spdy/u;

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/x;->e:I

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->b(I)Lcom/squareup/okhttp/internal/spdy/x;

    :cond_28
    return-void

    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method
