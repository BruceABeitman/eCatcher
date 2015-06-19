.class public Lch/boye/httpclientandroidlib/impl/client/DefaultConnectionKeepAliveStrategy;
.super Ljava/lang/Object;
.source "DefaultConnectionKeepAliveStrategy.java"
.implements Lch/boye/httpclientandroidlib/conn/ConnectionKeepAliveStrategy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getKeepAliveDuration(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)J
.registers 7
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "HTTP response may not be null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
new-instance v0, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;
const-string v1, "Keep-Alive"
invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/HttpResponse;->headerIterator(Ljava/lang/String;)Lch/boye/httpclientandroidlib/HeaderIterator;
move-result-object v1
invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/message/BasicHeaderElementIterator;-><init>(Lch/boye/httpclientandroidlib/HeaderIterator;)V
:cond_15
:goto_15
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElementIterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_39
invoke-interface {v0}, Lch/boye/httpclientandroidlib/HeaderElementIterator;->nextElement()Lch/boye/httpclientandroidlib/HeaderElement;
move-result-object v1
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lch/boye/httpclientandroidlib/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_15
const-string v3, "timeout"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_15
:try_start_31
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_34
.catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_34} :catch_3c
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
:goto_38
return-wide v0
:cond_39
const-wide/16 v0, -0x1
goto :goto_38
:catch_3c
move-exception v1
goto :goto_15
.end method