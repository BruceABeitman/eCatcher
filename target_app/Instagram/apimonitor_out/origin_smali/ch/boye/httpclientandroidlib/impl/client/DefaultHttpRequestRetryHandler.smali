.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return-void
.end method

.method private handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .registers 3

    instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method


# virtual methods
.method public getRetryCount()I
    .registers 2

    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method public isRequestSentRetryEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method public retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exception parameter may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    if-nez p3, :cond_16

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTTP context may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    if-le p2, v0, :cond_1c

    move v0, v1

    :goto_1b
    return v0

    :cond_1c
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_22

    move v0, v1

    goto :goto_1b

    :cond_22
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_28

    move v0, v1

    goto :goto_1b

    :cond_28
    instance-of v0, p1, Ljava/net/ConnectException;

    if-eqz v0, :cond_2e

    move v0, v1

    goto :goto_1b

    :cond_2e
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_34

    move v0, v1

    goto :goto_1b

    :cond_34
    const-string v0, "http.request"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpRequest;

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_44

    move v0, v2

    goto :goto_1b

    :cond_44
    const-string v0, "http.request_sent"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    move v0, v2

    :goto_55
    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz v0, :cond_5f

    :cond_5b
    move v0, v2

    goto :goto_1b

    :cond_5d
    move v0, v1

    goto :goto_55

    :cond_5f
    move v0, v1

    goto :goto_1b
.end method
