.class Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;
.super Ljava/lang/Object;
.source "CacheEntryUpdater.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;


# direct methods
.method constructor <init>()V
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    return-void
.end method

.method private entryAndResponseHaveDateHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .registers 4

    const-string v0, "Date"

    invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v0, "Date"

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private entryDateHeaderNewerThenResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Date"

    invoke-virtual {p1, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "Date"

    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_20
    .catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1 .. :try_end_20} :catch_26

    move-result v1

    if-nez v1, :cond_24

    :goto_23
    return v0

    :cond_24
    const/4 v0, 0x1

    goto :goto_23

    :catch_26
    move-exception v1

    goto :goto_23
.end method

.method private removeCacheEntry1xxWarnings(Ljava/util/List;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Warning"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "Warning"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_37

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_3a
    return-void
.end method

.method private removeCacheHeadersThatMatchResponse(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lch/boye/httpclientandroidlib/Header;",
            ">;",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ")V"
        }
    .end annotation

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    if-ge v1, v3, :cond_31

    aget-object v4, v2, v1

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    :cond_f
    :goto_f
    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_f

    :cond_2d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_31
    return-void
.end method


# virtual methods
.method protected mergeHeaders(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)[Lch/boye/httpclientandroidlib/Header;
    .registers 5

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->entryAndResponseHaveDateHeader(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->entryDateHeaderNewerThenResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->removeCacheHeadersThatMatchResponse(Ljava/util/List;Lch/boye/httpclientandroidlib/HttpResponse;)V

    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->removeCacheEntry1xxWarnings(Ljava/util/List;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lch/boye/httpclientandroidlib/Header;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lch/boye/httpclientandroidlib/Header;

    goto :goto_10
.end method

.method public updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 12

    invoke-interface {p5}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x130

    if-eq v0, v1, :cond_14

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response must have 304 status code"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    invoke-virtual {p0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->mergeHeaders(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;)[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    move-object v1, p3

    move-object v2, p4

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    return-object v0
.end method
