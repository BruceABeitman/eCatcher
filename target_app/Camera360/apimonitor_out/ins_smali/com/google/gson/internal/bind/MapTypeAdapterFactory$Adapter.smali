.class final Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/google/gson/TypeAdapter;
.source "MapTypeAdapterFactory.java"
.field private final constructor:Lcom/google/gson/internal/ObjectConstructor;
.field private final keyTypeAdapter:Lcom/google/gson/TypeAdapter;
.field final synthetic this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.field private final valueTypeAdapter:Lcom/google/gson/TypeAdapter;
.method public constructor <init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V
.registers 9
iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V
new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
invoke-direct {v0, p2, p4, p3}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;
new-instance v0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
invoke-direct {v0, p2, p6, p5}, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
iput-object v0, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
iput-object p7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;
return-void
.end method
.method private keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
.registers 4
invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z
move-result v1
if-eqz v1, :cond_39
invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
move-result-object v0
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v1
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
:goto_18
return-object v1
:cond_19
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z
move-result v1
if-eqz v1, :cond_28
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsBoolean()Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v1
goto :goto_18
:cond_28
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z
move-result v1
if-eqz v1, :cond_33
invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v1
goto :goto_18
:cond_33
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
:cond_39
invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z
move-result v1
if-eqz v1, :cond_43
const-string/jumbo v1, "null"
goto :goto_18
:cond_43
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V
throw v1
.end method
.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public read(Lcom/google/gson/stream/JsonReader;)Ljava/util/Map;
.registers 10
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;
move-result-object v2
sget-object v5, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;
if-ne v2, v5, :cond_d
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V
const/4 v1, 0x0
:goto_c
return-object v1
:cond_d
iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/google/gson/internal/ObjectConstructor;
invoke-interface {v5}, Lcom/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/Map;
sget-object v5, Lcom/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/google/gson/stream/JsonToken;
if-ne v2, v5, :cond_59
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V
:goto_1c
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v5
if-eqz v5, :cond_55
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V
iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v5, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v0
iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v5, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v4
invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_51
new-instance v5, Lcom/google/gson/JsonSyntaxException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "duplicate key: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V
throw v5
:cond_51
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
goto :goto_1c
:cond_55
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V
goto :goto_c
:cond_59
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V
:cond_5c
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z
move-result v5
if-eqz v5, :cond_93
sget-object v5, Lcom/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/google/gson/internal/JsonReaderInternalAccess;
invoke-virtual {v5, p1}, Lcom/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/google/gson/stream/JsonReader;)V
iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v5, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v0
iget-object v5, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-virtual {v5, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
move-result-object v4
invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_5c
new-instance v5, Lcom/google/gson/JsonSyntaxException;
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "duplicate key: "
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V
throw v5
:cond_93
invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V
goto/16 :goto_c
.end method
.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/util/Map;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
return-void
.end method
.method public write(Lcom/google/gson/stream/JsonWriter;Ljava/util/Map;)V
.registers 12
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;
:goto_5
return-void
:cond_6
iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
#getter for: Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z
invoke-static {v7}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;)Z
move-result v7
if-nez v7, :cond_3e
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v7
invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_19
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_3a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v8
invoke-virtual {v7, p1, v8}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
goto :goto_19
:cond_3a
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;
goto :goto_5
:cond_3e
const/4 v1, 0x0
new-instance v5, Ljava/util/ArrayList;
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v7
invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Ljava/util/ArrayList;
invoke-interface {p2}, Ljava/util/Map;->size()I
move-result v7
invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V
invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v7
invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_59
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v7
if-eqz v7, :cond_8a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v8
invoke-virtual {v7, v8}, Lcom/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/google/gson/JsonElement;
move-result-object v4
invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v7
invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonArray()Z
move-result v7
if-nez v7, :cond_85
invoke-virtual {v4}, Lcom/google/gson/JsonElement;->isJsonObject()Z
move-result v7
if-eqz v7, :cond_88
:cond_85
const/4 v7, 0x1
:goto_86
or-int/2addr v1, v7
goto :goto_59
:cond_88
const/4 v7, 0x0
goto :goto_86
:cond_8a
if-eqz v1, :cond_b6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;
const/4 v2, 0x0
:goto_90
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v7
if-ge v2, v7, :cond_b1
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginArray()Lcom/google/gson/stream/JsonWriter;
invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/google/gson/JsonElement;
invoke-static {v7, p1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V
iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-virtual {v7, p1, v8}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;
add-int/lit8 v2, v2, 0x1
goto :goto_90
:cond_b1
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endArray()Lcom/google/gson/stream/JsonWriter;
goto/16 :goto_5
:cond_b6
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;
const/4 v2, 0x0
:goto_ba
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v7
if-ge v2, v7, :cond_d9
invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/google/gson/JsonElement;
invoke-direct {p0, v4}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/google/gson/JsonElement;)Ljava/lang/String;
move-result-object v7
invoke-virtual {p1, v7}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;
iget-object v7, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/google/gson/TypeAdapter;
invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v8
invoke-virtual {v7, p1, v8}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
add-int/lit8 v2, v2, 0x1
goto :goto_ba
:cond_d9
invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;
goto/16 :goto_5
.end method