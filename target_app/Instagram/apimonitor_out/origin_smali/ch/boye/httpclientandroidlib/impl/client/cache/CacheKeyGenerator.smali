.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
.super Ljava/lang/Object;
.source "CacheKeyGenerator.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private canonicalizePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_12
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object p1

    :goto_f
    return-object p1

    :catch_10
    move-exception v0

    goto :goto_f

    :catch_12
    move-exception v0

    goto :goto_f
.end method

.method private canonicalizePort(ILjava/lang/String;)I
    .registers 5

    const/4 v1, -0x1

    if-ne p1, v1, :cond_e

    const-string v0, "http"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 p1, 0x50

    :cond_d
    :goto_d
    return p1

    :cond_e
    if-ne p1, v1, :cond_d

    const-string v0, "https"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 p1, 0x1bb

    goto :goto_d
.end method

.method private isRelativeRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .registers 4

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/URL;->getPort()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizePort(ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v0, "/"

    :cond_2f
    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4c

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "?"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4c
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_54
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_54} :catch_56

    move-result-object p1

    :goto_55
    return-object p1

    :catch_56
    move-exception v0

    goto :goto_55
.end method

.method protected getFullHeaderValue([Lch/boye/httpclientandroidlib/Header;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    if-nez p1, :cond_6

    const-string v0, ""

    :goto_5
    return-object v0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    array-length v4, p1

    move v2, v0

    move v0, v1

    :goto_11
    if-ge v0, v4, :cond_2b

    aget-object v5, p1, v0

    if-nez v2, :cond_1c

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_11

    :cond_2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
    .registers 7

    invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->isRelativeRequest(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "%s%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_25
    return-object v0

    :cond_26
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method public getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;
    .registers 12

    const/4 v2, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "Vary"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    array-length v5, v4

    move v1, v2

    :goto_e
    if-ge v1, v5, :cond_2a

    aget-object v0, v4, v1

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;

    move-result-object v6

    array-length v7, v6

    move v0, v2

    :goto_18
    if-ge v0, v7, :cond_26

    aget-object v8, v6, v0

    invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_26
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_e

    :cond_2a
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :try_start_2d
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_4d

    const-string v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getFullHeaderValue([Lch/boye/httpclientandroidlib/Header;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_3a

    :cond_6e
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_73
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2d .. :try_end_73} :catch_78

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_78
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "couldn\'t encode to UTF-8"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method
