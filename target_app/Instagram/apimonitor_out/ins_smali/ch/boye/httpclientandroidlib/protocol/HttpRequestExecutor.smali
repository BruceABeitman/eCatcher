.class public Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
.super Ljava/lang/Object;
.source "HttpRequestExecutor.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static final closeConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V
.registers 2
:try_start_0
invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->close()V
:goto_3
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
goto :goto_3
.end method
.method protected canResponseHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
.registers 6
const/4 v0, 0x0
const-string v1, "HEAD"
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v2
invoke-interface {v2}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_12
:goto_11
:cond_11
return v0
:cond_12
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0xc8
if-lt v1, v2, :cond_11
const/16 v2, 0xcc
if-eq v1, v2, :cond_11
const/16 v2, 0x130
if-eq v1, v2, :cond_11
const/16 v2, 0xcd
if-eq v1, v2, :cond_11
const/4 v0, 0x1
goto :goto_11
.end method
.method protected doReceiveResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 7
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP connection may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
if-nez p3, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const/4 v1, 0x0
const/4 v0, 0x0
:goto_20
if-eqz v1, :cond_26
const/16 v2, 0xc8
if-ge v0, v2, :cond_3c
:cond_26
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
invoke-virtual {p0, p1, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->canResponseHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
:cond_33
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
goto :goto_20
:cond_3c
return-object v1
.end method
.method protected doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 9
const/4 v1, 0x0
if-nez p1, :cond_b
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_b
if-nez p2, :cond_15
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP connection may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_15
if-nez p3, :cond_1f
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
const-string v0, "http.connection"
invoke-interface {p3, v0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "http.request_sent"
sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
invoke-interface {p3, v0, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
instance-of v0, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v0, :cond_b2
const/4 v2, 0x1
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v3
move-object v0, p1
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z
move-result v0
if-eqz v0, :cond_af
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v0
if-nez v0, :cond_af
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->flush()V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
const-string v3, "http.protocol.wait-for-continue"
const/16 v4, 0x7d0
invoke-interface {v0, v3, v4}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I
move-result v0
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->isResponseAvailable(I)Z
move-result v0
if-eqz v0, :cond_af
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v3
invoke-virtual {p0, p1, v3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->canResponseHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-eqz v0, :cond_6e
invoke-interface {p2, v3}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
:cond_6e
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
const/16 v4, 0xc8
if-ge v0, v4, :cond_ab
const/16 v4, 0x64
if-eq v0, v4, :cond_97
new-instance v0, Ljava/net/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unexpected response: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v3}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_97
move-object v0, v1
move v1, v2
:goto_99
if-eqz v1, :cond_a0
check-cast p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
:goto_a0
:cond_a0
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->flush()V
const-string v1, "http.request_sent"
sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-interface {p3, v1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
return-object v0
:cond_ab
const/4 v0, 0x0
move v1, v0
move-object v0, v3
goto :goto_99
:cond_af
move-object v0, v1
move v1, v2
goto :goto_99
:cond_b2
move-object v0, v1
goto :goto_a0
.end method
.method public execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Client connection may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
if-nez p3, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:try_start_1e
:cond_1e
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
if-nez v0, :cond_28
invoke-virtual {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->doReceiveResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
:try_end_27
.catch Ljava/io/IOException; {:try_start_1e .. :try_end_27} :catch_29
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1e .. :try_end_27} :catch_2e
.catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_27} :catch_33
move-result-object v0
:cond_28
return-object v0
:catch_29
move-exception v0
invoke-static {p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->closeConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V
throw v0
:catch_2e
move-exception v0
invoke-static {p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->closeConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V
throw v0
:catch_33
move-exception v0
invoke-static {p2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->closeConnection(Lch/boye/httpclientandroidlib/HttpClientConnection;)V
throw v0
.end method
.method public postProcess(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP response may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP processor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
if-nez p3, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const-string v0, "http.response"
invoke-interface {p3, v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2, p1, p3}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
return-void
.end method
.method public preProcess(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP request may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
if-nez p2, :cond_14
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP processor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_14
if-nez p3, :cond_1e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1e
const-string v0, "http.request"
invoke-interface {p3, v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
invoke-interface {p2, p1, p3}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
return-void
.end method