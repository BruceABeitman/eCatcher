.class synthetic Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;
.super Ljava/lang/Object;
.source "NumberDeserializers.java"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/a/o;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->a:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_12
:try_end_12
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_4e
:goto_12
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->b:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1b
:try_end_1b
.catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_4c
invoke-static {}, Lcom/fasterxml/jackson/a/r;->values()[Lcom/fasterxml/jackson/a/r;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_24
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_2f
:try_end_2f
.catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2f} :catch_4a
:goto_2f
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_3a
.catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_3a} :catch_48
:try_start_3a
:goto_3a
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_45
:try_end_45
.catch Ljava/lang/NoSuchFieldError; {:try_start_3a .. :try_end_45} :catch_46
return-void
:catch_46
move-exception v0
goto :goto_45
:catch_48
move-exception v0
goto :goto_3a
:catch_4a
move-exception v0
goto :goto_2f
:catch_4c
move-exception v0
goto :goto_1b
:catch_4e
move-exception v0
goto :goto_12
.end method