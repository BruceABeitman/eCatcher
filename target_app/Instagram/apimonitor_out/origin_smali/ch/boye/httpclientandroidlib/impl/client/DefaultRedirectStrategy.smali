.class public Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategy.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RedirectStrategy;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method protected createLocationURI(Ljava/lang/String;)Ljava/net/URI;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid redirect URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getLocationURI(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/URI;
    .registers 10

    if-nez p2, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "location"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_31

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received redirect response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but no location header"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_31
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect requested to location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_57
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;->createLocationURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v2, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_88

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Relative redirect location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    const-string v0, "http.target_host"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_9a

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host not available in the HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9a
    :try_start_9a
    new-instance v3, Ljava/net/URI;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v4

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-static {v3, v0, v4}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_af
    .catch Ljava/net/URISyntaxException; {:try_start_9a .. :try_end_af} :catch_10a

    move-result-object v0

    move-object v1, v0

    :cond_b1
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v2, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_125

    const-string v0, "http.protocol.redirect-locations"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;

    if-nez v0, :cond_cd

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;-><init>()V

    const-string v2, "http.protocol.redirect-locations"

    invoke-interface {p3, v2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_cd
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_120

    :try_start_d3
    new-instance v2, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URI;->getPort()I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;
    :try_end_e8
    .catch Ljava/net/URISyntaxException; {:try_start_d3 .. :try_end_e8} :catch_115

    move-result-object v2

    :goto_e9
    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_122

    new-instance v0, Lch/boye/httpclientandroidlib/client/CircularRedirectException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Circular redirect to \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/CircularRedirectException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_10a
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_115
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_120
    move-object v2, v1

    goto :goto_e9

    :cond_122
    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    :cond_125
    return-object v1
.end method

.method public getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 7

    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategy;->getLocationURI(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    :goto_19
    return-object v0

    :cond_1a
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_19
.end method

.method public isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 9

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string v4, "location"

    invoke-interface {p2, v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    packed-switch v2, :pswitch_data_4e

    :cond_25
    :goto_25
    :pswitch_25
    return v0

    :pswitch_26
    const-string v2, "GET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "HEAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_36
    if-eqz v4, :cond_25

    move v0, v1

    goto :goto_25

    :pswitch_3a
    const-string v2, "GET"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string v2, "HEAD"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    :cond_4a
    move v0, v1

    goto :goto_25

    :pswitch_4c
    move v0, v1

    goto :goto_25

    :pswitch_data_4e
    .packed-switch 0x12d
        :pswitch_3a
        :pswitch_26
        :pswitch_4c
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_3a
    .end packed-switch
.end method
