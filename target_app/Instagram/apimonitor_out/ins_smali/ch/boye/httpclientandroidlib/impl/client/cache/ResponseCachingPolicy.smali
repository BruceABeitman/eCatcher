.class  Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;
.super Ljava/lang/Object;
.source "ResponseCachingPolicy.java"
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
.field private final maxObjectSizeBytes:I
.field private final sharedCache:Z
.method public constructor <init>(IZ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:I
iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z
return-void
.end method
.method private expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 6
const/4 v0, 0x0
const-string v1, "Cache-Control"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_a
:goto_9
:cond_9
return v0
:cond_a
const-string v1, "Expires"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
const-string v2, "Date"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
if-eqz v1, :cond_9
if-eqz v2, :cond_9
:try_start_1a
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_36
invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z
:try_end_33
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_1a .. :try_end_33} :catch_38
move-result v1
if-eqz v1, :cond_9
:cond_36
const/4 v0, 0x1
goto :goto_9
:catch_38
move-exception v1
goto :goto_9
.end method
.method private from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 5
const/4 v2, 0x0
const-string v0, "Via"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_34
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v0
array-length v1, v0
if-lez v1, :cond_34
aget-object v0, v0, v2
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "\\s"
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
aget-object v0, v0, v2
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_2d
const-string v1, "HTTP/1.0"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
:goto_2c
return v0
:cond_2d
const-string v1, "1.0"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_2c
:cond_34
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v1
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/HttpVersion;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_2c
.end method
.method private requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v0
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method protected hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
.registers 15
const/4 v0, 0x0
const-string v1, "Cache-Control"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
array-length v5, v4
move v3, v0
:goto_9
if-ge v3, v5, :cond_28
aget-object v1, v4, v3
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v6
array-length v7, v6
move v2, v0
:goto_13
if-ge v2, v7, :cond_30
aget-object v8, v6, v2
array-length v9, p2
move v1, v0
:goto_19
if-ge v1, v9, :cond_2c
aget-object v10, p2, v1
invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v10
if-eqz v10, :cond_29
const/4 v0, 0x1
:cond_28
return v0
:cond_29
add-int/lit8 v1, v1, 0x1
goto :goto_19
:cond_2c
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_13
:cond_30
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_9
.end method
.method protected isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 6
const/4 v0, 0x1
const-string v1, "Expires"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_a
:goto_9
return v0
:cond_a
const/4 v1, 0x5
new-array v1, v1, [Ljava/lang/String;
const/4 v2, 0x0
const-string v3, "max-age"
aput-object v3, v1, v2
const-string v2, "s-maxage"
aput-object v2, v1, v0
const/4 v0, 0x2
const-string v2, "must-revalidate"
aput-object v2, v1, v0
const/4 v0, 0x3
const-string v2, "proxy-revalidate"
aput-object v2, v1, v0
const/4 v0, 0x4
const-string v2, "public"
aput-object v2, v1, v0
invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
move-result v0
goto :goto_9
.end method
.method protected isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 12
const/4 v0, 0x0
const-string v1, "Cache-Control"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v3
array-length v4, v3
move v2, v0
:goto_9
if-ge v2, v4, :cond_40
aget-object v1, v3, v2
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v5
array-length v6, v5
move v1, v0
:goto_13
if-ge v1, v6, :cond_44
aget-object v7, v5, v1
const-string v8, "no-store"
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_3f
const-string v8, "no-cache"
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_3f
iget-boolean v8, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z
if-eqz v8, :cond_41
const-string v8, "private"
invoke-interface {v7}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v7
invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_41
:cond_3f
const/4 v0, 0x1
:cond_40
return v0
:cond_41
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_44
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_9
.end method
.method public isResponseCacheable(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 7
const/4 v3, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->requestProtocolGreaterThanAccepted(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v1
if-eqz v1, :cond_10
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Response was not cacheable."
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_f
:goto_f
return v0
:cond_10
new-array v1, v3, [Ljava/lang/String;
const-string v2, "no-store"
aput-object v2, v1, v0
invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_f
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
const-string v2, "?"
invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_40
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v1
if-eqz v1, :cond_38
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->from1_0Origin(Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v1
if-eqz v1, :cond_40
:cond_38
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Response was not cacheable."
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto :goto_f
:cond_40
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->expiresHeaderLessOrEqualToDateHeaderAndNoCacheControl(Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v1
if-nez v1, :cond_f
iget-boolean v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->sharedCache:Z
if-eqz v1, :cond_6a
const-string v1, "Authorization"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v1
if-eqz v1, :cond_6a
array-length v1, v1
if-lez v1, :cond_6a
const/4 v1, 0x3
new-array v1, v1, [Ljava/lang/String;
const-string v2, "s-maxage"
aput-object v2, v1, v0
const-string v0, "must-revalidate"
aput-object v0, v1, v3
const/4 v0, 0x2
const-string v2, "public"
aput-object v2, v1, v0
invoke-virtual {p0, p2, v1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->hasCacheControlParameterFrom(Lch/boye/httpclientandroidlib/HttpMessage;[Ljava/lang/String;)Z
move-result v0
goto :goto_f
:cond_6a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
goto :goto_f
.end method
.method public isResponseCacheable(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 13
const/4 v1, 0x1
const/4 v0, 0x0
const-string v2, "GET"
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_12
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Response was not cacheable."
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
:cond_11
:goto_11
return v0
:cond_12
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v2
sparse-switch v2, :sswitch_data_a2
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Response was not cacheable (Unknown Status code)"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto :goto_11
:sswitch_25
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v3, "Response was cacheable"
invoke-virtual {v2, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
const-string v2, "Content-Length"
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
if-eqz v2, :cond_40
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v2
iget v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->maxObjectSizeBytes:I
if-gt v2, v3, :cond_11
:cond_40
const-string v2, "Age"
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v2
array-length v2, v2
if-gt v2, v1, :cond_11
const-string v2, "Expires"
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v2
array-length v2, v2
if-gt v2, v1, :cond_11
const-string v2, "Date"
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v2
array-length v3, v2
if-ne v3, v1, :cond_11
const/4 v3, 0x0
:try_start_5c
aget-object v2, v2, v3
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_65
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_5c .. :try_end_65} :catch_9f
const-string v2, "Vary"
invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
array-length v5, v4
move v3, v0
:goto_6d
if-ge v3, v5, :cond_96
aget-object v2, v4, v3
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v6
array-length v7, v6
move v2, v0
:goto_77
if-ge v2, v7, :cond_92
aget-object v8, v6, v2
const-string v9, "*"
invoke-interface {v8}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v8
invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-nez v8, :cond_11
add-int/lit8 v2, v2, 0x1
goto :goto_77
:sswitch_8a
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;
const-string v2, "Response was not cacheable (Partial Content)"
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
goto :goto_11
:cond_92
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_6d
:cond_96
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseCachingPolicy;->isExplicitlyNonCacheable(Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v2
if-nez v2, :cond_11
move v0, v1
goto/16 :goto_11
:catch_9f
move-exception v1
goto/16 :goto_11
:sswitch_data_a2
.sparse-switch
0xc8 -> :sswitch_25
0xcb -> :sswitch_25
0xce -> :sswitch_8a
0x12c -> :sswitch_25
0x12d -> :sswitch_25
0x19a -> :sswitch_25
.end sparse-switch
.end method