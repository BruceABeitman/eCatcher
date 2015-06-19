.class Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
.super Ljava/lang/Object;
.source "BasicHttpCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;


# instance fields
.field private final cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

.field private final cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private final maxObjectSizeBytes:I

.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

.field private final responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

.field private final storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

.field private final uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;


# direct methods
.method public constructor <init>()V
    .registers 2

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V

    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I

    move-result v0

    iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:I

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
    .registers 4

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;

    invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCacheStorage;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    invoke-direct {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V

    return-void
.end method

.method static synthetic access$000(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;)Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    return-object v0
.end method

.method private addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v0, p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v1, "ETag"

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;

    invoke-direct {v2, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    invoke-interface {p3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method


# virtual methods
.method public cacheAndReturnResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 12

    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->readResponse()V

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->isLimitReached()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getReconstructedResponse()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    :goto_11
    return-object v0

    :cond_12
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p3, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_11

    :cond_21
    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    move-object v1, p4

    move-object v2, p5

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;)V

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;

    invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    goto :goto_11
.end method

.method doGetUpdatedParentEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 13

    if-nez p2, :cond_2e

    :goto_2
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->copy(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/client/cache/Resource;

    move-result-object v5

    new-instance v6, Ljava/util/HashMap;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getRequestDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getResponseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v4

    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;-><init>(Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/StatusLine;[Lch/boye/httpclientandroidlib/Header;Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/util/Map;)V

    return-object v0

    :cond_2e
    move-object p3, p2

    goto :goto_2
.end method

.method public flushCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V

    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
    .registers 4

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method public flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .registers 5

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheInvalidator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method generateIncompleteResponseError(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Lch/boye/httpclientandroidlib/HttpResponse;
    .registers 9

    const-string v0, "Content-Length"

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;

    sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v3, 0x1f6

    const-string v4, "Bad Gateway"

    invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "text/plain;charset=UTF-8"

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Received incomplete response with Content-Length %d but actual body length %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const-string v2, "Content-Length"

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;

    invoke-direct {v2, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-object v1
.end method

.method public getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v2, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    if-nez v0, :cond_11

    move-object v0, v1

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v3, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2b

    move-object v0, v1

    goto :goto_10

    :cond_2b
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    goto :goto_10
.end method

.method getResponseReader(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;
    .registers 9

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;

    iget v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->maxObjectSizeBytes:I

    int-to-long v2, v2

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;JLch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-object v0
.end method

.method public getVariantCacheEntriesWithEtags(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/impl/client/cache/Variant;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v1

    if-nez v1, :cond_1b

    :cond_19
    move-object v0, v2

    :goto_1a
    return-object v0

    :cond_1b
    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->addVariantWithEtag(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_27

    :cond_44
    move-object v0, v2

    goto :goto_1a
.end method

.method isIncompleteResponse(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/Resource;)Z
    .registers 9

    const/4 v0, 0x0

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_12

    const/16 v2, 0xce

    if-eq v1, v2, :cond_12

    :cond_11
    :goto_11
    return v0

    :cond_12
    const-string v1, "Content-Length"

    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    if-eqz v1, :cond_11

    :try_start_1a
    invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_21} :catch_2d

    move-result v1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/client/cache/Resource;->length()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_11

    const/4 v0, 0x1

    goto :goto_11

    :catch_2d
    move-exception v1

    goto :goto_11
.end method

.method public reuseVariantEntryFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
    .registers 11

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v3

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantKey(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$2;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v6, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_20
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_1b .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not update key ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 5

    invoke-virtual {p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->hasVariants()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    :goto_9
    return-void

    :cond_a
    invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    goto :goto_9
.end method

.method storeNonVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 6

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, v0, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-void
.end method

.method storeVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
    .registers 9

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->uriExtractor:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getVariantURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v2, v0, p3}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;

    invoke-direct {v2, p0, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache$1;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)V

    :try_start_16
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->updateEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateCallback;)V
    :try_end_1b
    .catch Lch/boye/httpclientandroidlib/client/cache/HttpCacheUpdateException; {:try_start_16 .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not update key ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method public updateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 13

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storeInCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-object v0
.end method

.method public updateVariantCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
    .registers 14

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->cacheEntryUpdater:Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    move-object v2, p3

    move-object v3, p5

    move-object v4, p6

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntryUpdater;->updateCacheEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;

    move-result-object v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;

    invoke-interface {v1, p7, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->putEntry(Ljava/lang/String;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V

    return-object v0
.end method
