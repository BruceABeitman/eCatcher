.class final Lcom/mapquest/android/maps/u;
.super Ljava/lang/Object;
.source "HttpConnectionPool.java"
.implements Lorg/apache/http/conn/ConnectionKeepAliveStrategy;
.field final synthetic a:Lcom/mapquest/android/maps/t;
.method constructor <init>(Lcom/mapquest/android/maps/t;)V
.registers 2
iput-object p1, p0, Lcom/mapquest/android/maps/u;->a:Lcom/mapquest/android/maps/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
.registers 7
new-instance v0, Lorg/apache/http/message/BasicHeaderElementIterator;
const-string v1, "Keep-Alive"
invoke-interface {p1, v1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
move-result-object v1
invoke-direct {v0, v1}, Lorg/apache/http/message/BasicHeaderElementIterator;-><init>(Lorg/apache/http/HeaderIterator;)V
:goto_b
:cond_b
invoke-interface {v0}, Lorg/apache/http/HeaderElementIterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_2f
invoke-interface {v0}, Lorg/apache/http/HeaderElementIterator;->nextElement()Lorg/apache/http/HeaderElement;
move-result-object v1
invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {v1}, Lorg/apache/http/HeaderElement;->getValue()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_b
const-string v3, "timeout"
invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_b
:try_start_27
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
:try_end_2a
.catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_2a} :catch_32
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
:goto_2e
return-wide v0
:cond_2f
const-wide/16 v0, 0x1388
goto :goto_2e
:catch_32
move-exception v1
goto :goto_b
.end method