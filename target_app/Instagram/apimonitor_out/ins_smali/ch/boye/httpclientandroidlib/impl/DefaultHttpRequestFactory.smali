.class public Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;
.super Ljava/lang/Object;
.source "DefaultHttpRequestFactory.java"
.implements Lch/boye/httpclientandroidlib/HttpRequestFactory;
.field private static final RFC2616_COMMON_METHODS:[Ljava/lang/String;
.field private static final RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;
.field private static final RFC2616_SPECIAL_METHODS:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
new-array v0, v3, [Ljava/lang/String;
const-string v1, "GET"
aput-object v1, v0, v2
sput-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;
new-array v0, v4, [Ljava/lang/String;
const-string v1, "POST"
aput-object v1, v0, v2
const-string v1, "PUT"
aput-object v1, v0, v3
sput-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/String;
const-string v1, "HEAD"
aput-object v1, v0, v2
const-string v1, "OPTIONS"
aput-object v1, v0, v3
const-string v1, "DELETE"
aput-object v1, v0, v4
const/4 v1, 0x3
const-string v2, "TRACE"
aput-object v2, v0, v1
const/4 v1, 0x4
const-string v2, "CONNECT"
aput-object v2, v0, v1
sput-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
.registers 5
const/4 v1, 0x0
move v0, v1
:goto_2
array-length v2, p0
if-ge v0, v2, :cond_e
aget-object v2, p0, v0
invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_f
const/4 v1, 0x1
:cond_e
return v1
:cond_f
add-int/lit8 v0, v0, 0x1
goto :goto_2
.end method
.method public newHttpRequest(Lch/boye/httpclientandroidlib/RequestLine;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 5
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Request line may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1c
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V
:goto_1b
return-object v0
:cond_1c
sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2a
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V
goto :goto_1b
:cond_2a
sget-object v1, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;
invoke-static {v1, v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_38
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Lch/boye/httpclientandroidlib/RequestLine;)V
goto :goto_1b
:cond_38
new-instance v1, Lch/boye/httpclientandroidlib/MethodNotSupportedException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " method not supported"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lch/boye/httpclientandroidlib/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public newHttpRequest(Ljava/lang/String;Ljava/lang/String;)Lch/boye/httpclientandroidlib/HttpRequest;
.registers 6
sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_COMMON_METHODS:[Ljava/lang/String;
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_e
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return-object v0
:cond_e
sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_ENTITY_ENC_METHODS:[Ljava/lang/String;
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1c
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:cond_1c
sget-object v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->RFC2616_SPECIAL_METHODS:[Ljava/lang/String;
invoke-static {v0, p1}, Lch/boye/httpclientandroidlib/impl/DefaultHttpRequestFactory;->isOneOf([Ljava/lang/String;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2a
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:cond_2a
new-instance v0, Lch/boye/httpclientandroidlib/MethodNotSupportedException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " method not supported"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/MethodNotSupportedException;-><init>(Ljava/lang/String;)V
throw v0
.end method