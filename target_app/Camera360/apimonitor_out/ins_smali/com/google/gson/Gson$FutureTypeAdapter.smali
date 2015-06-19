.class  Lcom/google/gson/Gson$FutureTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"
.field private delegate:Lcom/google/gson/TypeAdapter;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public setDelegate(Lcom/google/gson/TypeAdapter;)V
.registers 3
iget-object v0, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_a
iput-object p1, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
return-void
.end method