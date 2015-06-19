.class public Lcom/glympse/android/lib/json/JsonSerializer;
.super Ljava/lang/Object;
.source "JsonSerializer.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
.registers 4
new-instance v0, Lcom/glympse/android/lib/json/JsonParser;
invoke-direct {v0}, Lcom/glympse/android/lib/json/JsonParser;-><init>()V
new-instance v1, Lcom/glympse/android/lib/json/b;
const/4 v2, 0x1
invoke-direct {v1, v0, v2}, Lcom/glympse/android/lib/json/b;-><init>(Lcom/glympse/android/lib/json/GJsonHandlerStack;I)V
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonParser;->pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
invoke-interface {v0, p0}, Lcom/glympse/android/lib/json/GJsonParser;->parse(Ljava/lang/String;)Z
invoke-interface {v0}, Lcom/glympse/android/lib/json/GJsonParser;->clearStack()V
invoke-virtual {v1}, Lcom/glympse/android/lib/json/b;->de()Lcom/glympse/android/core/GPrimitive;
move-result-object v0
return-object v0
.end method
.method public static toString(Lcom/glympse/android/core/GPrimitive;)Ljava/lang/String;
.registers 2
const/16 v0, 0x400
invoke-static {p0, v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toString(Lcom/glympse/android/core/GPrimitive;I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static toString(Lcom/glympse/android/core/GPrimitive;I)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V
invoke-static {v0, p0}, Lcom/glympse/android/lib/json/c;->a(Ljava/lang/StringBuilder;Lcom/glympse/android/core/GPrimitive;)V
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method