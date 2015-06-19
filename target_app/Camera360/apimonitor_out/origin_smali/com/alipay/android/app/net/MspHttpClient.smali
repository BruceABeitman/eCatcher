.class public final Lcom/alipay/android/app/net/MspHttpClient;
.super Ljava/lang/Object;
.source "MspHttpClient.java"


# static fields
.field public static final UA_MSP:Ljava/lang/String; = "msp"

.field private static mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;


# instance fields
.field private final mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-void
.end method

.method public static newInstance()Lcom/alipay/android/app/net/MspHttpClient;
    .registers 13

    const/16 v12, 0x4e20

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget-object v8, Lcom/alipay/android/app/net/MspHttpClient;->mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;

    if-nez v8, :cond_81

    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    sget-object v8, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    invoke-static {v5, v11}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v8, "http.protocol.expect-continue"

    invoke-interface {v5, v8, v10}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    const/16 v8, 0x32

    invoke-static {v5, v8}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/16 v8, 0x1e

    invoke-direct {v1, v8}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v5, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    const-wide/16 v8, 0x3e8

    invoke-static {v5, v8, v9}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v5, v12}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v8, 0x4000

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    invoke-static {v5, v10}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v5, v11}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    invoke-static {v5, v10}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    const-string/jumbo v8, "msp"

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    :try_start_49
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->STRICT_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v7, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v8, "https"

    const/16 v9, 0x1bb

    invoke-direct {v4, v8, v7, v9}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string/jumbo v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v3, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-virtual {v6, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    invoke-virtual {v6, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v5, v6}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    new-instance v8, Lcom/alipay/android/app/net/MspHttpClient;

    invoke-direct {v8, v0, v5}, Lcom/alipay/android/app/net/MspHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v8, Lcom/alipay/android/app/net/MspHttpClient;->mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_81} :catch_84

    :cond_81
    :goto_81
    sget-object v8, Lcom/alipay/android/app/net/MspHttpClient;->mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;

    return-object v8

    :catch_84
    move-exception v2

    invoke-static {v2}, Lcom/alipay/android/app/util/LogUtils;->printExceptionStackTrace(Ljava/lang/Object;)V

    const-string/jumbo v8, "\u4e0d\u5e94\u8be5\u6267\u884c\u5230\u7684\u5730\u65b9"

    invoke-static {v8}, Lcom/alipay/android/app/util/LogUtils;->e(Ljava/lang/String;)V

    new-instance v8, Lcom/alipay/android/app/net/MspHttpClient;

    invoke-direct {v8, v5}, Lcom/alipay/android/app/net/MspHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    sput-object v8, Lcom/alipay/android/app/net/MspHttpClient;->mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;

    goto :goto_81
.end method


# virtual methods
.method public clear()V
    .registers 5

    invoke-virtual {p0}, Lcom/alipay/android/app/net/MspHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_16

    const-wide/16 v1, 0x1e

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    :cond_16
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    return-object v1

    :catch_7
    move-exception v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .registers 2

    iget-object v0, p0, Lcom/alipay/android/app/net/MspHttpClient;->mDelegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public shutdown()V
    .registers 3

    invoke-virtual {p0}, Lcom/alipay/android/app/net/MspHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/android/app/net/MspHttpClient;->mHttpClient:Lcom/alipay/android/app/net/MspHttpClient;

    :cond_c
    return-void
.end method
