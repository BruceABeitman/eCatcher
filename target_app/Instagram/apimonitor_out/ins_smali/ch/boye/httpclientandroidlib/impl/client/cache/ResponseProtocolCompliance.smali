.class  Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;
.super Ljava/lang/Object;
.source "ResponseProtocolCompliance.java"
.field private static final UNEXPECTED_100_CONTINUE:Ljava/lang/String; = "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."
.field private static final UNEXPECTED_PARTIAL_CONTENT:Ljava/lang/String; = "partial content was returned for a request that did not ask for it"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 5
const-string v0, "HEAD"
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_34
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xcc
if-eq v0, v1, :cond_34
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xcd
if-eq v0, v1, :cond_34
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0x130
if-ne v0, v1, :cond_36
:cond_34
const/4 v0, 0x1
:goto_35
return v0
:cond_36
const/4 v0, 0x0
goto :goto_35
.end method
.method private consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 3
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-eqz v0, :cond_9
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_9
return-void
.end method
.method private ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
const-string v1, "OPTIONS"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xc8
if-ne v0, v1, :cond_10
const-string v0, "Content-Length"
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_10
const-string v0, "Content-Length"
const-string v1, "0"
invoke-interface {p2, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
.end method
.method private ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 4
const-string v0, "Date"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_16
const-string v0, "Date"
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_16
return-void
.end method
.method private ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 7
const/16 v4, 0x8
const/4 v0, 0x0
new-array v1, v4, [Ljava/lang/String;
const-string v2, "Allow"
aput-object v2, v1, v0
const/4 v2, 0x1
const-string v3, "Content-Encoding"
aput-object v3, v1, v2
const/4 v2, 0x2
const-string v3, "Content-Language"
aput-object v3, v1, v2
const/4 v2, 0x3
const-string v3, "Content-Length"
aput-object v3, v1, v2
const/4 v2, 0x4
const-string v3, "Content-MD5"
aput-object v3, v1, v2
const/4 v2, 0x5
const-string v3, "Content-Range"
aput-object v3, v1, v2
const/4 v2, 0x6
const-string v3, "Content-Type"
aput-object v3, v1, v2
const/4 v2, 0x7
const-string v3, "Last-Modified"
aput-object v3, v1, v2
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v2
const/16 v3, 0x130
if-ne v2, v3, :cond_42
:goto_38
if-ge v0, v4, :cond_42
aget-object v2, v1, v0
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_42
return-void
.end method
.method private ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
const-string v0, "Range"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-nez v0, :cond_14
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0xce
if-eq v0, v1, :cond_15
:cond_14
return-void
:cond_15
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;
const-string v1, "partial content was returned for a request that did not ask for it"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;
.registers 3
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpRequest;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
return-object v0
.end method
.method private identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 16
const-string v0, "Content-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
if-eqz v4, :cond_b
array-length v0, v4
if-nez v0, :cond_c
:cond_b
return-void
:cond_c
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
const/4 v2, 0x0
array-length v6, v4
const/4 v0, 0x0
move v3, v0
:goto_15
if-ge v3, v6, :cond_68
aget-object v0, v4, v3
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x1
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v8
array-length v9, v8
const/4 v0, 0x0
move v13, v0
move v0, v1
move v1, v2
move v2, v13
:goto_29
if-ge v2, v9, :cond_4d
aget-object v10, v8, v2
const-string v11, "identity"
invoke-interface {v10}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v11
if-eqz v11, :cond_3d
const/4 v1, 0x1
:goto_3a
add-int/lit8 v2, v2, 0x1
goto :goto_29
:cond_3d
if-nez v0, :cond_44
const-string v0, ","
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_44
invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
goto :goto_3a
:cond_4d
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string v2, ""
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_63
new-instance v2, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v7, "Content-Encoding"
invoke-direct {v2, v7, v0}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_63
add-int/lit8 v0, v3, 0x1
move v3, v0
move v2, v1
goto :goto_15
:cond_68
if-eqz v2, :cond_b
const-string v0, "Content-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_73
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/Header;
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
goto :goto_73
.end method
.method private removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 3
const-string v0, "TE"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V
const-string v0, "Transfer-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V
return-void
.end method
.method private requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v1, 0x64
if-eq v0, v1, :cond_d
:cond_c
return-void
:cond_d
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-eqz v0, :cond_30
check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v0
:goto_19
instance-of v1, v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v1, :cond_25
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z
move-result v0
if-nez v0, :cond_c
:cond_25
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
new-instance v0, Lch/boye/httpclientandroidlib/client/ClientProtocolException;
const-string v1, "The incoming request did not contain a 100-continue header, but the response was a Status 100, continue."
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_30
move-object v0, p1
goto :goto_19
.end method
.method private requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z
.registers 3
instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
return v0
.end method
.method private transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestWasWrapped(Lch/boye/httpclientandroidlib/HttpRequest;)Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;
invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->getOriginalRequestProtocol(Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;)Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->compareToVersion(Lch/boye/httpclientandroidlib/ProtocolVersion;)I
move-result v0
if-gez v0, :cond_6
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->removeResponseTransferEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
goto :goto_6
.end method
.method private warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 15
const/4 v2, 0x0
const/4 v0, 0x0
:try_start_2
const-string v1, "Date"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_f
.catch Lch/boye/httpclientandroidlib/impl/cookie/DateParseException; {:try_start_2 .. :try_end_f} :catch_14
move-result-object v0
move-object v4, v0
:goto_11
if-nez v4, :cond_17
:cond_13
return-void
:catch_14
move-exception v1
move-object v4, v0
goto :goto_11
:cond_17
const-string v0, "Warning"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v5
if-eqz v5, :cond_13
array-length v0, v5
if-eqz v0, :cond_13
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
array-length v7, v5
move v3, v2
move v0, v2
:goto_2a
if-ge v3, v7, :cond_5b
aget-object v1, v5, v3
invoke-static {v1}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarningValues(Lch/boye/httpclientandroidlib/Header;)[Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;
move-result-object v8
array-length v9, v8
move v1, v2
:goto_34
if-ge v1, v9, :cond_57
aget-object v10, v8, v1
invoke-virtual {v10}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->getWarnDate()Ljava/util/Date;
move-result-object v11
if-eqz v11, :cond_44
invoke-virtual {v11, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z
move-result v11
if-eqz v11, :cond_55
:cond_44
new-instance v11, Lch/boye/httpclientandroidlib/message/BasicHeader;
const-string v12, "Warning"
invoke-virtual {v10}, Lch/boye/httpclientandroidlib/impl/client/cache/WarningValue;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v11, v12, v10}, Lch/boye/httpclientandroidlib/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_52
add-int/lit8 v1, v1, 0x1
goto :goto_34
:cond_55
const/4 v0, 0x1
goto :goto_52
:cond_57
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_2a
:cond_5b
if-eqz v0, :cond_13
const-string v0, "Warning"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->removeHeaders(Ljava/lang/String;)V
invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_66
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_13
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lch/boye/httpclientandroidlib/Header;
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->addHeader(Lch/boye/httpclientandroidlib/Header;)V
goto :goto_66
.end method
.method public ensureProtocolCompliance(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 4
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->backendResponseMustNotHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->consumeBody(Lch/boye/httpclientandroidlib/HttpResponse;)V
const/4 v0, 0x0
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_d
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->requestDidNotExpect100ContinueButResponseIsOne(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->transferEncodingIsNotReturnedTo1_0Client(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensurePartialContentIsNotSentToAClientThatDidNotRequestIt(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure200ForOPTIONSRequestWithNoBodyHasContentLengthZero(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure206ContainsDateHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->ensure304DoesNotContainExtraEntityHeaders(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->identityIsNotUsedInContentEncoding(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-direct {p0, p2}, Lch/boye/httpclientandroidlib/impl/client/cache/ResponseProtocolCompliance;->warningsWithNonMatchingWarnDatesAreRemoved(Lch/boye/httpclientandroidlib/HttpResponse;)V
return-void
.end method