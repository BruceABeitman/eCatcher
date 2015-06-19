.class public Lch/boye/httpclientandroidlib/impl/client/BasicResponseHandler;
.super Ljava/lang/Object;
.source "BasicResponseHandler.java"
.implements Lch/boye/httpclientandroidlib/client/ResponseHandler;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public bridge synthetic handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/BasicResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/String;
.registers 5
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v1
const/16 v2, 0x12c
if-lt v1, v2, :cond_1a
new-instance v1, Lch/boye/httpclientandroidlib/client/HttpResponseException;
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I
move-result v2
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getReasonPhrase()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/client/HttpResponseException;-><init>(ILjava/lang/String;)V
throw v1
:cond_1a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;
move-result-object v0
if-nez v0, :cond_22
const/4 v0, 0x0
:goto_21
return-object v0
:cond_22
invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toString(Lch/boye/httpclientandroidlib/HttpEntity;)Ljava/lang/String;
move-result-object v0
goto :goto_21
.end method