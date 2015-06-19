.class public Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;
.super Ljava/lang/Object;
.source "RequestAcceptEncoding.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const-string v0, "Accept-Encoding"
const-string v1, "gzip,deflate"
invoke-interface {p1, v0, v1}, Lch/boye/httpclientandroidlib/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method