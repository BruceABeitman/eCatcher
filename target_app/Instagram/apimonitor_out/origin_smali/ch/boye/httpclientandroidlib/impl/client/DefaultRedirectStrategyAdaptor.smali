.class Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategyAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RedirectStrategy;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    return-void
.end method


# virtual methods
.method public getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .registers 7

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectHandler;->getLocationURI(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    const-string v2, "HEAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpHead;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    goto :goto_1b
.end method

.method public isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectHandler;->isRedirectRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result v0

    return v0
.end method
