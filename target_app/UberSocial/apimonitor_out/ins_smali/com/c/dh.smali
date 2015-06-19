.class final Lcom/c/dh;
.super Lcom/c/dd;
.field  f:Lorg/apache/http/HttpEntity;
.method constructor <init>(Lorg/apache/http/HttpResponse;)V
.registers 4
invoke-direct {p0}, Lcom/c/dd;-><init>()V
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
iput v0, p0, Lcom/c/dh;->a:I
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/c/dh;->b:Ljava/lang/String;
invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
iput-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
iput-object v0, p0, Lcom/c/dh;->e:Ljava/io/InputStream;
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J
move-result-wide v0
iput-wide v0, p0, Lcom/c/dh;->d:J
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v0
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/c/dh;->c:Ljava/lang/String;
:cond_45
return-void
.end method
.method public f()V
.registers 2
invoke-super {p0}, Lcom/c/dd;->f()V
iget-object v0, p0, Lcom/c/dh;->f:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
return-void
.end method