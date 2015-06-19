.class synthetic Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;
.super Ljava/lang/Object;
.source "JsonNodeDeserializer.java"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/core/JsonToken;->values()[Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
goto :goto_1f
:catch_22
move-exception v0
goto :goto_14
.end method