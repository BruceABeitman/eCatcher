.class  Lco/vine/android/network/ShortKeepAliveStrategy;
.super Ljava/lang/Object;
.source "ShortKeepAliveStrategy.java"
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.field private static final DEFAULT_KEEP_ALIVE_DURATION:J = 0xea60L
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
.registers 13
new-instance v1, Lorg/apache/http/message/BasicHeaderElementIterator;
const-string v6, "Keep-Alive"
invoke-interface {p1, v6}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
move-result-object v6
invoke-direct {v1, v6}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V
:cond_b
:goto_b
invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_36
invoke-interface {v1}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;
move-result-object v0
invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v0}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_b
const-string v6, "timeout"
invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_b
:try_start_27
invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_2a
.catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_3a
move-result-wide v6
const-wide/16 v8, 0x3e8
mul-long v3, v6, v8
const-wide/16 v6, 0x0
cmp-long v6, v3, v6
if-lez v6, :cond_b
:goto_35
return-wide v3
:cond_36
const-wide/32 v3, 0xea60
goto :goto_35
:catch_3a
move-exception v6
goto :goto_b
.end method