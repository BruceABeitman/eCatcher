.class public Ld/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ld/a/d/b;
.field private a:Lorg/apache/http/client/methods/HttpUriRequest;
.field private b:Lorg/apache/http/HttpEntity;
.method public constructor <init>(Lorg/apache/http/client/methods/HttpUriRequest;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
instance-of v0, p1, Lorg/apache/http/HttpEntityEnclosingRequest;
if-eqz v0, :cond_11
check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;
invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
iput-object v0, p0, Ld/a/b/c;->b:Lorg/apache/http/HttpEntity;
:cond_11
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getRequestLine()Lorg/apache/http/RequestLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;)V
.registers 4
new-instance v0, Ljava/lang/RuntimeException;
new-instance v1, Ljava/lang/UnsupportedOperationException;
invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0, p1, p2}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;
move-result-object v0
invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
goto :goto_9
.end method
.method public c()Ljava/util/Map;
.registers 7
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
array-length v3, v1
const/4 v0, 0x0
:goto_d
if-ge v0, v3, :cond_1f
aget-object v4, v1, v0
invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1f
return-object v2
.end method
.method public d()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Ld/a/b/c;->b:Lorg/apache/http/HttpEntity;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Ld/a/b/c;->b:Lorg/apache/http/HttpEntity;
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
goto :goto_5
.end method
.method public e()Ljava/lang/String;
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Ld/a/b/c;->b:Lorg/apache/http/HttpEntity;
if-nez v1, :cond_6
:cond_5
:goto_5
return-object v0
:cond_6
iget-object v1, p0, Ld/a/b/c;->b:Lorg/apache/http/HttpEntity;
invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;
move-result-object v1
if-eqz v1, :cond_5
invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public g()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Ld/a/b/c;->a:Lorg/apache/http/client/methods/HttpUriRequest;
return-object v0
.end method