.class  Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;
.super Ljava/lang/Object;
.source "CacheInvalidator.java"
.field private final cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field private final storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;
.method public constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;
return-void
.end method
.method private flushEntry(Ljava/lang/String;)V
.registers 5
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->removeEntry(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "unable to flush cache entry"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_5
.end method
.method private getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
.registers 4
const/4 v1, 0x0
:try_start_1
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:goto_6
:try_end_6
.catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
move-object v0, v1
goto :goto_6
.end method
.method private getContentLocationURL(Ljava/net/URL;Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/net/URL;
.registers 5
const-string v0, "Content-Location"
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:cond_9
:goto_9
return-object v0
:cond_a
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_9
invoke-direct {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
goto :goto_9
.end method
.method private getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
.registers 5
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->storage:Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;
invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheStorage;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
:try_end_5
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
:goto_6
return-object v0
:catch_7
move-exception v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "could not retrieve entry from storage"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_6
.end method
.method private getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
.registers 5
const/4 v1, 0x0
:try_start_1
new-instance v0, Ljava/net/URL;
invoke-direct {v0, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
:goto_6
:try_end_6
.catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_6} :catch_7
return-object v0
:catch_7
move-exception v0
move-object v0, v1
goto :goto_6
.end method
.method private notGetOrHeadRequest(Ljava/lang/String;)Z
.registers 3
const-string v0, "GET"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, "HEAD"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private responseAndEntryEtagsDiffer(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 6
const/4 v0, 0x0
const-string v1, "ETag"
invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
const-string v2, "ETag"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
if-eqz v1, :cond_11
if-nez v2, :cond_12
:goto_11
:cond_11
return v0
:cond_12
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method private responseDateNewerThanEntryDate(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
.registers 6
const/4 v0, 0x0
const-string v1, "Date"
invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
const-string v2, "Date"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
if-eqz v1, :cond_11
if-nez v2, :cond_12
:cond_11
:goto_11
return v0
:cond_12
:try_start_12
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z
:try_end_25
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_12 .. :try_end_25} :catch_27
move-result v0
goto :goto_11
:catch_27
move-exception v1
goto :goto_11
.end method
.method protected flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z
.registers 4
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
const/4 v0, 0x1
goto :goto_7
.end method
.method public flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 8
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->requestShouldNotBeCached(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_59
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Request should not be cached"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v0
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "parent entry: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
if-eqz v0, :cond_4c
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getVariantMap()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_39
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_49
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V
goto :goto_39
:cond_49
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V
:cond_4c
invoke-direct {p0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_5a
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v1, "Couldn\'t transform request into valid URL"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->error(Ljava/lang/Object;)V
:cond_59
:goto_59
return-void
:cond_5a
const-string v1, "Content-Location"
invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_6f
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_6f
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V
:cond_6f
const-string v1, "Location"
invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_59
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushAbsoluteUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)Z
goto :goto_59
.end method
.method public flushInvalidatedCacheEntries(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 8
invoke-interface {p3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xc8
if-lt v0, v1, :cond_10
const/16 v1, 0x12b
if-le v0, v1, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->getURI(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-eqz v0, :cond_10
invoke-direct {p0, v0, p3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getContentLocationURL(Ljava/net/URL;Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/net/URL;
move-result-object v1
if-eqz v1, :cond_10
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getEntry(Ljava/lang/String;)Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;
move-result-object v2
if-eqz v2, :cond_10
invoke-direct {p0, p3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->responseDateNewerThanEntryDate(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v3
if-eqz v3, :cond_10
invoke-direct {p0, p3, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->responseAndEntryEtagsDiffer(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Z
move-result v2
if-eqz v2, :cond_10
invoke-virtual {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
goto :goto_10
.end method
.method protected flushRelativeUriFromSameHost(Ljava/net/URL;Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getRelativeURL(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
goto :goto_6
.end method
.method protected flushUriIfSameHost(Ljava/net/URL;Ljava/net/URL;)V
.registers 6
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->cacheKeyGenerator:Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;
invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheKeyGenerator;->canonicalizeUri(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->getAbsoluteURL(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
invoke-virtual {v0}, Ljava/net/URL;->getAuthority()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->flushEntry(Ljava/lang/String;)V
goto :goto_10
.end method
.method protected requestShouldNotBeCached(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheInvalidator;->notGetOrHeadRequest(Ljava/lang/String;)Z
move-result v0
return v0
.end method