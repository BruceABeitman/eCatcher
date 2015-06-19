.class public Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;
.super Ljava/lang/Object;
.source "ResponseAuthCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method private cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V
    .registers 8

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Caching \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_3a
    invoke-interface {p1, p2, v0}, Lch/boye/httpclientandroidlib/client/AuthCache;->put(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/client/AuthCache;->remove(Lch/boye/httpclientandroidlib/HttpHost;)V

    goto :goto_3d
.end method

.method private isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z
    .registers 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    :goto_d
    return v0

    :cond_e
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    const-string v2, "Digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_22
    const/4 v0, 0x1

    goto :goto_d
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 7

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    if-nez p2, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    const-string v0, "http.auth.auth-cache"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/AuthCache;

    const-string v1, "http.target_host"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v2, "http.auth.target-scope"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v1, :cond_70

    if-eqz v2, :cond_70

    invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_70

    if-nez v0, :cond_42

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;-><init>()V

    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_42
    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V

    move-object v2, v0

    :goto_46
    const-string v0, "http.proxy_host"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v1, "http.auth.proxy-scope"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v0, :cond_6f

    if-eqz v1, :cond_6f

    invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->isCachable(Lch/boye/httpclientandroidlib/auth/AuthState;)Z

    move-result v3

    if-eqz v3, :cond_6f

    if-nez v2, :cond_6c

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/BasicAuthCache;-><init>()V

    const-string v3, "http.auth.auth-cache"

    invoke-interface {p2, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6c
    invoke-direct {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;->cache(Lch/boye/httpclientandroidlib/client/AuthCache;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthState;)V

    :cond_6f
    return-void

    :cond_70
    move-object v2, v0

    goto :goto_46
.end method
