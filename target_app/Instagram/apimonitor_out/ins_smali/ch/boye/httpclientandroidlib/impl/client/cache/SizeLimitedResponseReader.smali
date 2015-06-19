.class  Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;
.super Ljava/lang/Object;
.source "SizeLimitedResponseReader.java"
.field private consumed:Z
.field private instream:Ljava/io/InputStream;
.field private limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;
.field private final maxResponseSizeBytes:J
.field private final request:Lch/boye/httpclientandroidlib/HttpRequest;
.field private resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
.field private final resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;
.field private final response:Lch/boye/httpclientandroidlib/HttpResponse;
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;JLch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;
iput-wide p2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J
iput-object p4, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->request:Lch/boye/httpclientandroidlib/HttpRequest;
iput-object p5, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;
return-void
.end method
.method private doConsume()V
.registers 5
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureNotConsumed()V
const/4 v0, 0x1
iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z
new-instance v0, Lch/boye/httpclientandroidlib/client/cache/InputLimit;
iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->maxResponseSizeBytes:J
invoke-direct {v0, v1, v2}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;-><init>(J)V
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-nez v0, :cond_18
:goto_17
return-void
:cond_18
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->request:Lch/boye/httpclientandroidlib/HttpRequest;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;
move-result-object v1
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resourceFactory:Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;
invoke-interface {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/client/cache/ResourceFactory;->generate(Ljava/lang/String;Ljava/io/InputStream;Lch/boye/httpclientandroidlib/client/cache/InputLimit;)Lch/boye/httpclientandroidlib/client/cache/Resource;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
goto :goto_17
.end method
.method private ensureConsumed()V
.registers 3
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Response has not been consumed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method private ensureNotConsumed()V
.registers 3
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z
if-eqz v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Response has already been consumed"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
return-void
.end method
.method  getReconstructedResponse()Lch/boye/httpclientandroidlib/HttpResponse;
.registers 5
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;)V
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpResponse;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;
move-result-object v1
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setHeaders([Lch/boye/httpclientandroidlib/Header;)V
new-instance v1, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->instream:Ljava/io/InputStream;
invoke-direct {v1, v2, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;-><init>(Lch/boye/httpclientandroidlib/client/cache/Resource;Ljava/io/InputStream;)V
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->response:Lch/boye/httpclientandroidlib/HttpResponse;
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v2
if-eqz v2, :cond_3d
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentType()Lch/boye/httpclientandroidlib/Header;
move-result-object v3
invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setContentType(Lch/boye/httpclientandroidlib/Header;)V
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentEncoding()Lch/boye/httpclientandroidlib/Header;
move-result-object v3
invoke-virtual {v1, v3}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setContentEncoding(Lch/boye/httpclientandroidlib/Header;)V
invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->isChunked()Z
move-result v2
invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/impl/client/cache/CombinedEntity;->setChunked(Z)V
:cond_3d
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V
return-object v0
.end method
.method  getResource()Lch/boye/httpclientandroidlib/client/cache/Resource;
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->resource:Lch/boye/httpclientandroidlib/client/cache/Resource;
return-object v0
.end method
.method  isLimitReached()Z
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->ensureConsumed()V
iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->limit:Lch/boye/httpclientandroidlib/client/cache/InputLimit;
invoke-virtual {v0}, Lch/boye/httpclientandroidlib/client/cache/InputLimit;->isReached()Z
move-result v0
return v0
.end method
.method protected readResponse()V
.registers 2
iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->consumed:Z
if-nez v0, :cond_7
invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/client/cache/SizeLimitedResponseReader;->doConsume()V
:cond_7
return-void
.end method