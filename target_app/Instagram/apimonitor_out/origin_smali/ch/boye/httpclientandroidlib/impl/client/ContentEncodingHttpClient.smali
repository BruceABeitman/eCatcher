.class public Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;
.super Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
.source "ContentEncodingHttpClient.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/ContentEncodingHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method


# virtual methods
.method protected createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .registers 3

    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;->createHttpProcessor()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    move-result-object v0

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-object v0
.end method
