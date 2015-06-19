.class public Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebDavHttpClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    return-void
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v3, v2

    :goto_7
    return-object v3

    :cond_8
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    if-nez v1, :cond_10

    move-object v3, v2

    goto :goto_7

    :cond_10
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_18

    move-object v3, v2

    goto :goto_7

    :cond_18
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "k9"

    const-string v5, "Response is gzipped"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    :cond_2d
    move-object v3, v2

    goto :goto_7
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .registers 3

    const-string v0, "k9"

    const-string v1, "Requesting gzipped data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public executeOverride(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHttpClient;->modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V

    invoke-super {p0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method
