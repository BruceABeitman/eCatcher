.class final Lcom/google/gson/internal/bind/TypeAdapters$21;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$21;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/UUID;
move-result-object v0
return-object v0
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/UUID;
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
invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
move-result-object v0
goto :goto_c
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/UUID;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$21;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/UUID;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
return-void
:cond_7
invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method