.class  Lcom/google/gson/TypeAdapter$1;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapter.java"
.field final synthetic this$0:Lcom/google/gson/TypeAdapter;
.method constructor <init>(Lcom/google/gson/TypeAdapter;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/TypeAdapter$1;->this$0:Lcom/google/gson/TypeAdapter;
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
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
iget-object v0, p0, Lcom/google/gson/TypeAdapter$1;->this$0:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 4
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_5
return-void
:cond_6
iget-object v0, p0, Lcom/google/gson/TypeAdapter$1;->this$0:Lcom/google/gson/TypeAdapter;
invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
goto :goto_5
.end method