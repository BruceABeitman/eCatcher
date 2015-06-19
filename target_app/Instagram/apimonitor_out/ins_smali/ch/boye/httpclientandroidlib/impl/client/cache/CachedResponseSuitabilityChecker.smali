.class  Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;
.super Ljava/lang/Object;
.source "CachedResponseSuitabilityChecker.java"
.field private final heuristicCoefficient:F
.field private final heuristicDefaultLifetime:J
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field private final sharedCache:Z
.field private final useHeuristicCaching:Z
.field private final validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V
invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
return-void
.end method
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isSharedCache()Z
move-result v0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->isHeuristicCachingEnabled()Z
move-result v0
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicCoefficient()F
move-result v0
iput v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F
invoke-virtual {p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheConfig;->getHeuristicDefaultLifetime()J
move-result-wide v0
iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J
return-void
.end method
.method private etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 13
const/4 v1, 0x0
const-string v0, "ETag"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_3b
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
:goto_d
const-string v2, "If-None-Match"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
if-eqz v4, :cond_44
array-length v5, v4
move v3, v1
:goto_17
if-ge v3, v5, :cond_44
aget-object v2, v4, v3
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v6
array-length v7, v6
move v2, v1
:goto_21
if-ge v2, v7, :cond_40
aget-object v8, v6, v2
invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v8
const-string v9, "*"
invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_33
if-nez v0, :cond_39
:cond_33
invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_3d
:cond_39
const/4 v0, 0x1
:goto_3a
return v0
:cond_3b
const/4 v0, 0x0
goto :goto_d
:cond_3d
add-int/lit8 v2, v2, 0x1
goto :goto_21
:cond_40
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_17
:cond_44
move v0, v1
goto :goto_3a
.end method
.method private getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J
.registers 16
const-wide/16 v1, -0x1
const-string v0, "Cache-Control"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v6
array-length v7, v6
const/4 v0, 0x0
move v5, v0
:goto_b
if-ge v5, v7, :cond_73
aget-object v0, v6, v5
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v8
array-length v9, v8
const/4 v0, 0x0
move v4, v0
move-wide v12, v1
move-wide v0, v12
:goto_18
if-ge v4, v9, :cond_6d
aget-object v2, v8, v4
const-string v3, "max-stale"
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v10
invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_49
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_3e
const-string v3, ""
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v10
invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4d
:cond_3e
const-wide/16 v10, -0x1
cmp-long v3, v0, v10
if-nez v3, :cond_4d
const-wide v0, 0x7fffffffffffffffL
:cond_49
:goto_49
add-int/lit8 v2, v4, 0x1
move v4, v2
goto :goto_18
:cond_4d
:try_start_4d
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_54
.catch Ljava/lang/NumberFormatException; {:try_start_4d .. :try_end_54} :catch_69
move-result-wide v2
const-wide/16 v10, 0x0
cmp-long v10, v2, v10
if-gez v10, :cond_5d
const-wide/16 v2, 0x0
:cond_5d
const-wide/16 v10, -0x1
cmp-long v10, v0, v10
if-eqz v10, :cond_67
cmp-long v10, v2, v0
if-gez v10, :cond_49
:cond_67
move-wide v0, v2
goto :goto_49
:catch_69
move-exception v0
const-wide/16 v0, 0x0
goto :goto_49
:cond_6d
add-int/lit8 v2, v5, 0x1
move v5, v2
move-wide v12, v0
move-wide v1, v12
goto :goto_b
:cond_73
return-wide v1
.end method
.method private hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
const-string v0, "If-None-Match"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
const-string v0, "If-Modified-Since"
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method private hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
const-string v0, "If-Range"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_18
const-string v0, "If-Match"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_18
const-string v0, "If-Unmodified-Since"
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z
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
.method private hasValidDateField(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x0
invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_7
if-ge v1, v3, :cond_13
aget-object v4, v2, v1
:try_start_b
invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_12
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_b .. :try_end_12} :catch_14
const/4 v0, 0x1
:cond_13
return v0
:catch_14
move-exception v4
add-int/lit8 v1, v1, 0x1
goto :goto_7
.end method
.method private isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z
.registers 12
const/4 v6, 0x1
const/4 v7, 0x0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v0, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_c
move v0, v6
:goto_b
return v0
:cond_c
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->useHeuristicCaching:Z
if-eqz v0, :cond_20
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicCoefficient:F
iget-wide v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->heuristicDefaultLifetime:J
move-object v1, p1
move-object v2, p3
invoke-virtual/range {v0 .. v5}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->isResponseHeuristicallyFresh(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;FJ)Z
move-result v0
if-eqz v0, :cond_20
move v0, v6
goto :goto_b
:cond_20
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v0
if-eqz v0, :cond_28
move v0, v7
goto :goto_b
:cond_28
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->getMaxStale(Lch/boye/httpclientandroidlib/HttpRequest;)J
move-result-wide v0
const-wide/16 v2, -0x1
cmp-long v2, v0, v2
if-nez v2, :cond_34
move v0, v7
goto :goto_b
:cond_34
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v2, p1, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getStalenessSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v2
cmp-long v0, v0, v2
if-lez v0, :cond_40
move v0, v6
goto :goto_b
:cond_40
move v0, v7
goto :goto_b
.end method
.method private lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
.registers 11
const/4 v1, 0x0
const-string v0, "Last-Modified"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
const/4 v0, 0x0
if-eqz v2, :cond_12
:try_start_a
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_11
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_a .. :try_end_11} :catch_17
move-result-object v0
:cond_12
move-object v2, v0
:goto_13
if-nez v2, :cond_1a
move v0, v1
:goto_16
return v0
:catch_17
move-exception v2
move-object v2, v0
goto :goto_13
:cond_1a
const-string v0, "If-Modified-Since"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_22
if-ge v0, v4, :cond_40
aget-object v5, v3, v0
:try_start_26
invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v5
invoke-virtual {v5, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z
move-result v6
if-nez v6, :cond_3a
invoke-virtual {v2, v5}, Ljava/util/Date;->after(Ljava/util/Date;)Z
:try_end_37
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_26 .. :try_end_37} :catch_3c
move-result v5
if-eqz v5, :cond_3d
:cond_3a
move v0, v1
goto :goto_16
:catch_3c
move-exception v5
:cond_3d
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_40
const/4 v0, 0x1
goto :goto_16
.end method
.method private originInsistsOnFreshness(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->mustRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v2
if-eqz v2, :cond_b
:cond_a
:goto_a
return v0
:cond_b
iget-boolean v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->sharedCache:Z
if-nez v2, :cond_11
move v0, v1
goto :goto_a
:cond_11
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->proxyRevalidate(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v2
if-nez v2, :cond_a
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
const-string v3, "s-maxage"
invoke-virtual {v2, p1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->hasCacheControlDirective(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_a
move v0, v1
goto :goto_a
.end method
.method public allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
.registers 9
const/4 v0, 0x0
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v3
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v4
if-eqz v3, :cond_1f
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->etagValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v1
move v2, v1
:goto_10
if-eqz v4, :cond_21
invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->lastModifiedValidatorMatches(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v1
:goto_16
if-eqz v3, :cond_23
if-eqz v4, :cond_23
if-eqz v2, :cond_1e
if-nez v1, :cond_23
:goto_1e
:cond_1e
return v0
:cond_1f
move v2, v0
goto :goto_10
:cond_21
move v1, v0
goto :goto_16
:cond_23
if-eqz v3, :cond_27
if-eqz v2, :cond_1e
:cond_27
if-eqz v4, :cond_2b
if-eqz v1, :cond_1e
:cond_2b
const/4 v0, 0x1
goto :goto_1e
.end method
.method public canCachedResponseBeUsed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
.registers 20
move-object/from16 v0, p3
move-object/from16 v1, p2
move-object/from16 v2, p4
invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isFreshEnough(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Date;)Z
move-result v3
if-nez v3, :cond_15
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Cache entry was not fresh enough"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
const/4 v3, 0x0
:goto_14
return v3
:cond_15
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p3
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->contentLengthHeaderMatchesActualLength(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v3
if-nez v3, :cond_28
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Cache entry Content-Length and header information do not match"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const/4 v3, 0x0
goto :goto_14
:cond_28
move-object/from16 v0, p2
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasUnsupportedConditionalHeaders(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v3
if-eqz v3, :cond_39
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Request contained conditional headers we don\'t handle"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const/4 v3, 0x0
goto :goto_14
:cond_39
move-object/from16 v0, p2
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v3
if-eqz v3, :cond_4f
move-object/from16 v0, p2
move-object/from16 v1, p3
move-object/from16 v2, p4
invoke-virtual {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->allConditionalsMatch(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)Z
move-result v3
if-nez v3, :cond_4f
const/4 v3, 0x0
goto :goto_14
:cond_4f
const-string v3, "Cache-Control"
move-object/from16 v0, p2
invoke-interface {v0, v3}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v5
array-length v6, v5
const/4 v3, 0x0
move v4, v3
:goto_5a
if-ge v4, v6, :cond_186
aget-object v3, v5, v4
invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v7
array-length v8, v7
const/4 v3, 0x0
:goto_64
if-ge v3, v8, :cond_181
aget-object v9, v7, v3
const-string v10, "no-cache"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_7d
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response contained NO CACHE directive, cache was not suitable"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
const/4 v3, 0x0
goto :goto_14
:cond_7d
const-string v10, "no-store"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_92
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response contained NO STORE directive, cache was not suitable"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
const/4 v3, 0x0
goto :goto_14
:cond_92
const-string v10, "max-age"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_db
:try_start_9e
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v10
iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p3
move-object/from16 v1, p4
invoke-virtual {v11, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v11
int-to-long v13, v10
cmp-long v10, v11, v13
if-lez v10, :cond_db
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response from cache was NOT suitable due to max age"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:try_end_bc
.catch Ljava/lang/NumberFormatException; {:try_start_9e .. :try_end_bc} :catch_bf
const/4 v3, 0x0
goto/16 :goto_14
:catch_bf
move-exception v3
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Response from cache was malformed"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const/4 v3, 0x0
goto/16 :goto_14
:cond_db
const-string v10, "max-stale"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_122
:try_start_e7
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v10
invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v10
iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p3
invoke-virtual {v11, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
move-result-wide v11
int-to-long v13, v10
cmp-long v10, v11, v13
if-lez v10, :cond_122
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response from cache was not suitable due to Max stale freshness"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:try_end_103
.catch Ljava/lang/NumberFormatException; {:try_start_e7 .. :try_end_103} :catch_106
const/4 v3, 0x0
goto/16 :goto_14
:catch_106
move-exception v3
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Response from cache was malformed: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const/4 v3, 0x0
goto/16 :goto_14
:cond_122
const-string v10, "min-fresh"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v10
if-eqz v10, :cond_17d
:try_start_12e
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v9
invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v9
const-wide/16 v11, 0x0
cmp-long v11, v9, v11
if-gez v11, :cond_13f
const/4 v3, 0x0
goto/16 :goto_14
:cond_13f
iget-object v11, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p3
move-object/from16 v1, p4
invoke-virtual {v11, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v11
iget-object v13, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
move-object/from16 v0, p3
invoke-virtual {v13, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getFreshnessLifetimeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)J
move-result-wide v13
sub-long v11, v13, v11
cmp-long v9, v11, v9
if-gez v9, :cond_17d
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response from cache was not suitable due to min fresh freshness requirement"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
:try_end_15e
.catch Ljava/lang/NumberFormatException; {:try_start_12e .. :try_end_15e} :catch_161
const/4 v3, 0x0
goto/16 :goto_14
:catch_161
move-exception v3
iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Response from cache was malformed: "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const/4 v3, 0x0
goto/16 :goto_14
:cond_17d
add-int/lit8 v3, v3, 0x1
goto/16 :goto_64
:cond_181
add-int/lit8 v3, v4, 0x1
move v4, v3
goto/16 :goto_5a
:cond_186
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v4, "Response from cache was suitable"
invoke-virtual {v3, v4}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->trace(Ljava/lang/Object;)V
const/4 v3, 0x1
goto/16 :goto_14
.end method
.method public isConditional(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedEtagValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedResponseSuitabilityChecker;->hasSupportedLastModifiedValidator(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method