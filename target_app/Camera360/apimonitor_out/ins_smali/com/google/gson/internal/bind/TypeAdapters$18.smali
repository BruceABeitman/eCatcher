.class final Lcom/google/gson/internal/bind/TypeAdapters$18;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$18;->read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URL;
move-result-object v0
return-object v0
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/net/URL;
.registers 6
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v2
sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v2, v3, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
:cond_c
:goto_c
return-object v1
:cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v2, "null"
invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_c
new-instance v1, Ljava/net/URL;
invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
goto :goto_c
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/net/URL;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$18;->write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URL;)V
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/net/URL;)V
.registers 4
if-nez p2, :cond_7
const/4 v0, 0x0
:goto_3
invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
return-void
:cond_7
invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
move-result-object v0
goto :goto_3
.end method