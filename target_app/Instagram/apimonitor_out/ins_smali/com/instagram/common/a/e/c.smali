.class public final Lcom/instagram/common/a/e/c;
.super Ljava/lang/Object;
.source "GzipRequestInterceptor.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const-string v0, "Accept-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpRequest;->containsHeader(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_f
const-string v0, "Accept-Encoding"
const-string v1, "gzip"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
:cond_f
return-void
.end method