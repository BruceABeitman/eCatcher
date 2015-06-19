.class public Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;
.super Ljava/lang/Object;
.source "DefaultRequestDirector.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RequestDirector;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private execCount:I

.field protected final httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field protected final keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field protected managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

.field private maxRedirects:I

.field protected final params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field protected final proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

.field protected final proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field private redirectCount:I

.field protected final redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected final redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

.field protected final requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

.field protected final retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

.field protected final reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

.field protected final routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

.field protected final targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

.field protected final targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

.field protected final userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

.field private virtualHost:Lch/boye/httpclientandroidlib/HttpHost;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectHandler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    if-nez p1, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Log may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    if-nez p2, :cond_1a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Request executor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1a
    if-nez p3, :cond_24

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Client connection manager may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    if-nez p4, :cond_2e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection reuse strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2e
    if-nez p5, :cond_38

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Connection keep alive strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_38
    if-nez p6, :cond_42

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Route planner may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_42
    if-nez p7, :cond_4c

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP protocol processor may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4c
    if-nez p8, :cond_56

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP request retry handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_56
    if-nez p9, :cond_60

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Redirect strategy may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    if-nez p10, :cond_6a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    if-nez p11, :cond_74

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Proxy authentication handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_74
    if-nez p12, :cond_7e

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "User token handler may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7e
    if-nez p13, :cond_88

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "HTTP parameters may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_88
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    iput-object p8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    iput-object p9, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    iput-object p10, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    iput-object p11, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object/from16 v0, p12

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-object/from16 v0, p13

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    const/4 v1, 0x0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    const/4 v1, 0x0

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    const-string v2, "http.protocol.max-redirects"

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;-><init>()V

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v2, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;

    invoke-direct {v2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    new-instance v10, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;

    move-object/from16 v0, p8

    invoke-direct {v10, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;-><init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    invoke-direct/range {v1 .. v14}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;Lch/boye/httpclientandroidlib/client/RedirectStrategy;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/client/UserTokenHandler;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method private abortConnection()V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_d

    const/4 v1, 0x0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    :try_start_7
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->abortConnection()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_a} :catch_e

    :cond_a
    :goto_a
    :try_start_a
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_21

    :cond_d
    :goto_d
    return-void

    :catch_e
    move-exception v1

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_21
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Error releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V
    .registers 4

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    :cond_1b
    return-void
.end method

.method private processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/auth/AuthState;",
            "Lch/boye/httpclientandroidlib/client/AuthenticationHandler;",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-interface {p3, p1, p4, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->selectScheme(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScheme(Lch/boye/httpclientandroidlib/auth/AuthScheme;)V

    :cond_d
    move-object v1, v0

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    if-nez v0, :cond_39

    new-instance v0, Lch/boye/httpclientandroidlib/auth/AuthenticationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " authorization challenge expected, but not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authorization challenge processed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void
.end method

.method private tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 9

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1

    :try_start_7
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, v2, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :goto_16
    invoke-virtual {p0, v2, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    return-void

    :cond_1a
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v3}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->getSoTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)I

    move-result v3

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setSocketTimeout(I)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_25} :catch_26

    goto :goto_16

    :catch_26
    move-exception v1

    :try_start_27
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2c} :catch_80

    :goto_2c
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-interface {v3, v1, v0, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_7f

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "I/O exception ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") caught when connecting to the target host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    :cond_66
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_77

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_77
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v3, "Retrying connect"

    invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto :goto_5

    :cond_7f
    throw v1

    :catch_80
    move-exception v3

    goto :goto_2c
.end method

.method private tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 10

    const/4 v1, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v2

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v3

    move-object v0, v1

    :goto_a
    iget v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->incrementExecCount()V

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->isRepeatable()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Cannot retry non-repeatable request"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    if-eqz v0, :cond_2a

    new-instance v1, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string v2, "Cannot retry request with a non-repeatable request entity.  The cause lists the reason the original request failed."

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2a
    new-instance v0, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;

    const-string v1, "Cannot retry request with a non-repeatable request entity."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/NonRepeatableRequestException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :try_start_32
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {v3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v0

    if-nez v0, :cond_7b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Reopening the direct connection."

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, v3, p2, v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :cond_4e
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_72

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempt "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->execCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to execute request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_72
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v0, v2, v4, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    :goto_7a
    return-object v1

    :cond_7b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Proxied connection. Need to start over."

    invoke-virtual {v0, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_82} :catch_83

    goto :goto_7a

    :catch_83
    move-exception v0

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Closing the connection."

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :try_start_8b
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_90} :catch_e9

    :goto_90
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->retryHandler:Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getExecCount()I

    move-result v5

    invoke-interface {v4, v0, v5, p2}, Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_e8

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isInfoEnabled()Z

    move-result v4

    if-eqz v4, :cond_ce

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "I/O exception ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") caught when processing request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    :cond_ce
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_df

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_df
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Retrying request"

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->info(Ljava/lang/Object;)V

    goto/16 :goto_a

    :cond_e8
    throw v0

    :catch_e9
    move-exception v4

    goto :goto_90
.end method

.method private updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .registers 10

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->isValid()Z

    move-result v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_1f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    :cond_1f
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v2

    new-instance v3, Lch/boye/httpclientandroidlib/auth/AuthScope;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getRealm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v0, v4, v5}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Authentication scope: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_4c
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_76

    invoke-interface {p3, v3}, Lch/boye/httpclientandroidlib/client/CredentialsProvider;->getCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_67

    if-eqz v0, :cond_6e

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Found credentials"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_67
    :goto_67
    invoke-virtual {p1, v3}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->setCredentials(Lch/boye/httpclientandroidlib/auth/Credentials;)V

    goto :goto_6

    :cond_6e
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "Credentials not found"

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_67

    :cond_76
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_67

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authentication failed"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_67
.end method

.method private wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
    .registers 3

    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_c

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    goto :goto_b
.end method


# virtual methods
.method protected createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;
    .registers 7

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v0

    if-gez v0, :cond_20

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->getSchemeRegistry()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->getDefaultPort()I

    move-result v0

    :cond_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x6

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    const-string v3, "CONNECT"

    invoke-direct {v2, v3, v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v2
.end method

.method protected createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 6

    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    const-string v1, "Proxy chains are not supported."

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 15

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v10

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v11

    move v0, v7

    move-object v4, v9

    :goto_c
    if-nez v0, :cond_103

    const/4 v8, 0x1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :cond_1e
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createConnectRequest(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    const-string v1, "http.target_host"

    invoke-interface {p2, v1, v11}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.proxy_host"

    invoke-interface {p2, v1, v10}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.connection"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.target-scope"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.proxy-scope"

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-interface {p2, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.request"

    invoke-interface {p2, v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {v1, v0, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-virtual {v0, v4, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_8b

    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected response to CONNECT request: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8b
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-eqz v6, :cond_148

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v0}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_148

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_143

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Proxy requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    :try_start_b3
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_bc
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_b3 .. :try_end_bc} :catch_e2

    :cond_bc
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v10, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-eqz v0, :cond_151

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_13b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Connection kept alive"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    move v0, v7

    goto/16 :goto_c

    :catch_e2
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    :cond_103
    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x12b

    if-le v0, v1, :cond_14b

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_11d

    new-instance v1, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/entity/BufferedHttpEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {v4, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_11d
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CONNECT refused by proxy: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;-><init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)V

    throw v0

    :cond_13b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    move v0, v7

    goto/16 :goto_c

    :cond_143
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v9}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    :cond_148
    move v0, v8

    goto/16 :goto_c

    :cond_14b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    return v7

    :cond_151
    move v0, v8

    goto/16 :goto_c
.end method

.method protected determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .registers 6

    if-nez p1, :cond_e

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    const-string v1, "http.default-host"

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/HttpHost;

    :cond_e
    if-nez p1, :cond_18

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host must not be null, or set in parameters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->routePlanner:Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoutePlanner;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v0

    return-object v0
.end method

.method protected establishRoute(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 9

    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/routing/BasicRouteDirector;-><init>()V

    :cond_5
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRouteDirector;->nextStep(Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;Lch/boye/httpclientandroidlib/conn/routing/RouteInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_8e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown step indicator "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from RouteDirector."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2d
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->open(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    :goto_34
    :pswitch_34
    if-gtz v2, :cond_5

    return-void

    :pswitch_37
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToTarget(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v1

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v4, "Tunnel to target created."

    invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v3, v1, v4}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelTarget(ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_34

    :pswitch_4a
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->createTunnelToProxy(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v5, "Tunnel to proxy created."

    invoke-virtual {v4, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopTarget(I)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v4, v1, v3, v5}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->tunnelProxy(Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_34

    :pswitch_67
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v1, p2, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->layerProtocol(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    goto :goto_34

    :pswitch_6f
    new-instance v0, Lch/boye/httpclientandroidlib/HttpException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to establish route: planned = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; current = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/HttpException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_8e
    .packed-switch -0x1
        :pswitch_6f
        :pswitch_34
        :pswitch_2d
        :pswitch_2d
        :pswitch_37
        :pswitch_4a
        :pswitch_67
    .end packed-switch
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 17

    const/4 v3, 0x0

    const/4 v6, -0x1

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v4

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-virtual {v4, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    move-object/from16 v0, p3

    invoke-virtual {p0, p1, v4, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v5

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v1

    const-string v2, "http.virtual-host"

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz v1, :cond_44

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v1

    if-ne v1, v6, :cond_44

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v1

    if-eq v1, v6, :cond_44

    new-instance v2, Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v7}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v1, v7}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    :cond_44
    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    invoke-direct {v2, v4, v5}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    const/4 v1, 0x0

    move v4, v3

    :goto_4b
    if-nez v3, :cond_1c6

    :try_start_4d
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v5

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    const-string v1, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-nez v1, :cond_ab

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    invoke-interface {v1, v6, v7}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->requestConnection(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    move-result-object v8

    instance-of v1, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_72

    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    move-object v1, v0

    invoke-interface {v1, v8}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V

    :cond_72
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->getTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)J
    :try_end_77
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_4d .. :try_end_77} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_4d .. :try_end_77} :catch_219
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_77} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_77} :catch_232

    move-result-wide v9

    :try_start_78
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v8, v9, v10, v1}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->getConnection(JLjava/util/concurrent/TimeUnit;)Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-result-object v1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
    :try_end_80
    .catch Ljava/lang/InterruptedException; {:try_start_78 .. :try_end_80} :catch_19a
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_78 .. :try_end_80} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_78 .. :try_end_80} :catch_219
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_80} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_78 .. :try_end_80} :catch_232

    :try_start_80
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->isStaleCheckingEnabled(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection check"

    invoke-virtual {v1, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->isStale()Z

    move-result v1

    if-eqz v1, :cond_ab

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v8, "Stale connection detected"

    invoke-virtual {v1, v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    :cond_ab
    instance-of v1, p2, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    if-eqz v1, :cond_b8

    move-object v0, p2

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;

    move-object v1, v0

    iget-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v1, v8}, Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;->setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
    :try_end_b8
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_80 .. :try_end_b8} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_80 .. :try_end_b8} :catch_219
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_b8} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_80 .. :try_end_b8} :catch_232

    :cond_b8
    :try_start_b8
    move-object/from16 v0, p3

    invoke-direct {p0, v2, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryConnect(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_bd
    .catch Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException; {:try_start_b8 .. :try_end_bd} :catch_1b0
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_b8 .. :try_end_bd} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_b8 .. :try_end_bd} :catch_219
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_bd} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_b8 .. :try_end_bd} :catch_232

    :try_start_bd
    invoke-virtual {v5}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V

    invoke-virtual {p0, v5, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v1, :cond_cb

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    :cond_cb
    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v6

    const-string v8, "http.target_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v8, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.proxy_host"

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.connection"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.target-scope"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "http.auth.proxy-scope"

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    move-object/from16 v0, p3

    invoke-interface {v0, v1, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v5, v6, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    move-object/from16 v0, p3

    invoke-direct {p0, v2, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->tryExecute(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v5

    if-eqz v5, :cond_237

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-interface {v5, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->requestExec:Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;

    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->httpProcessor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    move-object/from16 v0, p3

    invoke-virtual {v1, v5, v4, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->reuseStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    move-object/from16 v0, p3

    invoke-interface {v1, v5, v0}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v4

    if-eqz v4, :cond_16d

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->keepAliveStrategy:Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;

    move-object/from16 v0, p3

    invoke-interface {v1, v5, v0}, Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;->getKeepAliveDuration(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)J

    move-result-wide v8

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_166

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-lez v1, :cond_1e3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "for "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_152
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Connection can be kept alive "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_166
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setIdleDuration(JLjava/util/concurrent/TimeUnit;)V

    :cond_16d
    move-object/from16 v0, p3

    invoke-virtual {p0, v2, v5, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    move-result-object v1

    if-nez v1, :cond_1e7

    const/4 v1, 0x1

    move-object v12, v2

    move v2, v1

    move-object v1, v12

    :goto_179
    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v3, :cond_195

    if-nez v7, :cond_195

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->userTokenHandler:Lch/boye/httpclientandroidlib/client/UserTokenHandler;

    move-object/from16 v0, p3

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/client/UserTokenHandler;->getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v3

    const-string v6, "http.user-token"

    move-object/from16 v0, p3

    invoke-interface {v0, v6, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v3, :cond_195

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6, v3}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->setState(Ljava/lang/Object;)V

    :cond_195
    move v3, v2

    move-object v2, v1

    move-object v1, v5

    goto/16 :goto_4b

    :catch_19a
    move-exception v1

    new-instance v2, Ljava/io/InterruptedIOException;

    invoke-direct {v2}, Ljava/io/InterruptedIOException;-><init>()V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2
    :try_end_1a4
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_bd .. :try_end_1a4} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_bd .. :try_end_1a4} :catch_219
    .catch Ljava/io/IOException; {:try_start_bd .. :try_end_1a4} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_1a4} :catch_232

    :catch_1a4
    move-exception v1

    new-instance v2, Ljava/io/InterruptedIOException;

    const-string v3, "Connection has been shut down"

    invoke-direct {v2, v3}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v2

    :catch_1b0
    move-exception v1

    :try_start_1b1
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c2

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_1c2
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/TunnelRefusedException;->getResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v1

    :cond_1c6
    if-eqz v1, :cond_1d8

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    if-eqz v2, :cond_1d8

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isStreaming()Z

    move-result v2

    if-nez v2, :cond_21e

    :cond_1d8
    if-eqz v4, :cond_1df

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    :cond_1df
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V

    :goto_1e2
    return-object v1

    :cond_1e3
    const-string v1, "indefinitely"

    goto/16 :goto_152

    :cond_1e7
    if-eqz v4, :cond_209

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V

    :goto_1f5
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    invoke-virtual {v6, v2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_206

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->releaseConnection()V

    :cond_206
    move v2, v3

    goto/16 :goto_179

    :cond_209
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->close()V

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V

    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->invalidateAuthIfSuccessful(Lch/boye/httpclientandroidlib/auth/AuthState;)V
    :try_end_218
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_1b1 .. :try_end_218} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1b1 .. :try_end_218} :catch_219
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_218} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_1b1 .. :try_end_218} :catch_232

    goto :goto_1f5

    :catch_219
    move-exception v1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v1

    :cond_21e
    :try_start_21e
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    new-instance v3, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-direct {v3, v2, v5, v4}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V

    invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_22c
    .catch Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException; {:try_start_21e .. :try_end_22c} :catch_1a4
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_21e .. :try_end_22c} :catch_219
    .catch Ljava/io/IOException; {:try_start_21e .. :try_end_22c} :catch_22d
    .catch Ljava/lang/RuntimeException; {:try_start_21e .. :try_end_22c} :catch_232

    goto :goto_1e2

    :catch_22d
    move-exception v1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v1

    :catch_232
    move-exception v1

    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->abortConnection()V

    throw v1

    :cond_237
    move-object v1, v5

    goto/16 :goto_4b
.end method

.method protected handleResponse(Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;
    .registers 13

    const/4 v8, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v1

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;->getRequest()Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isRedirecting(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v3

    if-eqz v3, :cond_ea

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v3

    if-eqz v3, :cond_ea

    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    iget v4, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    if-lt v3, v4, :cond_3e

    new-instance v0, Lch/boye/httpclientandroidlib/client/RedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Maximum redirects ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->maxRedirects:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") exceeded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/RedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectCount:I

    iput-object v8, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->virtualHost:Lch/boye/httpclientandroidlib/HttpHost;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->redirectStrategy:Lch/boye/httpclientandroidlib/client/RedirectStrategy;

    invoke-interface {v3, v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectStrategy;->getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    move-result-object v3

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_76

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect URI does not specify a valid host name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_76
    new-instance v4, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/net/URI;->getPort()I

    move-result v6

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v5, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    iget-object v5, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v5, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b3

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v1

    if-eqz v1, :cond_b3

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v1

    if-eqz v1, :cond_b3

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/auth/AuthState;->invalidate()V

    :cond_b3
    invoke-direct {p0, v3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->wrapRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-virtual {p0, v4, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->determineRoute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v2

    new-instance p1, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;

    invoke-direct {p1, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RoutedRequest;-><init>(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_e9

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Redirecting to \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' via "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_e9
    :goto_e9
    return-object p1

    :cond_ea
    const-string v0, "http.auth.credentials-provider"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-eqz v6, :cond_1bc

    invoke-static {v2}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->isAuthenticating(Lch/boye/httpclientandroidlib/params/HttpParams;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_15b

    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_1bf

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    move-object v7, v0

    :goto_112
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Target requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    :try_start_11f
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_129
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_11f .. :try_end_129} :catch_138

    :cond_129
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_e9

    move-object p1, v8

    goto :goto_e9

    :catch_138
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_129

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    move-object p1, v8

    goto :goto_e9

    :cond_15b
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->targetAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    if-eqz v0, :cond_1b7

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v7

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Proxy requested authentication"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/AuthenticationHandler;->getChallenges(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    :try_start_179
    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthHandler:Lch/boye/httpclientandroidlib/client/AuthenticationHandler;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->processChallenges(Ljava/util/Map;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/AuthenticationHandler;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_183
    .catch Lch/boye/httpclientandroidlib/auth/AuthenticationException; {:try_start_179 .. :try_end_183} :catch_193

    :cond_183
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-direct {p0, v0, v7, v6}, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->updateAuthState(Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object v0

    if-nez v0, :cond_e9

    move-object p1, v8

    goto/16 :goto_e9

    :catch_193
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_183

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Authentication error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/auth/AuthenticationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    move-object p1, v8

    goto/16 :goto_e9

    :cond_1b7
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->proxyAuthState:Lch/boye/httpclientandroidlib/auth/AuthState;

    invoke-virtual {v0, v8}, Lch/boye/httpclientandroidlib/auth/AuthState;->setAuthScope(Lch/boye/httpclientandroidlib/auth/AuthScope;)V

    :cond_1bc
    move-object p1, v8

    goto/16 :goto_e9

    :cond_1bf
    move-object v7, v0

    goto/16 :goto_112
.end method

.method protected releaseConnection()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->releaseConnection()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_9

    :goto_5
    const/4 v0, 0x0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    return-void

    :catch_9
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRequestDirector;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "IOException releasing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method protected rewriteRequestURI(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .registers 7

    :try_start_0
    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getProxyHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->isTunnelled()Z

    move-result v1

    if-nez v1, :cond_22

    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V

    :cond_21
    :goto_21
    return-void

    :cond_22
    invoke-virtual {v0}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-eqz v1, :cond_21

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setURI(Ljava/net/URI;)V
    :try_end_30
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_30} :catch_31

    goto :goto_21

    :catch_31
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
