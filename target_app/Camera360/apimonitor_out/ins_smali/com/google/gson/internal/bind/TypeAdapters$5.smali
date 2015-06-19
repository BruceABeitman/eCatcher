.class final Lcom/google/gson/internal/bind/TypeAdapters$5;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
.registers 6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v2
sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v2, v3, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v2, 0x0
:goto_c
return-object v2
:try_start_d
:cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v1
int-to-byte v2, v1
invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
:try_end_15
.catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_15} :catch_17
move-result-object v2
goto :goto_c
:catch_17
move-exception v0
new-instance v2, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$5;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
.registers 3
invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
return-void
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Number;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$5;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
return-void
.end method