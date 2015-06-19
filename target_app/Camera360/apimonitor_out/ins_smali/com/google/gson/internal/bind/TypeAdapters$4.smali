.class final Lcom/google/gson/internal/bind/TypeAdapters$4;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;
.registers 4
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v0
sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v0, 0x0
:goto_c
return-object v0
:cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object v0
goto :goto_c
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$4;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V
.registers 4
if-nez p2, :cond_9
const-string/jumbo v0, "null"
:goto_5
invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
return-void
:cond_9
invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$4;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Boolean;)V
return-void
.end method