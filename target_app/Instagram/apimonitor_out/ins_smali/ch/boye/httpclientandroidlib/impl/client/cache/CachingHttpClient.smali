.class public Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;
.super Ljava/lang/Object;
.source "CachingHttpClient.java"
.implements Lch/boye/httpclientandroidlib/client/HttpClient;
.field public static final CACHE_RESPONSE_STATUS:Ljava/lang/String; = "http.cache.response.status"
.field private static final SUPPORTS_RANGE_AND_CONTENT_RANGE_HEADERS:Z
.field private final asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
.field private final backend:Lch/boye/httpclientandroidlib/client/HttpClient;
.field private final cacheHits:Ljava/util/concurrent/atomic/AtomicLong;
.field private final cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;
.field private final cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;
.field private final cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
.field private final conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field private final maxObjectSizeBytes:I
.field private final requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
.field private final responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
.field private final responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
.field private final responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
.field private final responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
.field private final sharedCache:Z
.field private final suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
.field private final validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
.method public constructor <init>()V
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>()V
new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;
invoke-direct {v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V
invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;)V
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V
invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 6
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;
invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/HeapResourceFactory;-><init>()V
invoke-direct {v0, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
invoke-direct {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 6
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
invoke-direct {v0, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
invoke-direct {p0, p1, v0, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
invoke-direct {p0, p1, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;)V
.registers 13
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;-><init>()V
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I
move-result v1
iput v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z
move-result v1
iput-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
iput-object p6, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
iput-object p7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
iput-object p8, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
iput-object p9, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
iput-object p10, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
return-void
.end method
.method constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
if-nez p1, :cond_2d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HttpClient may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2d
if-nez p2, :cond_37
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HttpCache may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
if-nez p3, :cond_41
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "CacheConfig may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_41
invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getMaxObjectSizeBytes()I
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I
invoke-virtual {p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z
move-result v0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
iget v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->maxObjectSizeBytes:I
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;-><init>(IZ)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-direct {v0, v1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;
invoke-direct {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/BasicHttpCache;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
invoke-direct {p0, v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method private alreadyHaveNewerCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 7
const/4 v0, 0x0
const/4 v1, 0x0
:try_start_2
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v2, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
:try_end_7
.catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_32
move-result-object v1
:goto_8
if-nez v1, :cond_b
:cond_a
:goto_a
return v0
:cond_b
const-string v2, "Date"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_a
const-string v2, "Date"
invoke-interface {p3, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
if-eqz v2, :cond_a
:try_start_1b
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z
:try_end_2e
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1b .. :try_end_2e} :catch_30
move-result v0
goto :goto_a
:catch_30
move-exception v1
goto :goto_a
:catch_32
move-exception v2
goto :goto_8
.end method
.method private explicitFreshnessRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
.registers 15
const-string v0, "Cache-Control"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_9
if-ge v1, v3, :cond_63
aget-object v0, v2, v1
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v4
array-length v5, v4
const/4 v0, 0x0
:goto_13
if-ge v0, v5, :cond_5f
aget-object v6, v4, v0
const-string v7, "max-stale"
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_42
:try_start_23
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v6
iget-object v7, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v7, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v7
iget-object v9, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v9, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
:try_end_36
.catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_36} :catch_3f
move-result-wide v9
sub-long/2addr v7, v9
int-to-long v9, v6
cmp-long v6, v7, v9
if-lez v6, :cond_5c
const/4 v0, 0x1
:goto_3e
return v0
:catch_3f
move-exception v0
const/4 v0, 0x1
goto :goto_3e
:cond_42
const-string v7, "min-fresh"
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-nez v7, :cond_5a
const-string v7, "max-age"
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_5c
:cond_5a
const/4 v0, 0x1
goto :goto_3e
:cond_5c
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_5f
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_9
:cond_63
const/4 v0, 0x0
goto :goto_3e
.end method
.method private flushEntriesInvalidatedByRequest(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 6
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Unable to flush invalidated entries from cache"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 10
const-string v0, "If-None-Match"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "If-Modified-Since"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2f
:cond_10
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
:goto_16
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v1, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v1
const-wide/16 v3, 0x0
cmp-long v1, v1, v3
if-lez v1, :cond_2e
const-string v1, "Warning"
const-string v2, "110 localhost \"Response is stale\""
invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_2e
return-object v0
:cond_2f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_16
.end method
.method private generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v2, 0x1f8
const-string v3, "Gateway Timeout"
invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
return-object v0
.end method
.method private generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
.registers 11
const/4 v8, 0x3
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
const-string v0, "ch.boye.httpclientandroidlib.client"
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-static {v0, v1}, Lch/boye/httpclientandroidlib/util/VersionInfo;->loadVersionInfo(Ljava/lang/String;Ljava/lang/ClassLoader;)Lch/boye/httpclientandroidlib/util/VersionInfo;
move-result-object v0
if-eqz v0, :cond_47
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/util/VersionInfo;->getRelease()Ljava/lang/String;
move-result-object v0
:goto_18
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v1
const-string v2, "http"
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_4a
const-string v2, "%d.%d localhost (Apache-HttpClient/%s (cache))"
new-array v3, v8, [Ljava/lang/Object;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v3, v6
aput-object v0, v3, v7
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_46
return-object v0
:cond_47
const-string v0, "UNAVAILABLE"
goto :goto_18
:cond_4a
const-string v2, "%s/%d.%d localhost (Apache-HttpClient/%s (cache))"
const/4 v3, 0x4
new-array v3, v3, [Ljava/lang/Object;
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getProtocol()Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v5
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v6
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
aput-object v1, v3, v7
aput-object v0, v3, v8
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_46
.end method
.method private getExistingCacheVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
.registers 7
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getVariantCacheEntriesWithEtags(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
:try_end_6
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
move-result-object v0
:goto_7
return-object v0
:catch_8
move-exception v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Unable to retrieve variant entries from cache"
invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method private getFatallyNoncompliantResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-virtual {v1, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestIsFatallyNonCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_23
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
sget-object v2, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p2, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->getErrorForRequest(Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_b
:cond_23
return-object v0
.end method
.method private getUpdatedVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
.registers 16
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-virtual {p6}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getCacheKey()Ljava/lang/String;
move-result-object v7
move-object v1, p1
move-object v2, p2
move-object v3, p7
move-object v4, p5
move-object v5, p3
move-object v6, p4
invoke-interface/range {v0 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->updateVariantCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
:try_end_f
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_11
move-result-object p7
:goto_10
return-object p7
:catch_11
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Could not update cache entry"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_10
.end method
.method private handleCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 11
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
invoke-virtual {v0, p1, p2, p4, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->canCachedResponseBeUsed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_14
invoke-direct {p0, p2, p3, p4, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
:goto_13
return-object v0
:cond_14
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-nez v0, :cond_1f
invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_13
:cond_1f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v0, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isRevalidatable(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v0
if-eqz v0, :cond_31
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
invoke-direct/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_13
:cond_31
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_13
.end method
.method private handleCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 8
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-nez v0, :cond_15
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v2, 0x1f8
const-string v3, "Gateway Timeout"
invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
:goto_14
return-object v0
:cond_15
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getExistingCacheVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_26
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
if-lez v1, :cond_26
invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->negotiateResponseFromVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_14
:cond_26
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_14
.end method
.method private handleRevalidationFailure(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
invoke-direct {p0, p1, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_b
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateGatewayTimeout(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->unvalidatedCacheHit(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_a
.end method
.method private makeAsynchronousValidator(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
.registers 3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getAsynchronousWorkersMax()I
move-result v0
if-lez v0, :cond_c
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
invoke-direct {v0, p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method private mayCallBackend(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 11
const/4 v0, 0x0
const-string v1, "Cache-Control"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v3
array-length v4, v3
move v2, v0
:goto_9
if-ge v2, v4, :cond_2b
aget-object v1, v3, v2
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v5
array-length v6, v5
move v1, v0
:goto_13
if-ge v1, v6, :cond_27
aget-object v7, v5, v1
const-string v8, "only-if-cached"
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_24
:goto_23
return v0
:cond_24
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_27
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_9
:cond_2b
const/4 v0, 0x1
goto :goto_23
.end method
.method private recordCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 7
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Cache hit [host: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "; uri: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:cond_39
return-void
.end method
.method private recordCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 7
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isTraceEnabled()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Cache miss [host: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "; uri: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:cond_39
return-void
.end method
.method private recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J
sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->VALIDATED:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
return-void
.end method
.method private retryRequestUnconditionally(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
invoke-virtual {v0, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v0
invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method
.method private revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 8
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Revalidating the cache entry"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:try_start_7
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
if-eqz v0, :cond_23
invoke-direct {p0, p2, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v0, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleWhileRevalidating(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_23
invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateCachedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->asynchRevalidator:Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;
invoke-virtual {v1, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/AsynchronousValidator;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
:goto_22
return-object v0
:cond_23
invoke-virtual {p0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
:try_end_26
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_26} :catch_28
.catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_7 .. :try_end_26} :catch_2e
move-result-object v0
goto :goto_22
:catch_28
move-exception v0
invoke-direct {p0, p2, p3, p4, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleRevalidationFailure(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_22
:catch_2e
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 5
const-string v0, "Date"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
const-string v1, "Date"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v0, :cond_29
if-eqz v1, :cond_29
:try_start_10
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
:try_end_23
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_10 .. :try_end_23} :catch_28
move-result v0
if-eqz v0, :cond_29
const/4 v0, 0x1
:goto_27
return v0
:catch_28
move-exception v0
:cond_29
const/4 v0, 0x0
goto :goto_27
.end method
.method private satisfyFromCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
.registers 7
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->getCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
:try_end_6
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
move-result-object v0
:goto_7
return-object v0
:catch_8
move-exception v1
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Unable to retrieve entries from cache"
invoke-virtual {v2, v3, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_7
.end method
.method private setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
.registers 4
if-eqz p1, :cond_7
const-string v0, "http.cache.response.status"
invoke-interface {p1, v0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
:cond_7
return-void
.end method
.method private shouldSendNotModifiedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, p1, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
const/4 v0, 0x0
goto :goto_16
.end method
.method private staleIfErrorAppliesTo(I)Z
.registers 3
const/16 v0, 0x1f4
if-eq p1, v0, :cond_10
const/16 v0, 0x1f6
if-eq p1, v0, :cond_10
const/16 v0, 0x1f7
if-eq p1, v0, :cond_10
const/16 v0, 0x1f8
if-ne p1, v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
.registers 5
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v0
if-nez v0, :cond_1c
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->isSharedCache()Z
move-result v0
if-eqz v0, :cond_16
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v0
if-nez v0, :cond_1c
:cond_16
invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->explicitFreshnessRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_1e
:cond_1c
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method private tryToUpdateVariantMap(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
.registers 7
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->reuseVariantEntryFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Could not update cache entry to reuse variant"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private unvalidatedCacheHit(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_HIT:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
const-string v1, "Warning"
const-string v2, "111 localhost \"Revalidation failed\""
invoke-interface {v0, v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method  callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 10
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Calling the backend"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v5
const-string v0, "Via"
invoke-direct {p0, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
move-result-object v1
invoke-interface {v5, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v4
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method
.method  clientRequestsOurOptions(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 6
const/4 v0, 0x0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
const-string v2, "OPTIONS"
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_12
:goto_11
:cond_11
return v0
:cond_12
const-string v2, "*"
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11
const-string v1, "0"
const-string v2, "Max-Forwards"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MISS:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->clientRequestsOurOptions(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;->CACHE_MODULE_RESPONSE:Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;
invoke-direct {p0, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->setResponseStatus(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/CacheResponseStatus;)V
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/OptionsHttp11Response;-><init>()V
:goto_19
:cond_19
return-object v0
:cond_1a
invoke-direct {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getFatallyNoncompliantResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
if-nez v0, :cond_19
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->requestCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->makeRequestCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object p2
const-string v0, "Via"
invoke-interface {p2, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->flushEntriesInvalidatedByRequest(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheableRequestPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheableRequestPolicy;->isServableFromCache(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_19
:cond_3b
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->satisfyFromCache(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v0
if-nez v0, :cond_46
invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleCacheMiss(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_19
:cond_46
invoke-direct {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleCacheHit(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_19
.end method
.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 7
invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/HttpHost;
invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/net/URI;->getPort()I
move-result v3
invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-virtual {p0, v1, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
.registers 6
invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getCacheHits()J
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheHits:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
return-wide v0
.end method
.method public getCacheMisses()J
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheMisses:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
return-wide v0
.end method
.method public getCacheUpdates()J
.registers 3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->cacheUpdates:Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
return-wide v0
.end method
.method public getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
move-result-object v0
return-object v0
.end method
.method  getCurrentDate()Ljava/util/Date;
.registers 2
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
return-object v0
.end method
.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
return-object v0
.end method
.method  handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 13
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Handling Backend response"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCompliance:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
invoke-virtual {v0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensureProtocolCompliance(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCachingPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
invoke-virtual {v0, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v0, p1, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushInvalidatedCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
if-eqz v6, :cond_33
invoke-direct {p0, p1, p2, p5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->alreadyHaveNewerCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-nez v0, :cond_33
:try_start_1f
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
move-object v1, p1
move-object v2, p2
move-object v3, p5
move-object v4, p3
move-object v5, p4
invoke-interface/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->cacheAndReturnResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/HttpResponse;
:try_end_29
.catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_2b
move-result-object p5
:goto_2a
:cond_2a
return-object p5
:catch_2b
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Unable to store entries in cache"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
:cond_33
if-nez v6, :cond_2a
:try_start_35
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->flushCacheEntriesFor(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
:try_end_3a
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_3b
goto :goto_2a
:catch_3b
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Unable to flush invalid cache entries"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_2a
.end method
.method public isSharedCache()Z
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->sharedCache:Z
return v0
.end method
.method  negotiateResponseFromVariants(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 13
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
invoke-virtual {v0, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequestFromVariants(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v3
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
invoke-interface {v0, p1, v2, p3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v4
const-string v0, "Via"
invoke-direct {p0, v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
move-result-object v1
invoke-interface {v5, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0x130
if-eq v0, v1, :cond_31
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
:goto_30
:cond_30
return-object v0
:cond_31
const-string v0, "ETag"
invoke-interface {v5, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_45
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "304 response did not contain ETag"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_30
:cond_45
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;
if-nez v6, :cond_5d
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "304 response did not contain ETag matching one sent in If-None-Match"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->callBackend(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_30
:cond_5d
invoke-virtual {v6}, Lch/boye/httpclientandroidlib/impl/client/cache/Variant;->getEntry()Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v7
invoke-direct {p0, v5, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v0
if-eqz v0, :cond_6c
invoke-direct {p0, p1, p2, p3, v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->retryRequestUnconditionally(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_30
:cond_6c
invoke-direct {p0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v7}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getUpdatedVariantEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v1
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
invoke-direct {p0, p1, p2, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->tryToUpdateVariantMap(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/impl/client/cache/Variant;)V
invoke-direct {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->shouldSendNotModifiedResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v2
if-eqz v2, :cond_30
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
goto :goto_30
.end method
.method  revalidateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 20
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
move-object/from16 v0, p2
move-object/from16 v1, p4
invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildConditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v11
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v7
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-interface {v2, v0, v11, v1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v6
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v8
move-object/from16 v0, p4
invoke-direct {p0, v6, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->revalidationResponseIsTooOld(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v2
if-eqz v2, :cond_40
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->conditionalRequestBuilder:Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
move-object/from16 v0, p2
move-object/from16 v1, p4
invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v2
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v7
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;
move-object/from16 v0, p1
move-object/from16 v1, p3
invoke-interface {v3, v0, v2, v1}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v6
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v8
:cond_40
const-string v2, "Via"
invoke-direct {p0, v6}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->generateViaHeader(Lch/boye/httpclientandroidlib/HttpMessage;)Ljava/lang/String;
move-result-object v3
invoke-interface {v6, v2, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0x130
if-eq v2, v3, :cond_59
const/16 v3, 0xc8
if-ne v2, v3, :cond_5e
:cond_59
move-object/from16 v0, p3
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->recordCacheUpdate(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
:cond_5e
const/16 v3, 0x130
if-ne v2, v3, :cond_95
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseCache:Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;
move-object/from16 v3, p1
move-object/from16 v4, p2
move-object/from16 v5, p4
invoke-interface/range {v2 .. v8}, Lch/boye/httpclientandroidlib/impl/client/cache/HttpCache;->updateCacheEntry(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpResponse;Ljava/util/Date;Ljava/util/Date;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v2
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
move-object/from16 v0, p2
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v3
if-eqz v3, :cond_8e
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->suitabilityChecker:Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
new-instance v4, Ljava/util/Date;
invoke-direct {v4}, Ljava/util/Date;-><init>()V
move-object/from16 v0, p2
invoke-virtual {v3, v0, v2, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v3
if-eqz v3, :cond_8e
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v2
:goto_8d
return-object v2
:cond_8e
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
invoke-virtual {v3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v2
goto :goto_8d
:cond_95
invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleIfErrorAppliesTo(I)Z
move-result v2
if-eqz v2, :cond_c5
invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->getCurrentDate()Ljava/util/Date;
move-result-object v2
move-object/from16 v0, p2
move-object/from16 v1, p4
invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->staleResponseNotAllowed(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v2
if-nez v2, :cond_c5
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->validityPolicy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p2
move-object/from16 v1, p4
invoke-virtual {v2, v0, v1, v8}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mayReturnStaleIfError(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v2
if-eqz v2, :cond_c5
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->responseGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
move-object/from16 v0, p4
invoke-virtual {v2, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v2
const-string v3, "Warning"
const-string v4, "110 localhost \"Response is stale\""
invoke-interface {v2, v3, v4}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8d
:cond_c5
move-object v9, p0
move-object/from16 v10, p1
move-object v12, v7
move-object v13, v8
move-object v14, v6
invoke-virtual/range {v9 .. v14}, Lch/boye/httpclientandroidlib/impl/client/cache/CachingHttpClient;->handleBackendResponse(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;Ljava/util/Date;Lch/boye/httpclientandroidlib/HttpResponse;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v2
goto :goto_8d
.end method
.method public supportsRangeAndContentRangeHeaders()Z
.registers 2
const/4 v0, 0x0
return v0
.end method