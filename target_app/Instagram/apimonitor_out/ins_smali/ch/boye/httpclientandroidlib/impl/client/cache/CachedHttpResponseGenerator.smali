.class  Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;
.super Ljava/lang/Object;
.source "CachedHttpResponseGenerator.java"
.field private final validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
.method constructor <init>()V
.registers 2
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;-><init>()V
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;-><init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V
return-void
.end method
.method constructor <init>(Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
return-void
.end method
.method private addMissingContentLengthHeader(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpEntity;)V
.registers 7
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->transferEncodingIsPresent(Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
const-string v0, "Content-Length"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_6
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v1, "Content-Length"
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Lch/boye/httpclientandroidlib/Header;)V
goto :goto_6
.end method
.method private transferEncodingIsPresent(Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 3
const-string v0, "Transfer-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method  generateNotModifiedResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v2, 0x130
const-string v3, "Not Modified"
invoke-direct {v1, v0, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
const-string v0, "Date"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_23
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v2, "Date"
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-static {v3}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:cond_23
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
const-string v0, "ETag"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_31
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_31
const-string v0, "Content-Location"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_3c
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_3c
const-string v0, "Expires"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_47
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_47
const-string v0, "Cache-Control"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_52
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_52
const-string v0, "Vary"
invoke-virtual {p1, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_5d
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
:cond_5d
return-object v1
.end method
.method  generateResponse(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 8
new-instance v0, Ljava/util/Date;
invoke-direct {v0}, Ljava/util/Date;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getStatusCode()I
move-result v3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getReasonPhrase()Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
new-instance v2, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;
invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheEntity;-><init>(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)V
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
move-result-object v3
invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V
invoke-direct {p0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->addMissingContentLengthHeader(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpEntity;)V
invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/CachedHttpResponseGenerator;->validityStrategy:Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;
invoke-virtual {v2, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/CacheValidityPolicy;->getCurrentAgeSecs(Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;Ljava/util/Date;)J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v0, v2, v4
if-lez v0, :cond_40
const-wide/32 v4, 0x7fffffff
cmp-long v0, v2, v4
if-ltz v0, :cond_41
const-string v0, "Age"
const-string v2, "2147483648"
invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_40
:goto_40
return-object v1
:cond_41
const-string v0, "Age"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
long-to-int v2, v2
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v0, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_40
.end method