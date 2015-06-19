.class public final Lcom/squareup/okhttp/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/net/URLStreamHandlerFactory;


# instance fields
.field private final a:Lcom/squareup/okhttp/q;

.field private b:Ljava/net/Proxy;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/net/ProxySelector;

.field private e:Ljava/net/CookieHandler;

.field private f:Lcom/squareup/okhttp/n;

.field private g:Ljavax/net/ssl/SSLSocketFactory;

.field private h:Ljavax/net/ssl/HostnameVerifier;

.field private i:Lcom/squareup/okhttp/j;

.field private j:Lcom/squareup/okhttp/h;

.field private k:Z

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/m;->k:Z

    new-instance v0, Lcom/squareup/okhttp/q;

    invoke-direct {v0}, Lcom/squareup/okhttp/q;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/q;

    return-void
.end method

.method private declared-synchronized p()Ljavax/net/ssl/SSLSocketFactory;
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_22

    if-nez v0, :cond_17

    :try_start_5
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_22
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_17} :catch_1b

    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_22

    monitor-exit p0

    return-object v0

    :catch_1b
    move-exception v0

    :try_start_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/m;->l:I

    return v0
.end method

.method public final a(Lcom/squareup/okhttp/b;)Lcom/squareup/okhttp/m;
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/n;

    return-object p0
.end method

.method public final a(Ljava/net/Proxy;)Lcom/squareup/okhttp/m;
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/m;->b:Ljava/net/Proxy;

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/squareup/okhttp/m;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lcom/squareup/okhttp/m;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/squareup/okhttp/Protocol;->c:Lcom/squareup/okhttp/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "protocols doesn\'t contain http/1.1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    invoke-static {v0}, Lcom/squareup/okhttp/internal/o;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/util/List;

    return-object p0
.end method

.method public final a(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/m;
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/m;->h:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final a(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/m;
    .registers 2

    iput-object p1, p0, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public final a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/m;->b:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0}, Lcom/squareup/okhttp/m;->a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .registers 7

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/squareup/okhttp/m;->o()Lcom/squareup/okhttp/m;

    move-result-object v3

    iget-object v0, v3, Lcom/squareup/okhttp/m;->d:Ljava/net/ProxySelector;

    if-nez v0, :cond_12

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, v3, Lcom/squareup/okhttp/m;->d:Ljava/net/ProxySelector;

    :cond_12
    iget-object v0, v3, Lcom/squareup/okhttp/m;->e:Ljava/net/CookieHandler;

    if-nez v0, :cond_1c

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    iput-object v0, v3, Lcom/squareup/okhttp/m;->e:Ljava/net/CookieHandler;

    :cond_1c
    iget-object v0, v3, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/n;

    if-nez v0, :cond_2e

    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v1, v0, Lcom/squareup/okhttp/n;

    if-eqz v1, :cond_6a

    :cond_2a
    check-cast v0, Lcom/squareup/okhttp/n;

    :goto_2c
    iput-object v0, v3, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/n;

    :cond_2e
    iget-object v0, v3, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_38

    invoke-direct {p0}, Lcom/squareup/okhttp/m;->p()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v3, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;

    :cond_38
    iget-object v0, v3, Lcom/squareup/okhttp/m;->h:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_40

    sget-object v0, Lcom/squareup/okhttp/internal/b/b;->a:Lcom/squareup/okhttp/internal/b/b;

    iput-object v0, v3, Lcom/squareup/okhttp/m;->h:Ljavax/net/ssl/HostnameVerifier;

    :cond_40
    iget-object v0, v3, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/j;

    if-nez v0, :cond_48

    sget-object v0, Lcom/squareup/okhttp/internal/http/g;->a:Lcom/squareup/okhttp/j;

    iput-object v0, v3, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/j;

    :cond_48
    iget-object v0, v3, Lcom/squareup/okhttp/m;->j:Lcom/squareup/okhttp/h;

    if-nez v0, :cond_52

    invoke-static {}, Lcom/squareup/okhttp/h;->a()Lcom/squareup/okhttp/h;

    move-result-object v0

    iput-object v0, v3, Lcom/squareup/okhttp/m;->j:Lcom/squareup/okhttp/h;

    :cond_52
    iget-object v0, v3, Lcom/squareup/okhttp/m;->c:Ljava/util/List;

    if-nez v0, :cond_5a

    sget-object v0, Lcom/squareup/okhttp/internal/o;->f:Ljava/util/List;

    iput-object v0, v3, Lcom/squareup/okhttp/m;->c:Ljava/util/List;

    :cond_5a
    iput-object p2, v3, Lcom/squareup/okhttp/m;->b:Ljava/net/Proxy;

    const-string v0, "http"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    new-instance v0, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;

    invoke-direct {v0, p1, v3}, Lcom/squareup/okhttp/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/m;)V

    :goto_69
    return-object v0

    :cond_6a
    new-instance v1, Lcom/squareup/okhttp/internal/http/ad;

    invoke-direct {v1, v0}, Lcom/squareup/okhttp/internal/http/ad;-><init>(Ljava/net/ResponseCache;)V

    move-object v0, v1

    goto :goto_2c

    :cond_71
    const-string v0, "https"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    new-instance v0, Lcom/squareup/okhttp/internal/http/s;

    invoke-direct {v0, p1, v3}, Lcom/squareup/okhttp/internal/http/s;-><init>(Ljava/net/URL;Lcom/squareup/okhttp/m;)V

    goto :goto_69

    :cond_7f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected protocol: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/m;->l:I

    return-void
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/squareup/okhttp/m;->m:I

    return v0
.end method

.method public final b(JLjava/util/concurrent/TimeUnit;)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    if-nez p3, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    long-to-int v0, v0

    iput v0, p0, Lcom/squareup/okhttp/m;->m:I

    return-void
.end method

.method public final c()Ljava/net/Proxy;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->b:Ljava/net/Proxy;

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/squareup/okhttp/m;->o()Lcom/squareup/okhttp/m;

    move-result-object v0

    return-object v0
.end method

.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Lcom/squareup/okhttp/m$1;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/m$1;-><init>(Lcom/squareup/okhttp/m;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public final d()Ljava/net/ProxySelector;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->d:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final e()Ljava/net/CookieHandler;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->e:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public final f()Lcom/squareup/okhttp/m;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/n;

    return-object p0
.end method

.method public final g()Lcom/squareup/okhttp/n;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/m;->f:Lcom/squareup/okhttp/n;

    return-object v0
.end method

.method public final h()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->g:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final i()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->h:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final j()Lcom/squareup/okhttp/j;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->i:Lcom/squareup/okhttp/j;

    return-object v0
.end method

.method public final k()Lcom/squareup/okhttp/h;
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/m;->j:Lcom/squareup/okhttp/h;

    return-object v0
.end method

.method public final l()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/squareup/okhttp/m;->k:Z

    return v0
.end method

.method public final m()Lcom/squareup/okhttp/q;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/m;->a:Lcom/squareup/okhttp/q;

    return-object v0
.end method

.method public final n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/squareup/okhttp/m;->c:Ljava/util/List;

    return-object v0
.end method

.method public final o()Lcom/squareup/okhttp/m;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/m;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
