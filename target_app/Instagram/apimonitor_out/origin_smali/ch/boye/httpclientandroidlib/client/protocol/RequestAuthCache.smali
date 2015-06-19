.class public Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method private doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .registers 10

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Re-using cached \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_2a
    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthScope;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v3

    sget-object v4, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v0}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v1}, Lch/boye/httpclientandroidlib/client/CredentialsProvider;->getCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p3, p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScheme(Lch/boye/httpclientandroidlib/auth/AuthScheme;)V

    invoke-virtual {p3, v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->setCredentials(Lch/boye/httpclientandroidlib/auth/Credentials;)V

    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "No credentials for preemptive authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_45
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 8

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

    if-nez v0, :cond_26

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Auth cache not set in the context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v1, "http.auth.credentials-provider"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-nez v1, :cond_38

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Credentials provider not set in the context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_25

    :cond_38
    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v3, "http.auth.target-scope"

    invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v2, :cond_5b

    if-eqz v3, :cond_5b

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v4

    if-nez v4, :cond_5b

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/AuthCache;->get(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v4

    if-eqz v4, :cond_5b

    invoke-direct {p0, v2, v4, v3, v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    :cond_5b
    const-string v2, "http.proxy_host"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v3, "http.auth.proxy-scope"

    invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v2, :cond_25

    if-eqz v3, :cond_25

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v4

    if-nez v4, :cond_25

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/AuthCache;->get(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-direct {p0, v2, v0, v3, v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    goto :goto_25
.end method
