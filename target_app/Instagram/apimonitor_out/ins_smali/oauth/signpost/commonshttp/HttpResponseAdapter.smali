.class public Loauth/signpost/commonshttp/HttpResponseAdapter;
.super Ljava/lang/Object;
.source "HttpResponseAdapter.java"
.implements Loauth/signpost/http/HttpResponse;
.field private response:Lorg/apache/http/HttpResponse;
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;
return-void
.end method
.method public getContent()Ljava/io/InputStream;
.registers 2
iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
move-result-object v0
return-object v0
.end method
.method public getReasonPhrase()Ljava/lang/String;
.registers 2
iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getStatusCode()I
.registers 2
iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;
invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
move-result v0
return v0
.end method
.method public unwrap()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Loauth/signpost/commonshttp/HttpResponseAdapter;->response:Lorg/apache/http/HttpResponse;
return-object v0
.end method