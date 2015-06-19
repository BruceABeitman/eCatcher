.class public final Lcom/squareup/okhttp/internal/http/ad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/n;


# instance fields
.field private final a:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/ad;->a:Ljava/net/ResponseCache;

    return-void
.end method

.method static synthetic b()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot modify the request."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access the response body."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d()Ljava/lang/RuntimeException;
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ResponseCache cannot access SSL internals"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/z;
    .registers 9

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->e()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/t;->a(Lcom/squareup/okhttp/internal/http/e;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ad;->a:Ljava/net/ResponseCache;

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->b()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/u;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v2

    if-nez v2, :cond_1a

    :goto_19
    return-object v1

    :cond_1a
    new-instance v3, Lcom/squareup/okhttp/internal/http/ab;

    invoke-direct {v3}, Lcom/squareup/okhttp/internal/http/ab;-><init>()V

    invoke-virtual {v3, p1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/u;)Lcom/squareup/okhttp/internal/http/ab;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_34

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_77

    :cond_34
    move-object v0, v1

    :goto_35
    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/ab;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/ab;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    new-instance v4, Lcom/squareup/okhttp/internal/http/f;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/http/f;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_49

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_67
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Lcom/squareup/okhttp/internal/http/f;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/internal/http/f;

    goto :goto_67

    :cond_77
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_35

    :cond_7f
    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/http/f;->a()Lcom/squareup/okhttp/internal/http/e;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/e;)Lcom/squareup/okhttp/internal/http/ab;

    sget-object v1, Lcom/squareup/okhttp/ResponseSource;->a:Lcom/squareup/okhttp/ResponseSource;

    invoke-virtual {v3, v1}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/ResponseSource;)Lcom/squareup/okhttp/internal/http/ab;

    invoke-virtual {v2}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v1

    new-instance v4, Lcom/squareup/okhttp/internal/http/ad$1;

    invoke-direct {v4, v0, v1}, Lcom/squareup/okhttp/internal/http/ad$1;-><init>(Lcom/squareup/okhttp/internal/http/e;Ljava/io/InputStream;)V

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/internal/http/aa;)Lcom/squareup/okhttp/internal/http/ab;

    instance-of v0, v2, Ljava/net/SecureCacheResponse;

    if-eqz v0, :cond_b7

    move-object v0, v2

    check-cast v0, Ljava/net/SecureCacheResponse;

    :try_start_9e
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getServerCertificateChain()Ljava/util/List;
    :try_end_a1
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_9e .. :try_end_a1} :catch_bd

    move-result-object v1

    :goto_a2
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getLocalCertificateChain()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_ac

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :cond_ac
    invoke-virtual {v0}, Ljava/net/SecureCacheResponse;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/squareup/okhttp/i;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/squareup/okhttp/i;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/squareup/okhttp/internal/http/ab;->a(Lcom/squareup/okhttp/i;)Lcom/squareup/okhttp/internal/http/ab;

    :cond_b7
    invoke-virtual {v3}, Lcom/squareup/okhttp/internal/http/ab;->a()Lcom/squareup/okhttp/internal/http/z;

    move-result-object v1

    goto/16 :goto_19

    :catch_bd
    move-exception v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_a2
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/z;)Ljava/net/CacheRequest;
    .registers 5

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->b()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/http/z;->a()Lcom/squareup/okhttp/internal/http/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/http/u;->l()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/squareup/okhttp/internal/http/af;

    new-instance v2, Lcom/squareup/okhttp/internal/http/ae;

    invoke-direct {v2, p1}, Lcom/squareup/okhttp/internal/http/ae;-><init>(Lcom/squareup/okhttp/internal/http/z;)V

    invoke-direct {v0, v2}, Lcom/squareup/okhttp/internal/http/af;-><init>(Lcom/squareup/okhttp/internal/http/ae;)V

    :goto_1c
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/ad;->a:Ljava/net/ResponseCache;

    invoke-virtual {v2, v1, v0}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0

    :cond_23
    new-instance v0, Lcom/squareup/okhttp/internal/http/ae;

    invoke-direct {v0, p1}, Lcom/squareup/okhttp/internal/http/ae;-><init>(Lcom/squareup/okhttp/internal/http/z;)V

    goto :goto_1c
.end method

.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/ResponseSource;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/http/z;Lcom/squareup/okhttp/internal/http/z;)V
    .registers 3

    return-void
.end method

.method public final b(Lcom/squareup/okhttp/internal/http/u;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method
