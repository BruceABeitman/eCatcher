.class public abstract Lcom/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "TypeAdapter.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
.registers 4
new-instance v0, Lcom/google/gson/stream/JsonReader;
invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {p0, v0}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v1
return-object v1
.end method
.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
.registers 3
new-instance v0, Ljava/io/StringReader;
invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final fromJsonTree(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
.registers 5
:try_start_0
new-instance v1, Lcom/google/gson/internal/bind/JsonTreeReader;
invoke-direct {v1, p1}, Lcom/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/google/gson/JsonElement;)V
invoke-virtual {p0, v1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
:try_end_8
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_a
move-result-object v2
return-object v2
:catch_a
move-exception v0
new-instance v2, Lcom/google/gson/JsonIOException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method public final nullSafe()Lcom/google/gson/TypeAdapter;
.registers 2
new-instance v0, Lcom/google/gson/TypeAdapter$1;
invoke-direct {v0, p0}, Lcom/google/gson/TypeAdapter$1;-><init>(Lcom/google/gson/TypeAdapter;)V
return-object v0
.end method
.method public abstract read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.end method
.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
invoke-virtual {p0, v0, p1}, Lcom/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v1
return-object v1
.end method
.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
.registers 4
new-instance v0, Lcom/google/gson/stream/JsonWriter;
invoke-direct {v0, p1}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p0, v0, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return-void
.end method
.method public final toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
.registers 5
:try_start_0
new-instance v1, Lcom/google/gson/internal/bind/JsonTreeWriter;
invoke-direct {v1}, Lcom/google/gson/internal/bind/JsonTreeWriter;-><init>()V
invoke-virtual {p0, v1, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
invoke-virtual {v1}, Lcom/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/google/gson/JsonElement;
:try_end_b
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v2
return-object v2
:catch_d
move-exception v0
new-instance v2, Lcom/google/gson/JsonIOException;
invoke-direct {v2, v0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V
throw v2
.end method
.method public abstract write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.end method