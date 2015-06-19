.class public Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;
.super Ljava/lang/Object;
.source "DefaultRedirectHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RedirectHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final REDIRECT_LOCATIONS:Ljava/lang/String; = "http.protocol.redirect-locations"


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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public getLocationURI(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/URI;
    .registers 9

    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v0, "location"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-nez v0, :cond_31

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received redirect response "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

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

    move-result-object v1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectHandler;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Redirect requested to location \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_57
    :try_start_57
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/net/URISyntaxException; {:try_start_57 .. :try_end_5c} :catch_89

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_145

    const-string v0, "http.protocol.reject-relative-redirect"

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9f

    new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Relative redirect location \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_89
    move-exception v0

    new-instance v2, Lch/boye/httpclientandroidlib/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid redirect URI: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_9f
    const-string v0, "http.target_host"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpHost;

    if-nez v0, :cond_b1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Target host not available in the HTTP context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    const-string v1, "http.request"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpRequest;

    :try_start_b9
    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v4, v0, v1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->rewriteURI(Ljava/net/URI;Lch/boye/httpclientandroidlib/HttpHost;Z)Ljava/net/URI;

    move-result-object v0

    invoke-static {v0, v2}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->resolve(Ljava/net/URI;Ljava/net/URI;)Ljava/net/URI;
    :try_end_ce
    .catch Ljava/net/URISyntaxException; {:try_start_b9 .. :try_end_ce} :catch_129

    move-result-object v0

    move-object v1, v0

    :goto_d0
    const-string v0, "http.protocol.allow-circular-redirects"

    invoke-interface {v3, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->isParameterFalse(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_144

    const-string v0, "http.protocol.redirect-locations"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;

    if-nez v0, :cond_ec

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;-><init>()V

    const-string v2, "http.protocol.redirect-locations"

    invoke-interface {p2, v2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_ec
    invoke-virtual {v1}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13f

    :try_start_f2
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
    :try_end_107
    .catch Ljava/net/URISyntaxException; {:try_start_f2 .. :try_end_107} :catch_134

    move-result-object v2

    :goto_108
    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;->contains(Ljava/net/URI;)Z

    move-result v3

    if-eqz v3, :cond_141

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

    :catch_129
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_134
    move-exception v0

    new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_13f
    move-object v2, v1

    goto :goto_108

    :cond_141
    invoke-virtual {v0, v2}, Lch/boye/httpclientandroidlib/impl/client/RedirectLocations;->add(Ljava/net/URI;)V

    :cond_144
    return-object v1

    :cond_145
    move-object v1, v2

    goto :goto_d0
.end method

.method public isRedirectRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP response may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    packed-switch v0, :pswitch_data_40

    :pswitch_17
    move v0, v1

    :goto_18
    return v0

    :pswitch_19
    const-string v0, "http.request"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_39

    const-string v3, "HEAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3b

    :cond_39
    move v0, v2

    goto :goto_18

    :cond_3b
    move v0, v1

    goto :goto_18

    :pswitch_3d
    move v0, v2

    goto :goto_18

    nop

    :pswitch_data_40
    .packed-switch 0x12d
        :pswitch_19
        :pswitch_19
        :pswitch_3d
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
    .end packed-switch
.end method
