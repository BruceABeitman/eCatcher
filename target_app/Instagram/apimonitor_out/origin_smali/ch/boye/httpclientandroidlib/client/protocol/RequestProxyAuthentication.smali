.class public Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;
.super Ljava/lang/Object;
.source "RequestProxyAuthentication.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 8

    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP context may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    const-string v1, "Proxy-Authorization"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    const-string v1, "http.connection"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "HTTP connection not set in the context"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_2f
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_1c

    const-string v1, "http.auth.proxy-scope"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-nez v1, :cond_4b

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Proxy auth state not set in the context"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_4b
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v2

    if-eqz v2, :cond_1c

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v3

    if-nez v3, :cond_5f

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "User credentials not available"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_5f
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScope()Lch/boye/httpclientandroidlib/auth/AuthScope;

    move-result-object v1

    if-nez v1, :cond_6b

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_6b
    :try_start_6b
    instance-of v1, v2, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;

    if-eqz v1, :cond_9d

    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;

    move-object v1, v0

    invoke-interface {v1, v3, p1, p2}, Lch/boye/httpclientandroidlib/auth/ContextAwareAuthScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    :goto_77
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
    :try_end_7a
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_6b .. :try_end_7a} :catch_7b

    goto :goto_1c

    :catch_7b
    move-exception v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Proxy authentication error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;)V

    goto :goto_1c

    :cond_9d
    :try_start_9d
    invoke-interface {v2, v3, p1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->authenticate(Lch/boye/httpclientandroidlib/auth/Credentials;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/Header;
    :try_end_a0
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_9d .. :try_end_a0} :catch_7b

    move-result-object v1

    goto :goto_77
.end method
