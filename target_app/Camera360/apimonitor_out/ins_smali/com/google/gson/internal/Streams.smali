.class public final Lcom/google/gson/internal/Streams;
.super Ljava/lang/Object;
.source "Streams.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static parse(Lcom/google/gson/stream/JsonReader;)Lcom/google/gson/JsonElement;
.registers 4
const/4 v1, 0x1
:try_start_1
invoke-virtual {p0}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
const/4 v1, 0x0
sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;
invoke-virtual {v2, p0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/gson/JsonElement;
:goto_d
:try_end_d
.catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
.catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_1 .. :try_end_d} :catch_1a
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
.catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28
return-object v2
:catch_e
move-exception v0
if-eqz v1, :cond_14
sget-object v2, Lcom/google/gson/JsonNull;->INSTANCE:Lcom/google/gson/JsonNull;
goto :goto_d
:cond_14
new-instance v2, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_1a
move-exception v0
new-instance v2, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_21
move-exception v0
new-instance v2, Lcom/google/gson/JsonIOException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catch_28
move-exception v0
new-instance v2, Lcom/google/gson/JsonSyntaxException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method public static write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
.registers 3
sget-object v0, Lcom/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, p1, p0}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return-void
.end method
.method public static writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;
.registers 3
instance-of v0, p0, Ljava/io/Writer;
if-eqz v0, :cond_7
check-cast p0, Ljava/io/Writer;
:goto_6
return-object p0
:cond_7
new-instance v0, Lcom/google/gson/internal/Streams$AppendableWriter;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/gson/internal/Streams$AppendableWriter;-><init>(Ljava/lang/Appendable;Lcom/google/gson/internal/Streams$1;)V
move-object p0, v0
goto :goto_6
.end method