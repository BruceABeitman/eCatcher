.class final Lcom/google/gson/internal/bind/TypeAdapters$2;
.super Lcom/google/gson/TypeAdapter;
.source "TypeAdapters.java"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
return-void
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
move-result-object v0
return-object v0
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/BitSet;
.registers 12
const/4 v6, 0x1
const/4 v7, 0x0
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v8
sget-object v9, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v8, v9, :cond_f
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v0, 0x0
:goto_e
return-object v0
:cond_f
new-instance v0, Ljava/util/BitSet;
invoke-direct {v0}, Ljava/util/BitSet;-><init>()V
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v5
:goto_1c
sget-object v8, Lcom/google/gson/stream/JsonToken;->END_ARRAY:Lcom/google/gson/stream/JsonToken;
if-eq v5, v8, :cond_88
sget-object v8, Lcom/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$google$gson$stream$JsonToken:[I
invoke-virtual {v5}, Lcom/google/gson/stream/JsonToken;->ordinal()I
move-result v9
aget v8, v8, v9
packed-switch v8, :pswitch_data_8c
new-instance v6, Lcom/google/gson/JsonSyntaxException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "Invalid bitset value type: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V
throw v6
:pswitch_45
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextInt()I
move-result v8
if-eqz v8, :cond_58
move v3, v6
:goto_4c
if-eqz v3, :cond_51
invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V
:cond_51
add-int/lit8 v2, v2, 0x1
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v5
goto :goto_1c
:cond_58
move v3, v7
goto :goto_4c
:pswitch_5a
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextBoolean()Z
move-result v3
goto :goto_4c
:pswitch_5f
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;
move-result-object v4
:try_start_63
invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_66
.catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_66} :catch_6d
move-result v8
if-eqz v8, :cond_6b
move v3, v6
:goto_6a
goto :goto_4c
:cond_6b
move v3, v7
goto :goto_6a
:catch_6d
move-exception v1
new-instance v6, Lcom/google/gson/JsonSyntaxException;
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "Error: Expecting: bitset number value (1, 0), Found: "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V
throw v6
:cond_88
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
goto :goto_e
:pswitch_data_8c
.packed-switch 0x1
:pswitch_45
:pswitch_5a
:pswitch_5f
.end packed-switch
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/BitSet;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
.registers 7
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_5
return-void
:cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;
const/4 v0, 0x0
:goto_a
invoke-virtual {p2}, Ljava/util/BitSet;->length()I
move-result v2
if-ge v0, v2, :cond_20
invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z
move-result v2
if-eqz v2, :cond_1e
const/4 v1, 0x1
:goto_17
int-to-long v2, v1
invoke-virtual {p1, v2, v3}, Lcom/google/gson/stream/JsonWriter;->value(J)Lcom/google/gson/stream/JsonWriter;
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_1e
const/4 v1, 0x0
goto :goto_17
:cond_20
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;
goto :goto_5
.end method