.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;
.source "DefaultHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public static setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 4

    sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setVersion(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    const-string v0, "ISO-8859-1"

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setContentCharset(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setTcpNoDelay(Lch/boye/httpclientandroidlib/params/HttpParams;Z)V

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpConnectionParams;->setSocketBufferSize(Lch/boye/httpclientandroidlib/params/HttpParams;I)V

    const-string v0, "ch.boye.httpclientandroidlib.client"

    const-class v1, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->getRelease()Ljava/lang/String;

    move-result-object v0

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Apache-HttpClient/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (java 1.5)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->setUserAgent(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/lang/String;)V

    return-void

    :cond_3e
    const-string v0, "UNAVAILABLE"

    goto :goto_25
.end method


# virtual methods
.method protected createHttpParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/params/SyncBasicHttpParams;-><init>()V

    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->setDefaultHttpParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .registers 3

    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestContent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestContent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseAuthCache;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    return-object v0
.end method
