.class public final Lcom/instagram/common/e/c/a;
.super Ljava/lang/Object;
.source "IgVideoCache.java"


# static fields
.field private static a:Lcom/instagram/common/e/c/a;


# instance fields
.field private final b:Landroid/os/Handler;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/instagram/common/e/c/b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/e/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/content/Context;

.field private j:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private k:Lcom/c/a/a;

.field private l:Lcom/instagram/common/e/a/i;

.field private m:Lcom/instagram/common/e/a/c;

.field private final n:Lcom/instagram/common/e/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/common/e/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/instagram/common/e/c/c;-><init>(B)V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->b:Landroid/os/Handler;

    invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;

    move-result-object v0

    const-string v1, "IgVideoCache"

    invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->c:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->d:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->g:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->h:Ljava/util/Set;

    sget-object v0, Lcom/instagram/common/e/a/g;->a:Lcom/instagram/common/e/a/i;

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->l:Lcom/instagram/common/e/a/i;

    new-instance v0, Lcom/instagram/common/e/a/e;

    invoke-direct {v0}, Lcom/instagram/common/e/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->m:Lcom/instagram/common/e/a/c;

    new-instance v0, Lcom/instagram/common/e/a/a;

    const-string v1, "video_disk"

    invoke-direct {v0, v1}, Lcom/instagram/common/e/a/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->n:Lcom/instagram/common/e/a/a;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->i:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->n:Lcom/instagram/common/e/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/e/a/a;->a()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/c/a;)Lcom/c/a/a;
    .registers 2

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a()Lcom/instagram/common/e/c/a;
    .registers 1

    sget-object v0, Lcom/instagram/common/e/c/a;->a:Lcom/instagram/common/e/c/a;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/instagram/common/e/c/a;
    .registers 2

    new-instance v0, Lcom/instagram/common/e/c/a;

    invoke-direct {v0, p0}, Lcom/instagram/common/e/c/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/common/e/c/a;->a:Lcom/instagram/common/e/c/a;

    return-object v0
.end method

.method private a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/a/f;

    invoke-interface {v0, p1, p2}, Lcom/instagram/common/e/a/f;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/c/a;Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/e/c/a;->a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/c/a;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/e/c/a;->f(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/instagram/common/e/c/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->b:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/common/e/c/a;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/common/e/c/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/instagram/common/e/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 8

    iget-object v2, p0, Lcom/instagram/common/e/c/a;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_3e

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3e

    iget-object v1, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/common/e/c/b;

    iget-object v3, p0, Lcom/instagram/common/e/c/a;->c:Ljava/util/concurrent/Executor;

    new-instance v4, Lcom/instagram/common/j/a;

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->f()Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v5

    invoke-static {v1}, Lcom/instagram/common/e/c/b;->a(Lcom/instagram/common/e/c/b;)Lcom/instagram/common/e/a/g;

    move-result-object v6

    iget-object v6, v6, Lcom/instagram/common/e/a/g;->b:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v1}, Lcom/instagram/common/j/a;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Ljava/lang/String;Lcom/instagram/common/j/b;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/instagram/common/e/c/a;->g:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_40

    return-void

    :catchall_40
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private d()Lcom/c/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->k:Lcom/c/a/a;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->e()V

    :cond_7
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->k:Lcom/c/a/a;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/instagram/common/e/c/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->g:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->c()V

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_17

    return-void

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized e()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->k:Lcom/c/a/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5d

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->i:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/e/a/d;->a(Ljava/io/File;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_2e

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->i:Landroid/content/Context;

    const-string v1, "video"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/instagram/common/e/a/d;->a(Ljava/io/File;)J

    move-result-wide v0

    const-string v3, "IgVideoCache"

    const-string v4, "Couldn\'t create in external storage"

    invoke-static {v3, v4}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache directory: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/32 v4, 0x100000

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v0, v1}, Lcom/c/a/a;->a(Ljava/io/File;J)Lcom/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->k:Lcom/c/a/a;
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_5d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_53} :catch_54

    goto :goto_5

    :catch_54
    move-exception v0

    :try_start_55
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open video cache"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f()Lch/boye/httpclientandroidlib/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->g()V

    :cond_7
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method private f(Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    invoke-static {p1}, Lcom/instagram/common/e/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/c/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized g()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_36

    if-eqz v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-static {}, Lcom/instagram/common/a/g/d;->a()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setDefaultMaxPerRoute(I)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;->setMaxTotal(I)V

    new-instance v1, Lch/boye/httpclientandroidlib/params/BasicHttpParams;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/params/BasicHttpParams;-><init>()V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setConnectionTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    iget-object v2, p0, Lcom/instagram/common/e/c/a;->m:Lcom/instagram/common/e/a/c;

    invoke-interface {v2, v0, v1}, Lcom/instagram/common/e/a/c;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/c/a;->j:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    goto :goto_5

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/instagram/common/e/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/e/c/a;->m:Lcom/instagram/common/e/a/c;

    return-void
.end method

.method public final a(Lcom/instagram/common/e/a/f;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/instagram/common/e/a/i;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/e/c/a;->l:Lcom/instagram/common/e/a/i;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/instagram/common/e/c/a;->a(Ljava/lang/String;ZLcom/instagram/common/e/c/d;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/common/e/c/d;)V
    .registers 7

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->l:Lcom/instagram/common/e/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/c/a;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/c/b;

    invoke-static {v0, p2}, Lcom/instagram/common/e/c/b;->b(Lcom/instagram/common/e/c/b;Lcom/instagram/common/e/c/d;)V

    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_35

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->b:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    goto :goto_2

    :catchall_35
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/lang/String;ZLcom/instagram/common/e/c/d;)V
    .registers 8

    if-nez p1, :cond_8

    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/instagram/common/e/c/d;->g()V

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->l:Lcom/instagram/common/e/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/instagram/common/e/c/a;->f(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->n:Lcom/instagram/common/e/a/a;

    invoke-virtual {v0}, Lcom/instagram/common/e/a/a;->b()V

    if-eqz p3, :cond_7

    invoke-interface {p3}, Lcom/instagram/common/e/c/d;->f()V

    goto :goto_7

    :cond_23
    iget-object v2, p0, Lcom/instagram/common/e/c/a;->n:Lcom/instagram/common/e/a/a;

    invoke-virtual {v2}, Lcom/instagram/common/e/a/a;->c()V

    iget-object v2, p0, Lcom/instagram/common/e/c/a;->d:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2b
    iget-object v3, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/common/e/c/b;

    if-eqz p3, :cond_40

    invoke-static {v0, p3}, Lcom/instagram/common/e/c/b;->a(Lcom/instagram/common/e/c/b;Lcom/instagram/common/e/c/d;)V

    :cond_40
    if-eqz p2, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Reordering "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to front of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_2b .. :try_end_5d} :catchall_5e

    goto :goto_7

    :catchall_5e
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_61
    :try_start_61
    invoke-direct {p0, v1}, Lcom/instagram/common/e/c/a;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6d

    if-eqz p3, :cond_5c

    invoke-interface {p3}, Lcom/instagram/common/e/c/d;->f()V

    goto :goto_5c

    :cond_6d
    new-instance v3, Lcom/instagram/common/e/c/b;

    invoke-direct {v3, p0, v0}, Lcom/instagram/common/e/c/b;-><init>(Lcom/instagram/common/e/c/a;Lcom/instagram/common/e/a/g;)V

    if-eqz p3, :cond_77

    invoke-static {v3, p3}, Lcom/instagram/common/e/c/b;->a(Lcom/instagram/common/e/c/b;Lcom/instagram/common/e/c/d;)V

    :cond_77
    iget-object v0, p0, Lcom/instagram/common/e/c/a;->f:Ljava/util/Map;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_97

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Adding "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at front of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    :goto_93
    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->c()V

    goto :goto_5c

    :cond_97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Adding "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " at back of queue"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->e:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V
    :try_end_ac
    .catchall {:try_start_61 .. :try_end_ac} :catchall_5e

    goto :goto_93
.end method

.method public final b()J
    .registers 3

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->d()Lcom/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/c/a/a;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b(Ljava/lang/String;)Lcom/instagram/common/e/c/e;
    .registers 4

    iget-object v0, p0, Lcom/instagram/common/e/c/a;->l:Lcom/instagram/common/e/a/i;

    invoke-interface {v0, p1}, Lcom/instagram/common/e/a/i;->a(Ljava/lang/String;)Lcom/instagram/common/e/a/g;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/common/e/c/a;->d()Lcom/c/a/a;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/common/e/a/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/e/c/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/c/a/a;->b(Ljava/lang/String;)Lcom/c/a/g;

    move-result-object v1

    if-eqz v1, :cond_1e

    new-instance v0, Lcom/instagram/common/e/c/e;

    invoke-direct {v0, v1}, Lcom/instagram/common/e/c/e;-><init>(Lcom/c/a/g;)V

    :goto_1d
    return-object v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
