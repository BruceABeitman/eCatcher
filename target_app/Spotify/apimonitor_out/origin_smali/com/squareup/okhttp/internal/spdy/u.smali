.class public final Lcom/squareup/okhttp/internal/spdy/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic k:Z

.field private static final l:Ljava/util/concurrent/ExecutorService;


# instance fields
.field final a:Lcom/squareup/okhttp/Protocol;

.field final b:Z

.field c:J

.field d:J

.field final e:Lcom/squareup/okhttp/internal/spdy/q;

.field final f:Lcom/squareup/okhttp/internal/spdy/q;

.field final g:Lcom/squareup/okhttp/internal/spdy/a;

.field final h:Lcom/squareup/okhttp/internal/spdy/c;

.field final i:J

.field final j:Lcom/squareup/okhttp/internal/spdy/w;

.field private final m:Lcom/squareup/okhttp/internal/spdy/m;

.field private final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/x;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/squareup/okhttp/internal/spdy/o;",
            ">;"
        }
    .end annotation
.end field

.field private final u:Lcom/squareup/okhttp/internal/spdy/p;

.field private v:I

.field private w:Z

.field private final x:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const/4 v1, 0x0

    const-class v0, Lcom/squareup/okhttp/internal/spdy/u;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/squareup/okhttp/internal/spdy/u;->k:Z

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const v2, 0x7fffffff

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    const-string v7, "OkHttp SpdyConnection"

    invoke-static {v7}, Lcom/squareup/okhttp/internal/o;->c(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    return-void

    :cond_26
    move v0, v1

    goto :goto_a
.end method

.method private constructor <init>(Lcom/squareup/okhttp/internal/spdy/v;)V
    .registers 8

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/u;->s:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/u;->c:J

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/q;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/q;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->e:Lcom/squareup/okhttp/internal/spdy/q;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/q;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/q;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;

    iput-boolean v5, p0, Lcom/squareup/okhttp/internal/spdy/u;->w:Z

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->x:Ljava/util/Set;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->a(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->b(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/spdy/p;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->u:Lcom/squareup/okhttp/internal/spdy/p;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->c(Lcom/squareup/okhttp/internal/spdy/v;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->b:Z

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->d(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/spdy/m;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->m:Lcom/squareup/okhttp/internal/spdy/m;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->c(Lcom/squareup/okhttp/internal/spdy/v;)Z

    move-result v0

    if-eqz v0, :cond_ad

    move v0, v1

    :goto_4d
    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->q:I

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->c(Lcom/squareup/okhttp/internal/spdy/v;)Z

    move-result v0

    if-eqz v0, :cond_af

    :goto_55
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->v:I

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->c(Lcom/squareup/okhttp/internal/spdy/v;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->e:Lcom/squareup/okhttp/internal/spdy/q;

    const/4 v1, 0x7

    const/high16 v2, 0x100

    invoke-virtual {v0, v1, v5, v2}, Lcom/squareup/okhttp/internal/spdy/q;->a(III)Lcom/squareup/okhttp/internal/spdy/q;

    :cond_65
    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->e(Lcom/squareup/okhttp/internal/spdy/v;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_b1

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/h;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/h;-><init>()V

    :goto_76
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->f:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/q;->d()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->d:J

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->f(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/a/c;

    move-result-object v1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/aa;->a(Lcom/squareup/okhttp/internal/a/c;Z)Lcom/squareup/okhttp/internal/spdy/a;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->g:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-static {p1}, Lcom/squareup/okhttp/internal/spdy/v;->g(Lcom/squareup/okhttp/internal/spdy/v;)Lcom/squareup/okhttp/internal/a/b;

    move-result-object v1

    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->b:Z

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/spdy/aa;->a(Lcom/squareup/okhttp/internal/a/b;Z)Lcom/squareup/okhttp/internal/spdy/c;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    const-wide/16 v0, 0x3fff

    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->i:J

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/w;

    invoke-direct {v0, p0, v5}, Lcom/squareup/okhttp/internal/spdy/w;-><init>(Lcom/squareup/okhttp/internal/spdy/u;B)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->j:Lcom/squareup/okhttp/internal/spdy/w;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->j:Lcom/squareup/okhttp/internal/spdy/w;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_ad
    move v0, v2

    goto :goto_4d

    :cond_af
    move v1, v2

    goto :goto_55

    :cond_b1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->b:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_bd

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/r;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/spdy/r;-><init>()V

    goto :goto_76

    :cond_bd
    new-instance v0, Ljava/lang/AssertionError;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/spdy/v;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/u;-><init>(Lcom/squareup/okhttp/internal/spdy/v;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v2, 0x0

    sget-boolean v0, Lcom/squareup/okhttp/internal/spdy/u;->k:Z

    if-nez v0, :cond_12

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    monitor-enter v1
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_87

    :try_start_15
    monitor-enter p0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_84

    :try_start_16
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->r:Z

    if-eqz v0, :cond_71

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_81

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_84

    move-object v1, v2

    :goto_1d
    monitor-enter p0

    :try_start_1e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ba

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Lcom/squareup/okhttp/internal/spdy/x;

    invoke-interface {v0, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/x;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/squareup/okhttp/internal/spdy/u;->a(Z)V

    move-object v5, v0

    :goto_44
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v2, v2, [Lcom/squareup/okhttp/internal/spdy/o;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/okhttp/internal/spdy/o;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    move-object v4, v0

    :goto_60
    monitor-exit p0
    :try_end_61
    .catchall {:try_start_1e .. :try_end_61} :catchall_8a

    if-eqz v5, :cond_93

    array-length v6, v5

    move v2, v3

    move-object v0, v1

    :goto_66
    if-ge v2, v6, :cond_92

    aget-object v1, v5, v2

    :try_start_6a
    invoke-virtual {v1, p2}, Lcom/squareup/okhttp/internal/spdy/x;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6d} :catch_8d

    :cond_6d
    :goto_6d
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_66

    :cond_71
    const/4 v0, 0x1

    :try_start_72
    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->r:Z

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->p:I

    monitor-exit p0
    :try_end_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_81

    :try_start_77
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    sget-object v5, Lcom/squareup/okhttp/internal/o;->a:[B

    invoke-interface {v4, v0, p1, v5}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;[B)V

    monitor-exit v1

    move-object v1, v2

    goto :goto_1d

    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
    :try_end_84
    .catchall {:try_start_77 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception v0

    :try_start_85
    monitor-exit v1

    throw v0
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_87} :catch_87

    :catch_87
    move-exception v0

    move-object v1, v0

    goto :goto_1d

    :catchall_8a
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_8d
    move-exception v1

    if-eqz v0, :cond_6d

    move-object v0, v1

    goto :goto_6d

    :cond_92
    move-object v1, v0

    :cond_93
    if-eqz v4, :cond_a1

    array-length v2, v4

    move v0, v3

    :goto_97
    if-ge v0, v2, :cond_a1

    aget-object v3, v4, v0

    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/spdy/o;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_97

    :cond_a1
    :try_start_a1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->g:Lcom/squareup/okhttp/internal/spdy/a;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/a;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a6} :catch_af

    :goto_a6
    :try_start_a6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/c;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_ab} :catch_b2

    move-object v0, v1

    :cond_ac
    :goto_ac
    if-eqz v0, :cond_b7

    throw v0

    :catch_af
    move-exception v0

    move-object v1, v0

    goto :goto_a6

    :catch_b2
    move-exception v0

    if-eqz v1, :cond_ac

    move-object v0, v1

    goto :goto_ac

    :cond_b7
    return-void

    :cond_b8
    move-object v4, v2

    goto :goto_60

    :cond_ba
    move-object v5, v2

    goto :goto_44
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;II)V
    .registers 10

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$3;

    const-string v2, "OkHttp %s ping %08x%08x"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u$3;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;II)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;ILcom/squareup/okhttp/internal/a/c;IZ)V
    .registers 14

    new-instance v5, Lcom/squareup/okhttp/internal/a/i;

    invoke-direct {v5}, Lcom/squareup/okhttp/internal/a/i;-><init>()V

    int-to-long v0, p3

    invoke-interface {p2, v0, v1}, Lcom/squareup/okhttp/internal/a/c;->a(J)V

    int-to-long v0, p3

    invoke-interface {p2, v5, v0, v1}, Lcom/squareup/okhttp/internal/a/c;->b(Lcom/squareup/okhttp/internal/a/i;J)J

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v0

    int-to-long v2, p3

    cmp-long v0, v0, v2

    if-eqz v0, :cond_37

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/squareup/okhttp/internal/a/i;->o()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    sget-object v8, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$6;

    const-string v2, "OkHttp %s Push Data[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/squareup/okhttp/internal/spdy/u$6;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/a/i;IZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 10

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$7;

    const-string v2, "OkHttp %s Push Reset[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u$7;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;ILjava/util/List;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->b:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/internal/spdy/u;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    monitor-exit p0

    :goto_13
    return-void

    :cond_14
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->x:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_3d

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$4;

    const-string v2, "OkHttp %s Push Request[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u$4;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_13

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;ILjava/util/List;Z)V
    .registers 12

    sget-object v7, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$5;

    const-string v2, "OkHttp %s Push Headers[%s]"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/u$5;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;Z)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;ZIILcom/squareup/okhttp/internal/spdy/o;)V
    .registers 7

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    monitor-enter v1

    if-eqz p4, :cond_8

    :try_start_5
    invoke-virtual {p4}, Lcom/squareup/okhttp/internal/spdy/o;->a()V

    :cond_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0, p1, p2, p3}, Lcom/squareup/okhttp/internal/spdy/c;->a(ZII)V

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_f

    return-void

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Z)V
    .registers 4

    monitor-enter p0

    if-eqz p1, :cond_b

    :try_start_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_7
    iput-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->s:J
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_11

    monitor-exit p0

    return-void

    :cond_b
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_7

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/squareup/okhttp/internal/spdy/u;I)Z
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->a:Lcom/squareup/okhttp/Protocol;

    if-ne v0, v1, :cond_e

    if-eqz p1, :cond_e

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/u;I)I
    .registers 2

    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/u;->p:I

    return p1
.end method

.method private b(Ljava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/x;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/spdy/x;"
        }
    .end annotation

    const/4 v3, 0x0

    if-nez p2, :cond_4

    const/4 v3, 0x1

    :cond_4
    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    monitor-enter v7

    :try_start_7
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_17

    :try_start_8
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->r:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/io/IOException;

    const-string v1, "shutdown"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit p0

    throw v0
    :try_end_17
    .catchall {:try_start_15 .. :try_end_17} :catchall_17

    :catchall_17
    move-exception v0

    monitor-exit v7

    throw v0

    :cond_1a
    :try_start_1a
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->q:I

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->q:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->q:I

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/x;

    const/4 v4, 0x0

    const/4 v5, -0x1

    move-object v2, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/x;-><init>(ILcom/squareup/okhttp/internal/spdy/u;ZZILjava/util/List;)V

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/x;->a()Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/u;->a(Z)V

    :cond_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1a .. :try_end_3f} :catchall_14

    :try_start_3f
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v2, v3, v1, p1}, Lcom/squareup/okhttp/internal/spdy/c;->a(ZILjava/util/List;)V

    monitor-exit v7
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_17

    if-nez p2, :cond_4c

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/spdy/c;->c()V

    :cond_4c
    return-object v0
.end method

.method static synthetic b(Lcom/squareup/okhttp/internal/spdy/u;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->r:Z

    return v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/u;)I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->p:I

    return v0
.end method

.method private declared-synchronized c(I)Lcom/squareup/okhttp/internal/spdy/o;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->t:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/o;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_15

    :goto_11
    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_11

    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/squareup/okhttp/internal/spdy/u;I)Lcom/squareup/okhttp/internal/spdy/o;
    .registers 3

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/u;->c(I)Lcom/squareup/okhttp/internal/spdy/o;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/squareup/okhttp/internal/spdy/u;)I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->q:I

    return v0
.end method

.method static synthetic e(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/m;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->m:Lcom/squareup/okhttp/internal/spdy/m;

    return-object v0
.end method

.method static synthetic f()Ljava/util/concurrent/ExecutorService;
    .registers 1

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic g(Lcom/squareup/okhttp/internal/spdy/u;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->w:Z

    return v0
.end method

.method static synthetic h(Lcom/squareup/okhttp/internal/spdy/u;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->w:Z

    return v0
.end method

.method static synthetic i(Lcom/squareup/okhttp/internal/spdy/u;)Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->r:Z

    return v0
.end method

.method static synthetic j(Lcom/squareup/okhttp/internal/spdy/u;)Lcom/squareup/okhttp/internal/spdy/p;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->u:Lcom/squareup/okhttp/internal/spdy/p;

    return-object v0
.end method

.method static synthetic k(Lcom/squareup/okhttp/internal/spdy/u;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->x:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/squareup/okhttp/Protocol;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->a:Lcom/squareup/okhttp/Protocol;

    return-object v0
.end method

.method final declared-synchronized a(I)Lcom/squareup/okhttp/internal/spdy/x;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/x;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ljava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/x;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/d;",
            ">;Z)",
            "Lcom/squareup/okhttp/internal/spdy/x;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/u;->b(Ljava/util/List;Z)Lcom/squareup/okhttp/internal/spdy/x;

    move-result-object v0

    return-object v0
.end method

.method final a(IJ)V
    .registers 12

    sget-object v7, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$2;

    const-string v2, "OkHttp Window Update %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-wide v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/u$2;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;IJ)V

    invoke-interface {v7, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method final a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 10

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/u;->l:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/u$1;

    const-string v2, "OkHttp %s stream %d"

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->o:Ljava/lang/String;

    aput-object v4, v3, v1

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/squareup/okhttp/internal/spdy/u$1;-><init>(Lcom/squareup/okhttp/internal/spdy/u;Ljava/lang/String;[Ljava/lang/Object;ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final a(IZLcom/squareup/okhttp/internal/a/i;J)V
    .registers 15

    const/4 v1, 0x0

    const-wide/16 v7, 0x0

    cmp-long v0, p4, v7

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0, p2, p1, p3, v1}, Lcom/squareup/okhttp/internal/spdy/c;->a(ZILcom/squareup/okhttp/internal/a/i;I)V

    :cond_c
    return-void

    :cond_d
    :try_start_d
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->d:J

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/squareup/okhttp/internal/spdy/u;->i:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/u;->d:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/squareup/okhttp/internal/spdy/u;->d:J

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_d .. :try_end_21} :catchall_45

    int-to-long v3, v2

    sub-long/2addr p4, v3

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    if-eqz p2, :cond_48

    cmp-long v0, p4, v7

    if-nez v0, :cond_48

    const/4 v0, 0x1

    :goto_2c
    invoke-interface {v3, v0, p1, p3, v2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ZILcom/squareup/okhttp/internal/a/i;I)V

    :cond_2f
    cmp-long v0, p4, v7

    if-lez v0, :cond_c

    monitor-enter p0

    :goto_34
    :try_start_34
    iget-wide v2, p0, Lcom/squareup/okhttp/internal/spdy/u;->d:J

    cmp-long v0, v2, v7

    if-gtz v0, :cond_d

    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3d
    .catchall {:try_start_34 .. :try_end_3d} :catchall_45
    .catch Ljava/lang/InterruptedException; {:try_start_34 .. :try_end_3d} :catch_3e

    goto :goto_34

    :catch_3e
    move-exception v0

    :try_start_3f
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
    :try_end_45
    .catchall {:try_start_3f .. :try_end_45} :catchall_45

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_48
    move v0, v1

    goto :goto_2c
.end method

.method final declared-synchronized b(I)Lcom/squareup/okhttp/internal/spdy/x;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/spdy/x;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Z)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final b(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
    .registers 4

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0, p1, p2}, Lcom/squareup/okhttp/internal/spdy/c;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public final declared-synchronized b()Z
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->s:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_d
    monitor-exit p0

    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_d

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->s:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .registers 3

    sget-object v0, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->a:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->l:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/squareup/okhttp/internal/spdy/u;->a(Lcom/squareup/okhttp/internal/spdy/ErrorCode;Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    return-void
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/c;->c()V

    return-void
.end method

.method public final e()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/spdy/c;->a()V

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/u;->h:Lcom/squareup/okhttp/internal/spdy/c;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/u;->e:Lcom/squareup/okhttp/internal/spdy/q;

    invoke-interface {v0, v1}, Lcom/squareup/okhttp/internal/spdy/c;->a(Lcom/squareup/okhttp/internal/spdy/q;)V

    return-void
.end method
