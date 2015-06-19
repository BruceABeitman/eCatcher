.class  Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;
.super Ljava/lang/Object;
.source "RequestProtocolCompliance.java"
.field private static final disallowedWithNoCache:Ljava/util/List;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x3
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "min-fresh"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "max-stale"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "max-age"
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private add100ContinueHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 12
const/4 v2, 0x0
const-string v0, "Expect"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
array-length v5, v4
move v3, v2
move v0, v2
:goto_a
if-ge v3, v5, :cond_2c
aget-object v1, v4, v3
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v6
array-length v7, v6
move v1, v2
:goto_14
if-ge v1, v7, :cond_28
aget-object v8, v6, v1
const-string v9, "100-continue"
invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_25
const/4 v0, 0x1
:cond_25
add-int/lit8 v1, v1, 0x1
goto :goto_14
:cond_28
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_a
:cond_2c
if-nez v0, :cond_35
const-string v0, "Expect"
const-string v1, "100-continue"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_35
return-void
.end method
.method private addContentTypeHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
.registers 4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_15
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;
const-string v1, "application/octet-stream"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V
:cond_15
return-void
.end method
.method private buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
.registers 7
new-instance v2, Ljava/lang/StringBuilder;
const-string v0, ""
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/4 v0, 0x1
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v1, v0
:goto_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/HeaderElement;
if-nez v1, :cond_28
const-string v4, ","
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_20
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_d
:cond_28
const/4 v1, 0x0
goto :goto_20
:cond_2a
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private decrementOPTIONSMaxForwardsIfGreaterThen0(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 4
const-string v0, "OPTIONS"
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
const-string v0, "Max-Forwards"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_10
const-string v1, "Max-Forwards"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeaders(Ljava/lang/String;)V
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
const-string v1, "Max-Forwards"
add-int/lit8 v0, v0, -0x1
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method private downgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 5
:try_start_0
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
:try_end_5
.catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_5} :catch_9
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
return-object v0
:catch_9
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 15
const/4 v2, 0x0
const-string v0, "Expect"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
array-length v6, v5
move v3, v2
move-object v4, v0
move v0, v2
:goto_10
if-ge v3, v6, :cond_5f
aget-object v7, v5, v3
invoke-interface {v7}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v8
array-length v9, v8
move v1, v2
:goto_1a
if-ge v1, v9, :cond_32
aget-object v10, v8, v1
const-string v11, "100-continue"
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-nez v11, :cond_30
invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_2d
add-int/lit8 v1, v1, 0x1
goto :goto_1a
:cond_30
const/4 v0, 0x1
goto :goto_2d
:cond_32
if-eqz v0, :cond_56
invoke-interface {p1, v7}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeader(Lch/boye/httpclientandroidlib/Header;)V
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/HeaderElement;
new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v3, "Expect"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
goto :goto_3b
:cond_56
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_10
:cond_5f
return-void
.end method
.method private requestContainsNoCacheDirectiveWithFieldName(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
.registers 12
const/4 v1, 0x0
const-string v0, "Cache-Control"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v3
array-length v4, v3
move v2, v1
:goto_9
if-ge v2, v4, :cond_33
aget-object v0, v3, v2
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v5
array-length v6, v5
move v0, v1
:goto_13
if-ge v0, v6, :cond_2f
aget-object v7, v5, v0
const-string v8, "no-cache"
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_2c
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_2c
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->NO_CACHE_DIRECTIVE_WITH_FIELD_NAME:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
:goto_2b
return-object v0
:cond_2c
add-int/lit8 v0, v0, 0x1
goto :goto_13
:cond_2f
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_9
:cond_33
const/4 v0, 0x0
goto :goto_2b
.end method
.method private requestHasWeakETagAndRange(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
.registers 5
const/4 v0, 0x0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
const-string v2, "GET"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_12
:goto_11
:cond_11
return-object v0
:cond_12
const-string v1, "Range"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_11
const-string v1, "If-Range"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_11
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "W/"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_11
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_AND_RANGE_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
goto :goto_11
.end method
.method private requestHasWeekETagForPUTOrDELETEIfMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
.registers 5
const/4 v0, 0x0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
const-string v2, "PUT"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_1a
const-string v2, "DELETE"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1a
:goto_19
:cond_19
return-object v0
:cond_1a
const-string v1, "If-Match"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_31
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "W/"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
goto :goto_19
:cond_31
const-string v1, "If-None-Match"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_19
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
const-string v2, "W/"
invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_19
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->WEAK_ETAG_ON_PUTDELETE_METHOD_ERROR:Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
goto :goto_19
.end method
.method private requestMustNotHaveEntity(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 4
const-string v0, "TRACE"
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method private stripOtherFreshnessDirectivesWithNoCache(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 14
const/4 v2, 0x0
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
const-string v0, "Cache-Control"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v5
array-length v6, v5
move v3, v2
move v0, v2
:goto_f
if-ge v3, v6, :cond_40
aget-object v1, v5, v3
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v7
array-length v8, v7
move v1, v2
:goto_19
if-ge v1, v8, :cond_3c
aget-object v9, v7, v1
sget-object v10, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->disallowedWithNoCache:Ljava/util/List;
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_2c
invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_2c
const-string v10, "no-cache"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_39
const/4 v0, 0x1
:cond_39
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_3c
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_f
:cond_40
if-nez v0, :cond_43
:goto_42
return-void
:cond_43
const-string v0, "Cache-Control"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->removeHeaders(Ljava/lang/String;)V
const-string v0, "Cache-Control"
invoke-direct {p0, v4}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->buildHeaderFromElements(Ljava/util/List;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_42
.end method
.method private upgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 5
:try_start_0
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
:try_end_5
.catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_5} :catch_9
invoke-virtual {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setProtocolVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)V
return-object v0
:catch_9
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/client/ClientProtocolException;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method private verifyOPTIONSRequestWithBodyHasContentType(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 4
const-string v0, "OPTIONS"
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_10
check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->addContentTypeHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
goto :goto_10
.end method
.method private verifyRequestWithExpectContinueFlagHas100continueHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
.registers 3
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_1e
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z
move-result v0
if-eqz v0, :cond_1a
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-eqz v0, :cond_1a
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->add100ContinueHeaderIfMissing(Lch/boye/httpclientandroidlib/HttpRequest;)V
:goto_19
return-void
:cond_1a
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V
goto :goto_19
:cond_1e
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->remove100ContinueHeaderIfExists(Lch/boye/httpclientandroidlib/HttpRequest;)V
goto :goto_19
.end method
.method public getErrorForRequest(Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 7
const/16 v4, 0x190
sget-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance$1;->$SwitchMap$ch$boye$httpclientandroidlib$impl$client$cache$RequestProtocolError:[I
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_54
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The request was compliant, therefore no error can be generated for it."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_15
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v3, 0x19b
const-string v4, ""
invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V
:goto_25
return-object v0
:pswitch_26
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const-string v3, "Weak eTag not compatible with byte range"
invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V
goto :goto_25
:pswitch_35
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const-string v3, "Weak eTag not compatible with PUT or DELETE requests"
invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V
goto :goto_25
:pswitch_44
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
const-string v3, "No-Cache directive MUST NOT include a field name"
invoke-direct {v1, v2, v4, v3}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V
goto :goto_25
nop
:pswitch_data_54
.packed-switch 0x1
:pswitch_15
:pswitch_26
:pswitch_35
:pswitch_44
.end packed-switch
.end method
.method public makeRequestCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 4
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestMustNotHaveEntity(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_d
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_d
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->verifyRequestWithExpectContinueFlagHas100continueHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->verifyOPTIONSRequestWithBodyHasContentType(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->decrementOPTIONSMaxForwardsIfGreaterThen0(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->stripOtherFreshnessDirectivesWithNoCache(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestVersionIsTooLow(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_26
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->upgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object p1
:goto_25
:cond_25
return-object p1
:cond_26
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestMinorVersionIsTooHighMajorVersionsMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_25
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->downgradeRequestTo(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/ProtocolVersion;)Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object p1
goto :goto_25
.end method
.method public requestIsFatallyNonCompliant(Lch/boye/httpclientandroidlib/HttpRequest;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestHasWeakETagAndRange(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
move-result-object v1
if-eqz v1, :cond_e
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_e
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestHasWeekETagForPUTOrDELETEIfMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
move-result-object v1
if-eqz v1, :cond_17
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_17
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolCompliance;->requestContainsNoCacheDirectiveWithFieldName(Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/impl/client/cache/RequestProtocolError;
move-result-object v1
if-eqz v1, :cond_20
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_20
return-object v0
.end method
.method protected requestMinorVersionIsTooHighMajorVersionsMatch(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 6
const/4 v0, 0x0
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v1
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMajor()I
move-result v2
sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v3}, Lch/boye/httpclientandroidlib/HttpVersion;->getMajor()I
move-result v3
if-eq v2, v3, :cond_12
:goto_11
:cond_11
return v0
:cond_12
invoke-virtual {v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->getMinor()I
move-result v1
sget-object v2, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/HttpVersion;->getMinor()I
move-result v2
if-le v1, v2, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method protected requestVersionIsTooLow(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v0
if-gez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method