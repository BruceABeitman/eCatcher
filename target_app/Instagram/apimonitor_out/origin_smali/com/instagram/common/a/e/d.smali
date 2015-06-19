.class public final Lcom/instagram/common/a/e/d;
.super Ljava/lang/Object;
.source "GzipResponseInterceptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 8

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xcc

    if-ne v1, v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1d
    if-ge v0, v2, :cond_10

    aget-object v3, v1, v0

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "gzip"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    new-instance v0, Lch/boye/httpclientandroidlib/client/entity/GzipDecompressingEntity;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/entity/GzipDecompressingEntity;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    goto :goto_10

    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method
