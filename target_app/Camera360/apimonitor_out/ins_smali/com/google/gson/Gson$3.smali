.class  Lcom/google/gson/Gson$3;
.super Lcom/google/gson/TypeAdapter;
.source "Gson.java"
.field final synthetic this$0:Lcom/google/gson/Gson;
.method constructor <init>(Lcom/google/gson/Gson;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/Gson$3;->this$0:Lcom/google/gson/Gson;
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;
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
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextDouble()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_c
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/Gson$3;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Double;
move-result-object v0
return-object v0
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
.registers 6
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_5
return-void
:cond_6
invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
iget-object v2, p0, Lcom/google/gson/Gson$3;->this$0:Lcom/google/gson/Gson;
#calls: Lcom/google/gson/Gson;->checkValidFloatingPoint(D)V
invoke-static {v2, v0, v1}, Lcom/google/gson/Gson;->access$000(Lcom/google/gson/Gson;D)V
invoke-virtual {p1, p2}, Lcom/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/google/gson/stream/JsonWriter;
goto :goto_5
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Number;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/Gson$3;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
return-void
.end method