.class public Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;
.super Ljava/lang/Object;
.source "LaxContentLengthStrategy.java"
.implements Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J
.registers 10
const-wide/16 v2, -0x1
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP message may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
move-result-object v0
const-string v1, "http.protocol.strict-transfer-encoding"
invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->isParameterTrue(Ljava/lang/String;)Z
move-result v1
const-string v0, "Transfer-Encoding"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v4
const-string v0, "Content-Length"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v4, :cond_aa
:try_start_24
invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getElements()[Lch/boye/httpclientandroidlib/HeaderElement;
:try_end_27
.catch Lch/boye/httpclientandroidlib/ParseException; {:try_start_24 .. :try_end_27} :catch_61
move-result-object v5
if-eqz v1, :cond_7a
const/4 v0, 0x0
:goto_2b
array-length v6, v5
if-ge v0, v6, :cond_7a
aget-object v6, v5, v0
invoke-interface {v6}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v6
if-eqz v6, :cond_77
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v7
if-lez v7, :cond_77
const-string v7, "chunked"
invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_77
const-string v7, "identity"
invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v7
if-nez v7, :cond_77
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unsupported transfer encoding: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:catch_61
move-exception v0
new-instance v1, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid Transfer-Encoding header value: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:cond_77
add-int/lit8 v0, v0, 0x1
goto :goto_2b
:cond_7a
array-length v0, v5
const-string v6, "identity"
invoke-interface {v4}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v4
invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_89
move-wide v0, v2
:cond_88
:goto_88
return-wide v0
:cond_89
if-lez v0, :cond_9e
const-string v4, "chunked"
add-int/lit8 v0, v0, -0x1
aget-object v0, v5, v0
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_9e
const-wide/16 v0, -0x2
goto :goto_88
:cond_9e
if-eqz v1, :cond_a8
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
const-string v1, "Chunk-encoding must be the last one applied"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a8
move-wide v0, v2
goto :goto_88
:cond_aa
if-eqz v0, :cond_f6
const-string v0, "Content-Length"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getHeaders(Ljava/lang/String;)[Lch/boye/httpclientandroidlib/Header;
move-result-object v4
if-eqz v1, :cond_c0
array-length v0, v4
const/4 v5, 0x1
if-le v0, v5, :cond_c0
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
const-string v1, "Multiple content length headers"
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c0
array-length v0, v4
add-int/lit8 v0, v0, -0x1
:goto_c3
if-ltz v0, :cond_f8
aget-object v5, v4, v0
:try_start_c7
invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_ce
.catch Ljava/lang/NumberFormatException; {:try_start_c7 .. :try_end_ce} :catch_d7
move-result-wide v0
:goto_cf
const-wide/16 v4, 0x0
cmp-long v4, v0, v4
if-gez v4, :cond_88
move-wide v0, v2
goto :goto_88
:catch_d7
move-exception v6
if-eqz v1, :cond_f3
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid content length: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v5}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f3
add-int/lit8 v0, v0, -0x1
goto :goto_c3
:cond_f6
move-wide v0, v2
goto :goto_88
:cond_f8
move-wide v0, v2
goto :goto_cf
.end method