.class synthetic Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_9b
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_99
:try_start_1f
:goto_1f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_97
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_95
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_93
:goto_40
:try_start_40
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_start_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_91
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:goto_56
:try_start_56
:try_end_56
.catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_8f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_end_62
.catch Ljava/lang/NoSuchFieldError; {:try_start_56 .. :try_end_62} :catch_8d
:goto_62
:try_start_62
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_6e
:try_start_6e
:try_end_6e
.catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_8b
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0xa
aput v2, v0, v1
:try_end_7a
.catch Ljava/lang/NoSuchFieldError; {:try_start_6e .. :try_end_7a} :catch_89
:goto_7a
:try_start_7a
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/16 v2, 0xb
aput v2, v0, v1
:goto_86
:try_end_86
.catch Ljava/lang/NoSuchFieldError; {:try_start_7a .. :try_end_86} :catch_87
return-void
:catch_87
move-exception v0
goto :goto_86
:catch_89
move-exception v0
goto :goto_7a
:catch_8b
move-exception v0
goto :goto_6e
:catch_8d
move-exception v0
goto :goto_62
:catch_8f
move-exception v0
goto :goto_56
:catch_91
move-exception v0
goto :goto_4b
:catch_93
move-exception v0
goto :goto_40
:catch_95
move-exception v0
goto :goto_35
:catch_97
move-exception v0
goto :goto_2a
:catch_99
move-exception v0
goto :goto_1f
:catch_9b
move-exception v0
goto/16 :goto_14
.end method