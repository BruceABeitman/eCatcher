.class synthetic Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->values()[Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_bf
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_bc
:goto_1f
:try_start_1f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b6
invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_3e
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_end_49
.catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_b4
:goto_49
:try_start_49
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_54
:try_start_54
:try_end_54
.catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_b2
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_b0
:goto_5f
:try_start_5f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_6a
:try_start_6a
:try_end_6a
.catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_ae
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_75
:try_start_75
:try_end_75
.catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_ac
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_end_80
.catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_aa
:goto_80
:try_start_80
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:try_start_8b
:goto_8b
:try_end_8b
.catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_a8
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_start_97
:try_end_97
.catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_97} :catch_a6
:goto_97
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_a3
:try_end_a3
.catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_a4
return-void
:catch_a4
move-exception v0
goto :goto_a3
:catch_a6
move-exception v0
goto :goto_97
:catch_a8
move-exception v0
goto :goto_8b
:catch_aa
move-exception v0
goto :goto_80
:catch_ac
move-exception v0
goto :goto_75
:catch_ae
move-exception v0
goto :goto_6a
:catch_b0
move-exception v0
goto :goto_5f
:catch_b2
move-exception v0
goto :goto_54
:catch_b4
move-exception v0
goto :goto_49
:catch_b6
move-exception v0
goto/16 :goto_35
:catch_b9
move-exception v0
goto/16 :goto_2a
:catch_bc
move-exception v0
goto/16 :goto_1f
:catch_bf
move-exception v0
goto/16 :goto_14
.end method