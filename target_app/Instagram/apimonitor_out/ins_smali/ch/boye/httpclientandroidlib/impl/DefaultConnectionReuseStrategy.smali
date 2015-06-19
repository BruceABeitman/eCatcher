.class public Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionReuseStrategy.java"
.implements Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected createTokenIterator(Lch/boye/httpclientandroidlib/HeaderIterator;)Lch/boye/httpclientandroidlib/TokenIterator;
.registers 3
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;
invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/message/BasicTokenIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
return-object v0
.end method
.method public keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
.registers 10
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP response may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
if-nez p2, :cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP context may not be null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_16
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/StatusLine;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v3
const-string v0, "Transfer-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_34
const-string v4, "chunked"
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_52
move v1, v2
:goto_33
:cond_33
return v1
:cond_34
const-string v0, "Content-Length"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_3f
array-length v4, v0
if-eq v4, v1, :cond_41
:cond_3f
move v1, v2
goto :goto_33
:cond_41
aget-object v0, v0, v2
:try_start_43
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_4a
.catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_4a} :catch_4f
move-result v0
if-gez v0, :cond_52
move v1, v2
goto :goto_33
:catch_4f
move-exception v0
move v1, v2
goto :goto_33
:cond_52
const-string v0, "Connection"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
move-result-object v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z
move-result v4
if-nez v4, :cond_64
const-string v0, "Proxy-Connection"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
move-result-object v0
:cond_64
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderIterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_8f
:try_start_6a
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/DefaultConnectionReuseStrategy;->createTokenIterator(Lch/boye/httpclientandroidlib/HeaderIterator;)Lch/boye/httpclientandroidlib/TokenIterator;
move-result-object v4
move v0, v2
:goto_6f
:cond_6f
invoke-interface {v4}, Lch/boye/httpclientandroidlib/TokenIterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_8d
invoke-interface {v4}, Lch/boye/httpclientandroidlib/TokenIterator;->nextToken()Ljava/lang/String;
move-result-object v5
const-string v6, "Close"
invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_83
move v1, v2
goto :goto_33
:cond_83
const-string v6, "Keep-Alive"
invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
:try_end_88
.catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_6a .. :try_end_88} :catch_99
move-result v5
if-eqz v5, :cond_6f
move v0, v1
goto :goto_6f
:cond_8d
if-nez v0, :cond_33
:cond_8f
sget-object v0, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v3, v0}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v0
if-eqz v0, :cond_33
move v1, v2
goto :goto_33
:catch_99
move-exception v0
move v1, v2
goto :goto_33
.end method