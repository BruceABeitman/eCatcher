.class public Lch/boye/httpclientandroidlib/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"
.field private volatile connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
.field private volatile expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
.field private volatile handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
.field private volatile params:Lch/boye/httpclientandroidlib/params/HttpParams;
.field private volatile processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
.field private volatile responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 13
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v6, p5
invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/protocol/HttpService;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
if-nez p1, :cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP processor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
if-nez p2, :cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection reuse strategy may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_24
if-nez p3, :cond_2e
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Response factory may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2e
if-nez p6, :cond_38
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP parameters may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_38
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
iput-object p3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
iput-object p4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
iput-object p5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
iput-object p6, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method protected doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
if-eqz v1, :cond_13
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;
move-result-object v0
:cond_13
if-eqz v0, :cond_19
invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;->handle(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
:goto_18
return-void
:cond_19
const/16 v0, 0x1f5
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V
goto :goto_18
.end method
.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
.registers 2
iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
return-object v0
.end method
.method protected handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 5
instance-of v0, p1, Lch/boye/httpclientandroidlib/MethodNotSupportedException;
if-eqz v0, :cond_1f
const/16 v0, 0x1f5
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V
:goto_9
invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V
const-string v0, "text/plain; charset=US-ASCII"
invoke-virtual {v1, v0}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;->setContentType(Ljava/lang/String;)V
invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
return-void
:cond_1f
instance-of v0, p1, Lch/boye/httpclientandroidlib/UnsupportedHttpVersionException;
if-eqz v0, :cond_29
const/16 v0, 0x1f9
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V
goto :goto_9
:cond_29
instance-of v0, p1, Lch/boye/httpclientandroidlib/ProtocolException;
if-eqz v0, :cond_33
const/16 v0, 0x190
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V
goto :goto_9
:cond_33
const/16 v0, 0x1f4
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V
goto :goto_9
.end method
.method public handleRequest(Lch/boye/httpclientandroidlib/HttpServerConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 14
const/4 v3, 0x0
const/16 v10, 0x1f4
const/16 v9, 0xc8
const-string v1, "http.connection"
invoke-interface {p2, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
:try_start_a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;
move-result-object v2
new-instance v1, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v4
iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-direct {v1, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v2, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v1
sget-object v4, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v1, v4}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v4
if-nez v4, :cond_100
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;
move-object v5, v1
:goto_2f
instance-of v1, v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v1, :cond_73
move-object v0, v2
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
move-object v1, v0
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z
move-result v1
if-eqz v1, :cond_6c
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
const/16 v4, 0x64
invoke-interface {v1, v5, v4, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
new-instance v4, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v6
iget-object v7, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-direct {v4, v6, v7}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v1, v4}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
:try_end_55
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_a .. :try_end_55} :catch_e4
if-eqz v4, :cond_5c
:try_start_57
iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
invoke-interface {v4, v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;->verify(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
:try_end_5c
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_57 .. :try_end_5c} :catch_c5
:goto_5c
:cond_5c
:try_start_5c
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v4
invoke-interface {v4}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v4
if-ge v4, v9, :cond_74
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V
:cond_6c
move-object v0, v2
check-cast v0, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
move-object v1, v0
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
:cond_73
move-object v1, v3
:cond_74
if-nez v1, :cond_9e
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
const/16 v3, 0xc8
invoke-interface {v1, v5, v3, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
new-instance v3, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v4
iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
const-string v3, "http.request"
invoke-interface {p2, v3, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
const-string v3, "http.response"
invoke-interface {p2, v3, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
invoke-interface {v3, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
invoke-virtual {p0, v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
:cond_9e
instance-of v3, v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
if-eqz v3, :cond_ab
check-cast v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v2
invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
:cond_ab
:goto_ab
:try_end_ab
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_5c .. :try_end_ab} :catch_e4
iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
invoke-interface {v2, v1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpProcessor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V
iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
invoke-interface {v2, v1, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
move-result v1
if-nez v1, :cond_c4
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->close()V
:cond_c4
return-void
:catch_c5
move-exception v1
:try_start_c6
iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
sget-object v6, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
const/16 v7, 0x1f4
invoke-interface {v4, v6, v7, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v4
new-instance v6, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v7
iget-object v8, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-direct {v6, v7, v8}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v4, v6}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-virtual {p0, v1, v4}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V
:try_end_e1
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_c6 .. :try_end_e1} :catch_e4
move-object v1, v4
goto/16 :goto_5c
:catch_e4
move-exception v1
move-object v2, v1
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-interface {v1, v3, v10, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
new-instance v3, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v4
iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
invoke-direct {v3, v4, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-interface {v1, v3}, Lch/boye/httpclientandroidlib/HttpResponse;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
invoke-virtual {p0, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V
goto :goto_ab
:cond_100
move-object v5, v1
goto/16 :goto_2f
.end method
.method public setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Connection reuse strategy may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
return-void
.end method
.method public setExpectationVerifier(Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
return-void
.end method
.method public setHandlerResolver(Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;
return-void
.end method
.method public setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP processor may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
return-void
.end method
.method public setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
.registers 2
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;
return-void
.end method
.method public setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Response factory may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;
return-void
.end method