.class public Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;
.super Ljava/lang/Object;
.source "RequestAddCookies.java"

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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 14

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP request may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONNECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    :goto_26
    return-void

    :cond_27
    const-string v0, "http.cookie-store"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/CookieStore;

    if-nez v0, :cond_39

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_26

    :cond_39
    const-string v1, "http.cookiespec-registry"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;

    if-nez v1, :cond_4b

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "CookieSpec registry not specified in HTTP context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_26

    :cond_4b
    const-string v2, "http.target_host"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v2, :cond_5d

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Target host not set in the context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_26

    :cond_5d
    const-string v3, "http.connection"

    invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;

    if-nez v3, :cond_6f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "HTTP connection not set in the context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_26

    :cond_6f
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v4

    invoke-static {v4}, Lch/boye/httpclientandroidlib/client/params/HttpClientParams;->getCookiePolicy(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object v8

    iget-object v4, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_93

    iget-object v4, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "CookieSpec selected: "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_93
    instance-of v4, p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-eqz v4, :cond_124

    move-object v4, p1

    check-cast v4, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    :goto_9e
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v6

    if-gez v6, :cond_1ef

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getRoute()Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    move-result-object v6

    invoke-virtual {v6}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->getHopCount()I

    move-result v6

    if-ne v6, v7, :cond_151

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getRemotePort()I

    move-result v2

    :goto_b6
    new-instance v6, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->isSecure()Z

    move-result v3

    invoke-direct {v6, v9, v2, v4, v3}, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/cookie/CookieSpec;

    move-result-object v2

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e2
    :goto_e2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_194

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0, v4}, Lch/boye/httpclientandroidlib/cookie/Cookie;->isExpired(Ljava/util/Date;)Z

    move-result v8

    if-nez v8, :cond_170

    invoke-interface {v2, v0, v6}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->match(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Z

    move-result v8

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_120

    iget-object v8, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cookie "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " match "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_120
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e2

    :cond_124
    :try_start_124
    new-instance v4, Ljava/net/URI;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v6

    invoke-interface {v6}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/net/URISyntaxException; {:try_start_124 .. :try_end_131} :catch_133

    goto/16 :goto_9e

    :catch_133
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid request URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_151
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "http"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_161

    const/16 v2, 0x50

    goto/16 :goto_b6

    :cond_161
    const-string v6, "https"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16d

    const/16 v2, 0x1bb

    goto/16 :goto_b6

    :cond_16d
    move v2, v5

    goto/16 :goto_b6

    :cond_170
    iget-object v8, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v8}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_e2

    iget-object v8, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAddCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Cookie "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " expired"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto/16 :goto_e2

    :cond_194
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b2

    invoke-interface {v2, v3}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->formatCookies(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1a2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    goto :goto_1a2

    :cond_1b2
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->getVersion()I

    move-result v4

    if-lez v4, :cond_1e1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v5

    :goto_1bd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/Cookie;->getVersion()I

    move-result v5

    if-ne v4, v5, :cond_1d3

    instance-of v0, v0, Lch/boye/httpclientandroidlib/cookie/SetCookie2;

    if-nez v0, :cond_1ed

    :cond_1d3
    move v0, v7

    :goto_1d4
    move v1, v0

    goto :goto_1bd

    :cond_1d6
    if-eqz v1, :cond_1e1

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->getVersionHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_1e1

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V

    :cond_1e1
    const-string v0, "http.cookie-spec"

    invoke-interface {p2, v0, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "http.cookie-origin"

    invoke-interface {p2, v0, v6}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_26

    :cond_1ed
    move v0, v1

    goto :goto_1d4

    :cond_1ef
    move v2, v6

    goto/16 :goto_b6
.end method
