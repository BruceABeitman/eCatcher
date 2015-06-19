.class synthetic Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;
.super Ljava/lang/Object;
.source "TreeTraversingParser.java"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/a/r;->values()[Lcom/fasterxml/jackson/a/r;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49
:goto_14
sget-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_start_1f
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47
sget-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45
:goto_2a
sget-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43
:goto_35
:try_start_35
sget-object v0, Lcom/fasterxml/jackson/databind/node/TreeTraversingParser$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41
:goto_40
return-void
:catch_41
move-exception v0
goto :goto_40
:catch_43
move-exception v0
goto :goto_35
:catch_45
move-exception v0
goto :goto_2a
:catch_47
move-exception v0
goto :goto_1f
:catch_49
move-exception v0
goto :goto_14
.end method