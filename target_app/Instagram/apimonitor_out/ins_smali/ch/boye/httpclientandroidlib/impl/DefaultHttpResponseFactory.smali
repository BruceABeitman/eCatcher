.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;
.super Ljava/lang/Object;
.source "DefaultHttpResponseFactory.java"
.implements Lch/boye/httpclientandroidlib/HttpResponseFactory;
.field protected final reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;
.method public constructor <init>()V
.registers 2
sget-object v0, Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;->INSTANCE:Lch/boye/httpclientandroidlib/impl/EnglishReasonPhraseCatalog;
invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;-><init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V
return-void
.end method
.method public constructor <init>(Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_d
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Reason phrase catalog must not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;
return-void
.end method
.method protected determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;
.registers 3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method public newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 8
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP version may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;
move-result-object v0
iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;
invoke-interface {v1, p2, v0}, Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;->getReason(ILjava/util/Locale;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lch/boye/httpclientandroidlib/message/BasicStatusLine;
invoke-direct {v2, p1, p2, v1}, Lch/boye/httpclientandroidlib/message/BasicStatusLine;-><init>(Lch/boye/httpclientandroidlib/ProtocolVersion;ILjava/lang/String;)V
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
iget-object v3, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;
invoke-direct {v1, v2, v3, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V
return-object v1
.end method
.method public newHttpResponse(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
.registers 6
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Status line may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->determineLocale(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Locale;
move-result-object v0
new-instance v1, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;
iget-object v2, p0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;->reasonCatalog:Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;
invoke-direct {v1, p1, v2, v0}, Lch/boye/httpclientandroidlib/message/BasicHttpResponse;-><init>(Lch/boye/httpclientandroidlib/StatusLine;Lch/boye/httpclientandroidlib/ReasonPhraseCatalog;Ljava/util/Locale;)V
return-object v1
.end method