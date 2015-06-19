.class public abstract Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.super Ljava/lang/Object;
.source "AbstractHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpClient;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .annotation build Lch/boye/httpclientandroidlib/annotation/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-void
.end method

.method private static determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;
    .registers 5

    const/4 v0, 0x0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    if-nez v0, :cond_26

    new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "URI does not specify a valid host name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    return-object v0
.end method

.method private final declared-synchronized getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
    .registers 7

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    if-nez v1, :cond_34

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I

    move-result v3

    new-array v4, v3, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_1c

    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object v5

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I

    move-result v1

    new-array v3, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :goto_22
    if-ge v0, v1, :cond_2d

    invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object v5

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_2d
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    invoke-direct {v0, v4, v3}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;

    :cond_34
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_36
    .catchall {:try_start_2 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearRequestInterceptors()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearResponseInterceptors()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;-><init>()V

    const-string v1, "Basic"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/BasicSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    const-string v1, "Digest"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/DigestSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    const-string v1, "NTLM"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/auth/NTLMSchemeFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/auth/AuthSchemeFactory;)V

    return-object v0
.end method

.method protected createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .registers 6

    invoke-static {}, Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;->createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v3

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    const/4 v2, 0x0

    const-string v1, "http.connection-manager.factory-class-name"

    invoke-interface {v4, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_58

    :try_start_13
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;

    move-object v1, v0
    :try_end_1f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1f} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1f} :catch_3c
    .catch Ljava/lang/InstantiationException; {:try_start_13 .. :try_end_1f} :catch_47

    :goto_1f
    if-eqz v1, :cond_52

    invoke-interface {v1, v4, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManagerFactory;->newInstance(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    :goto_25
    return-object v1

    :catch_26
    move-exception v2

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid class name: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_3c
    move-exception v1

    new-instance v2, Ljava/lang/IllegalAccessError;

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_47
    move-exception v1

    new-instance v2, Ljava/lang/InstantiationError;

    invoke-virtual {v1}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_52
    new-instance v1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    invoke-direct {v1, v3}, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    goto :goto_25

    :cond_58
    move-object v1, v2

    goto :goto_1f
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .registers 26
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;
    .registers 27

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-object v0
.end method

.method protected createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;-><init>()V

    return-object v0
.end method

.method protected createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;-><init>()V

    const-string v1, "best-match"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/BestMatchSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    const-string v1, "compatibility"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/BrowserCompatSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    const-string v1, "netscape"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/NetscapeDraftSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    const-string v1, "rfc2109"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2109SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    const-string v1, "rfc2965"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/RFC2965SpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    const-string v1, "ignoreCookies"

    new-instance v2, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;

    invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/cookie/IgnoreSpecFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->register(Ljava/lang/String;Lch/boye/httpclientandroidlib/cookie/CookieSpecFactory;)V

    return-object v0
.end method

.method protected createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCookieStore;-><init>()V

    return-object v0
.end method

.method protected createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/BasicCredentialsProvider;-><init>()V

    return-object v0
.end method

.method protected createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    const-string v1, "http.scheme-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.authscheme-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookiespec-registry"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.cookie-store"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.credentials-provider"

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected abstract createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.end method

.method protected abstract createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
.end method

.method protected createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-object v0
.end method

.method protected createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpRoutePlanner;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;)V

    return-object v0
.end method

.method protected createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultProxyAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;-><init>()V

    return-object v0
.end method

.method protected createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V

    return-object v0
.end method

.method protected createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultTargetAuthenticationHandler;-><init>()V

    return-object v0
.end method

.method protected createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;-><init>()V

    return-object v0
.end method

.method protected determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 6

    const/4 v3, 0x0

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-direct {v0, v3, v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/ClientParamsStack;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 20

    if-nez p2, :cond_a

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Request must not be null."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    monitor-enter p0

    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpContext()Lch/boye/httpclientandroidlib/protocol/HttpContext;

    move-result-object v2

    if-nez p3, :cond_56

    move-object v15, v2

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v7

    invoke-direct/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProtocolProcessor()Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineParams(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v14

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientRequestDirector(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/RequestDirector;

    move-result-object v2

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_b .. :try_end_4d} :catchall_5f

    :try_start_4d
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v15}, Lch/boye/httpclientandroidlib/client/RequestDirector;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    :try_end_54
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_4d .. :try_end_54} :catch_62

    move-result-object v2

    return-object v2

    :cond_56
    :try_start_56
    new-instance v3, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;

    move-object/from16 v0, p3

    invoke-direct {v3, v0, v2}, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_5f

    move-object v15, v3

    goto :goto_12

    :catchall_5f
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_62
    move-exception v2

    new-instance v3, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {v3, v2}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public final execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 5

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Request must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    if-nez p3, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response handler must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    :try_start_e
    invoke-interface {p3, v1}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_11} :catch_1a

    move-result-object v0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-object v0

    :catch_1a
    move-exception v0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    :try_start_1f
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_22} :catch_29

    :goto_22
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_32

    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_29
    move-exception v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Error consuming content after an exception."

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_22

    :cond_32
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_39

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    :cond_39
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_40

    check-cast v0, Ljava/io/IOException;

    throw v0

    :cond_40
    new-instance v1, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v1, v0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler",
            "<+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->determineTarget(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getAuthSchemes()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createAuthSchemeRegistry()Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionKeepAliveStrategy()Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createClientConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createConnectionReuseStrategy()Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieSpecs()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieSpecRegistry()Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCookieStore()Lch/boye/httpclientandroidlib/client/CookieStore;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createCredentialsProvider()Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->mutableProcessor:Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRequestRetryHandler()Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createProxyAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRedirectHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_7

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRedirectStrategy()Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    if-nez v0, :cond_c

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    :cond_c
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createRequestExecutor()Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRequestInterceptorCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getRequestInterceptorCount()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResponseInterceptorCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->getResponseInterceptorCount()I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createHttpRoutePlanner()Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createTargetAuthenticationHandler()Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->createUserTokenHandler()Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    :cond_b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->getHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->protocolProcessor:Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAuthSchemes(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedAuthSchemes:Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieSpecs(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->supportedCookieSpecs:Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->cookieStore:Lch/boye/httpclientandroidlib/client/CookieStore;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->credsProvider:Lch/boye/httpclientandroidlib/client/CredentialsProvider;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHttpRequestRetryHandler(Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setKeepAliveStrategy(Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->defaultParams:Lch/boye/httpclientandroidlib/params/HttpParams;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProxyAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectHandler(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRedirectStrategy(Lch/boye/httpclientandroidlib/client/RedirectStrategy;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRoutePlanner(Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTargetAuthenticationHandler(Lch/boye/httpclientandroidlib/client/AuthenticationHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserTokenHandler(Lch/boye/httpclientandroidlib/client/UserTokenHandler;)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
