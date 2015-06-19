.class public Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;
.super Ljava/lang/Object;
.source "ResponseProcessCookies.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


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

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method private processCookies(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/cookie/CookieSpec;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .registers 12

    :cond_0
    :goto_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a0

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HeaderIterator;->nextHeader()Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    :try_start_a
    invoke-interface {p2, v2, p3}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->parse(Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/Cookie;
    :try_end_1e
    .catch Lch/boye/httpclientandroidlib/cookie/MalformedCookieException; {:try_start_a .. :try_end_1e} :catch_73

    :try_start_1e
    invoke-interface {p2, v0, p3}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->validate(Lch/boye/httpclientandroidlib/cookie/Cookie;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;)V

    invoke-interface {p4, v0}, Lch/boye/httpclientandroidlib/client/CookieStore;->addCookie(Lch/boye/httpclientandroidlib/cookie/Cookie;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Cookie accepted: \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_46
    .catch Lch/boye/httpclientandroidlib/cookie/MalformedCookieException; {:try_start_1e .. :try_end_46} :catch_47

    goto :goto_12

    :catch_47
    move-exception v1

    :try_start_48
    iget-object v4, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Cookie rejected: \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\". "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V
    :try_end_72
    .catch Lch/boye/httpclientandroidlib/cookie/MalformedCookieException; {:try_start_48 .. :try_end_72} :catch_73

    goto :goto_12

    :catch_73
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid cookie header: \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\". "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/cookie/MalformedCookieException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_a0
    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 7

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
    const-string v0, "http.cookie-spec"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/cookie/CookieSpec;

    if-nez v0, :cond_26

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Cookie spec not specified in HTTP context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    const-string v1, "http.cookie-store"

    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/client/CookieStore;

    if-nez v1, :cond_38

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Cookie store not specified in HTTP context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_25

    :cond_38
    const-string v2, "http.cookie-origin"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/cookie/CookieOrigin;

    if-nez v2, :cond_4a

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Cookie origin not specified in HTTP context"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    goto :goto_25

    :cond_4a
    const-string v3, "Set-Cookie"

    invoke-interface {p1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->processCookies(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/cookie/CookieSpec;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;Lch/boye/httpclientandroidlib/client/CookieStore;)V

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/cookie/CookieSpec;->getVersion()I

    move-result v3

    if-lez v3, :cond_25

    const-string v3, "Set-Cookie2"

    invoke-interface {p1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;

    move-result-object v3

    invoke-direct {p0, v3, v0, v2, v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseProcessCookies;->processCookies(Lch/boye/httpclientandroidlib/HeaderIterator;Lch/boye/httpclientandroidlib/cookie/CookieSpec;Lch/boye/httpclientandroidlib/cookie/CookieOrigin;Lch/boye/httpclientandroidlib/client/CookieStore;)V

    goto :goto_25
.end method
