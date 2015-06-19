.class  Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
.super Ljava/lang/Object;
.source "ConditionalRequestBuilder.java"
.field private static final log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-class v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
sput-object v0, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public buildConditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 15
const/4 v2, 0x0
new-instance v4, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {v4, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-virtual {v4}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V
const-string v0, "ETag"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_1a
const-string v1, "If-None-Match"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_1a
const-string v0, "Last-Modified"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_2b
const-string v1, "If-Modified-Since"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v1, v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_2b
const-string v0, "Cache-Control"
invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v5
array-length v6, v5
move v3, v2
move v0, v2
:goto_34
if-ge v3, v6, :cond_62
aget-object v1, v5, v3
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v7
array-length v8, v7
move v1, v2
:goto_3e
if-ge v1, v8, :cond_5b
aget-object v9, v7, v1
const-string v10, "must-revalidate"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_5a
const-string v10, "proxy-revalidate"
invoke-interface {v9}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_5f
:cond_5a
const/4 v0, 0x1
:cond_5b
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_34
:cond_5f
add-int/lit8 v1, v1, 0x1
goto :goto_3e
:cond_62
if-eqz v0, :cond_6b
const-string v0, "Cache-Control"
const-string v1, "max-age=0"
invoke-virtual {v4, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_6b
return-object v4
.end method
.method public buildConditionalRequestFromVariants(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/util/Map;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 8
:try_start_0
new-instance v2, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {v2, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
:try_end_5
.catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_5} :catch_2f
invoke-virtual {v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x1
invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
move v1, v0
:goto_17
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v1, :cond_2a
const-string v1, ","
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2a
const/4 v1, 0x0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_17
:catch_2f
move-exception v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "unable to build conditional request"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
:goto_37
return-object p1
:cond_38
const-string v0, "If-None-Match"
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
move-object p1, v2
goto :goto_37
.end method
.method public buildUnconditionalRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntry;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 6
:try_start_0
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V
:try_end_5
.catch Lch/boye/httpclientandroidlib/ProtocolException; {:try_start_0 .. :try_end_5} :catch_31
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->resetHeaders()V
const-string v1, "Cache-Control"
const-string v2, "no-cache"
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "Pragma"
const-string v2, "no-cache"
invoke-virtual {v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "If-Range"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V
const-string v1, "If-Match"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V
const-string v1, "If-None-Match"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V
const-string v1, "If-Unmodified-Since"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V
const-string v1, "If-Modified-Since"
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->removeHeaders(Ljava/lang/String;)V
move-object p1, v0
:goto_30
return-object p1
:catch_31
move-exception v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/client/cache/ConditionalRequestBuilder;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "unable to build proper unconditional request"
invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_30
.end method