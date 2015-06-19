.class public final Lcom/instagram/api/g/m;
.super Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;
.source "NetworkTraceEnabledHttpRequestExecutor.java"
.field private final a:Lcom/instagram/api/g/j;
.method public constructor <init>(Lcom/instagram/api/g/j;)V
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;-><init>()V
iput-object p1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
return-void
.end method
.method protected final doReceiveResponse(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
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
if-ge v0, v2, :cond_42
:cond_26
invoke-interface {p2}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v1
iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
const/4 v2, 0x2
invoke-virtual {v0, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V
invoke-virtual {p0, p1, v1}, Lcom/instagram/api/g/m;->canResponseHaveBody(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
:cond_39
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v0
goto :goto_20
:cond_42
iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v0, p1, v1, p2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;
return-object v1
.end method
.method protected final doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 7
iget-object v0, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v0, p1}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;)V
invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->doSendRequest(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
move-result-object v0
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
const/4 v2, 0x1
invoke-virtual {v1, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
const/4 v2, 0x2
invoke-virtual {v1, p1, v2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;I)V
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v1, p1, v0, p2}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/HttpClientConnection;)Lcom/instagram/api/g/i;
:cond_1c
return-object v0
.end method
.method public final execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
:try_start_0
invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestExecutor;->execute(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpClientConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
:try_end_3
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5
.catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_3} :catch_c
.catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_13
move-result-object v0
return-object v0
:catch_5
move-exception v0
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;
throw v0
:catch_c
move-exception v0
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;
throw v0
:catch_13
move-exception v0
iget-object v1, p0, Lcom/instagram/api/g/m;->a:Lcom/instagram/api/g/j;
invoke-virtual {v1, p1, v0}, Lcom/instagram/api/g/j;->a(Lch/boye/httpclientandroidlib/HttpRequest;Ljava/lang/Exception;)Lcom/instagram/api/g/i;
throw v0
.end method