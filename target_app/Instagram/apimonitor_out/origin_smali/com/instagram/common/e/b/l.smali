.class final Lcom/instagram/common/e/b/l;
.super Ljava/lang/Object;
.source "IgImageCache.java"

# interfaces
.implements Lcom/instagram/common/e/b/t;


# instance fields
.field final synthetic a:Lcom/instagram/common/e/b/h;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/common/e/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/instagram/common/e/b/g;

.field private d:Lcom/instagram/common/e/a/c;

.field private e:Lcom/c/a/a;

.field private f:Lch/boye/httpclientandroidlib/client/HttpClient;


# direct methods
.method private constructor <init>(Lcom/instagram/common/e/b/h;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/common/e/b/l;->a:Lcom/instagram/common/e/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/b/l;->b:Ljava/util/Set;

    new-instance v0, Lcom/instagram/common/e/b/g;

    invoke-direct {v0}, Lcom/instagram/common/e/b/g;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/b/l;->c:Lcom/instagram/common/e/b/g;

    new-instance v0, Lcom/instagram/common/e/a/e;

    invoke-direct {v0}, Lcom/instagram/common/e/a/e;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/e/b/l;->d:Lcom/instagram/common/e/a/c;

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/e/b/h;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/common/e/b/l;-><init>(Lcom/instagram/common/e/b/h;)V

    return-void
.end method

.method private a(Lcom/instagram/common/e/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/common/e/b/l;->d:Lcom/instagram/common/e/a/c;

    return-void
.end method

.method private a(Lcom/instagram/common/e/a/f;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/b/l;Lcom/instagram/common/e/a/c;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/common/e/b/l;->a(Lcom/instagram/common/e/a/c;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/common/e/b/l;Lcom/instagram/common/e/a/f;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/common/e/b/l;->a(Lcom/instagram/common/e/a/f;)V

    return-void
.end method

.method private declared-synchronized e()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;
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

    iget-object v2, p0, Lcom/instagram/common/e/b/l;->d:Lcom/instagram/common/e/a/c;

    invoke-interface {v2, v0, v1}, Lcom/instagram/common/e/a/c;->a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;
    :try_end_35
    .catchall {:try_start_7 .. :try_end_35} :catchall_36

    goto :goto_5

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/instagram/common/e/b/l;->e:Lcom/c/a/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_2a

    if-nez v0, :cond_1f

    :try_start_5
    iget-object v0, p0, Lcom/instagram/common/e/b/l;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->g(Lcom/instagram/common/e/b/h;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/e/b/l;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v1}, Lcom/instagram/common/e/b/h;->h(Lcom/instagram/common/e/b/h;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/instagram/common/e/a/d;->a(Landroid/content/Context;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    const-wide/32 v1, 0x1e00000

    invoke-static {v0, v1, v2}, Lcom/c/a/a;->a(Ljava/io/File;J)Lcom/c/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/e/b/l;->e:Lcom/c/a/a;
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_1f} :catch_21

    :cond_1f
    monitor-exit p0

    return-void

    :catch_21
    move-exception v0

    :try_start_22
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open disk cache for images"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lch/boye/httpclientandroidlib/client/HttpClient;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/instagram/common/e/b/l;->e()V

    :cond_7
    iget-object v0, p0, Lcom/instagram/common/e/b/l;->f:Lch/boye/httpclientandroidlib/client/HttpClient;

    return-object v0
.end method

.method public final a(Lch/boye/httpclientandroidlib/client/methods/HttpGet;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->b:Ljava/util/Set;

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

.method public final b()Lcom/c/a/a;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->e:Lcom/c/a/a;

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/instagram/common/e/b/l;->f()V

    :cond_7
    iget-object v0, p0, Lcom/instagram/common/e/b/l;->e:Lcom/c/a/a;

    return-object v0
.end method

.method public final c()Lcom/instagram/common/e/b/e;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/instagram/common/e/b/e",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->a:Lcom/instagram/common/e/b/h;

    invoke-static {v0}, Lcom/instagram/common/e/b/h;->i(Lcom/instagram/common/e/b/h;)Lcom/instagram/common/e/b/e;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lcom/instagram/common/e/b/g;
    .registers 2

    iget-object v0, p0, Lcom/instagram/common/e/b/l;->c:Lcom/instagram/common/e/b/g;

    return-object v0
.end method
