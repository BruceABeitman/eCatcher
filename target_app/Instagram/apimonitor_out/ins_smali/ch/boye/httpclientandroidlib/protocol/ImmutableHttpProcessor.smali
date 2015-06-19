.class public final Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"
.implements Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
.field private final requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.field private final responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_1c
invoke-interface {p1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I
move-result v2
new-array v1, v2, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
move v1, v0
:goto_f
if-ge v1, v2, :cond_20
iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
move-result-object v4
aput-object v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_f
:cond_1c
new-array v1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
:cond_20
if-eqz p2, :cond_37
invoke-interface {p2}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I
move-result v1
new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
:goto_2a
if-ge v0, v1, :cond_3b
iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_2a
:cond_37
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
:cond_3b
return-void
.end method
.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
return-void
.end method
.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_17
array-length v2, p1
new-array v1, v2, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
move v1, v0
:goto_c
if-ge v1, v2, :cond_1b
iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
aget-object v4, p1, v1
aput-object v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_c
:cond_17
new-array v1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
:cond_1b
if-eqz p2, :cond_2d
array-length v1, p2
new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
:goto_22
if-ge v0, v1, :cond_31
iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
aget-object v3, p2, v0
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_22
:cond_2d
new-array v0, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
:cond_31
return-void
.end method
.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
return-void
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
array-length v1, v1
if-ge v0, v1, :cond_10
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
aget-object v1, v1, v0
invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_10
return-void
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
const/4 v0, 0x0
:goto_1
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
array-length v1, v1
if-ge v0, v1, :cond_10
iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
aget-object v1, v1, v0
invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_10
return-void
.end method