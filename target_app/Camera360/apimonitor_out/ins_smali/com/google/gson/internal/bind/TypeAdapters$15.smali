.class final Lcom/google/gson/internal/bind/TypeAdapters$15;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$15;->read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/math/BigInteger;
.registers 5
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v1
sget-object v2, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v1, v2, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v1, 0x0
:goto_c
return-object v1
:try_start_d
:cond_d
new-instance v1, Ljava/math/BigInteger;
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
:try_end_16
.catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_16} :catch_17
goto :goto_c
:catch_17
move-exception v0
new-instance v1, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v1, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/math/BigInteger;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$15;->write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V
.registers 3
invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
return-void
.end method