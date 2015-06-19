.class synthetic Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;
.super Ljava/lang/Object;
.source "TokenBuffer.java"
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
.field static final synthetic $SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/a/o;->a()[I
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
:try_start_9
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->a:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_12
:goto_12
:try_end_12
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_ef
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->c:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_1b
.catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1b} :catch_ec
:try_start_1b
:goto_1b
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->f:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_24
.catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_24} :catch_e9
:try_start_24
:goto_24
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->d:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x4
aput v2, v0, v1
:try_start_2d
:goto_2d
:try_end_2d
.catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_2d} :catch_e6
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
sget v1, Lcom/fasterxml/jackson/a/o;->b:I
add-int/lit8 v1, v1, -0x1
const/4 v2, 0x5
aput v2, v0, v1
:goto_36
:try_end_36
.catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_36} :catch_e3
invoke-static {}, Lcom/fasterxml/jackson/a/r;->values()[Lcom/fasterxml/jackson/a/r;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
:try_start_3f
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_4a
:goto_4a
:try_end_4a
.catch Ljava/lang/NoSuchFieldError; {:try_start_3f .. :try_end_4a} :catch_e0
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_55
:try_start_55
:try_end_55
.catch Ljava/lang/NoSuchFieldError; {:try_start_4a .. :try_end_55} :catch_dd
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_start_60
:try_end_60
.catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_db
:goto_60
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_6b
:try_start_6b
:try_end_6b
.catch Ljava/lang/NoSuchFieldError; {:try_start_60 .. :try_end_6b} :catch_d9
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_76
:try_start_76
:try_end_76
.catch Ljava/lang/NoSuchFieldError; {:try_start_6b .. :try_end_76} :catch_d7
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:try_start_81
:try_end_81
.catch Ljava/lang/NoSuchFieldError; {:try_start_76 .. :try_end_81} :catch_d5
:goto_81
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:try_start_8c
:goto_8c
:try_end_8c
.catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8c} :catch_d3
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_start_98
:try_end_98
.catch Ljava/lang/NoSuchFieldError; {:try_start_8c .. :try_end_98} :catch_d1
:goto_98
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_a4
:try_start_a4
:try_end_a4
.catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a4} :catch_cf
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/16 v2, 0xa
aput v2, v0, v1
:try_end_b0
.catch Ljava/lang/NoSuchFieldError; {:try_start_a4 .. :try_end_b0} :catch_cd
:goto_b0
:try_start_b0
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/16 v2, 0xb
aput v2, v0, v1
:try_end_bc
.catch Ljava/lang/NoSuchFieldError; {:try_start_b0 .. :try_end_bc} :catch_cb
:try_start_bc
:goto_bc
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
sget-object v1, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
const/16 v2, 0xc
aput v2, v0, v1
:try_end_c8
.catch Ljava/lang/NoSuchFieldError; {:try_start_bc .. :try_end_c8} :catch_c9
:goto_c8
return-void
:catch_c9
move-exception v0
goto :goto_c8
:catch_cb
move-exception v0
goto :goto_bc
:catch_cd
move-exception v0
goto :goto_b0
:catch_cf
move-exception v0
goto :goto_a4
:catch_d1
move-exception v0
goto :goto_98
:catch_d3
move-exception v0
goto :goto_8c
:catch_d5
move-exception v0
goto :goto_81
:catch_d7
move-exception v0
goto :goto_76
:catch_d9
move-exception v0
goto :goto_6b
:catch_db
move-exception v0
goto :goto_60
:catch_dd
move-exception v0
goto/16 :goto_55
:catch_e0
move-exception v0
goto/16 :goto_4a
:catch_e3
move-exception v0
goto/16 :goto_36
:catch_e6
move-exception v0
goto/16 :goto_2d
:catch_e9
move-exception v0
goto/16 :goto_24
:catch_ec
move-exception v0
goto/16 :goto_1b
:catch_ef
move-exception v0
goto/16 :goto_12
.end method