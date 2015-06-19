.class public final Lcom/instagram/common/a/e/b;
.super Ljava/lang/Object;
.source "CurlLogger.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Ljava/lang/String;
    .registers 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "curl "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-X "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_23
    if-ge v0, v3, :cond_47

    aget-object v4, v1, v0

    const-string v5, "--header \""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\""

    const-string v6, "\\\""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\" "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_47
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    instance-of v0, p0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    if-eqz v0, :cond_af

    move-object v0, p0

    check-cast v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v0

    instance-of v3, v0, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-eqz v3, :cond_af

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    :goto_60
    const-string v1, "\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v0, p0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_a4

    check-cast p0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_a4

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->isRepeatable()Z

    move-result v1

    if-eqz v1, :cond_a4

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v1, v3, v5

    if-gez v1, :cond_a9

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " --data-ascii \""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a4
    :goto_a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a9
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a4

    :cond_af
    move-object v0, v1

    goto :goto_60
.end method


# virtual methods
.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .registers 4

    instance-of v0, p1, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;

    if-nez v0, :cond_9

    check-cast p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-static {p1}, Lcom/instagram/common/a/e/b;->a(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Ljava/lang/String;

    :cond_9
    return-void
.end method
