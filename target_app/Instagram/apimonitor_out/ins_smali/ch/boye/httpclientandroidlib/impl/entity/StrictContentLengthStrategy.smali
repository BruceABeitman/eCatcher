.class public Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;
.super Ljava/lang/Object;
.source "StrictContentLengthStrategy.java"
.implements Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public determineLength(Lch/boye/httpclientandroidlib/HttpMessage;)J
.registers 7
const-wide/16 v0, -0x1
if-nez p1, :cond_c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP message may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
const-string v2, "Transfer-Encoding"
invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v2
const-string v3, "Content-Length"
invoke-interface {p1, v3}, Lch/boye/httpclientandroidlib/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v3
if-eqz v2, :cond_6b
invoke-interface {v2}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
const-string v3, "chunked"
invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_4e
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v0
sget-object v1, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolVersion;->lessEquals(Lch/boye/httpclientandroidlib/ProtocolVersion;)Z
move-result v0
if-eqz v0, :cond_4b
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Chunked transfer encoding not allowed for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_4b
const-wide/16 v0, -0x2
:cond_4d
return-wide v0
:cond_4e
const-string v3, "identity"
invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_4d
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Unsupported transfer encoding: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6b
if-eqz v3, :cond_4d
invoke-interface {v3}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v2
:try_start_71
invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v3, 0x0
cmp-long v3, v0, v3
if-gez v3, :cond_4d
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Negative content length: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
:try_end_90
.catch Ljava/lang/NumberFormatException; {:try_start_71 .. :try_end_90} :catch_90
:catch_90
move-exception v0
new-instance v0, Lch/boye/httpclientandroidlib/ProtocolException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "Invalid content length: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/ProtocolException;-><init>(Ljava/lang/String;)V
throw v0
.end method