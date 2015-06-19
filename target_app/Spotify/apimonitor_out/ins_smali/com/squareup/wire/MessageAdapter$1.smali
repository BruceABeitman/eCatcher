.class final synthetic Lcom/squareup/wire/MessageAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final synthetic a:[I
.field static final synthetic b:[I
.method static constructor <clinit>()V
.registers 3
invoke-static {}, Lcom/squareup/wire/WireType;->values()[Lcom/squareup/wire/WireType;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
:try_start_9
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->a:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:goto_14
:try_end_14
.catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_152
:try_start_14
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->f:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:goto_1f
:try_end_1f
.catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_14f
:try_start_1f
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->b:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:goto_2a
:try_start_2a
:try_end_2a
.catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_14c
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_35
:try_start_35
:try_end_35
.catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_149
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->d:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:try_start_40
:try_end_40
.catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_146
:goto_40
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->b:[I
sget-object v1, Lcom/squareup/wire/WireType;->e:Lcom/squareup/wire/WireType;
invoke-virtual {v1}, Lcom/squareup/wire/WireType;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_4b
:try_end_4b
.catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_143
invoke-static {}, Lcom/squareup/wire/Message$Datatype;->values()[Lcom/squareup/wire/Message$Datatype;
move-result-object v0
array-length v0, v0
new-array v0, v0, [I
sput-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
:try_start_54
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x1
aput v2, v0, v1
:try_start_5f
:goto_5f
:try_end_5f
.catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_140
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->INT64:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x2
aput v2, v0, v1
:try_end_6a
.catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_13d
:goto_6a
:try_start_6a
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT64:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x3
aput v2, v0, v1
:try_end_75
.catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_13a
:goto_75
:try_start_75
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->UINT32:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x4
aput v2, v0, v1
:goto_80
:try_end_80
.catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_137
:try_start_80
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT32:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x5
aput v2, v0, v1
:goto_8b
:try_start_8b
:try_end_8b
.catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_134
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->SINT64:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x6
aput v2, v0, v1
:goto_96
:try_end_96
.catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_131
:try_start_96
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/4 v2, 0x7
aput v2, v0, v1
:try_start_a1
:goto_a1
:try_end_a1
.catch Ljava/lang/NoSuchFieldError; {:try_start_96 .. :try_end_a1} :catch_12e
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->ENUM:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0x8
aput v2, v0, v1
:try_start_ad
:goto_ad
:try_end_ad
.catch Ljava/lang/NoSuchFieldError; {:try_start_a1 .. :try_end_ad} :catch_12c
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0x9
aput v2, v0, v1
:goto_b9
:try_end_b9
.catch Ljava/lang/NoSuchFieldError; {:try_start_ad .. :try_end_b9} :catch_12a
:try_start_b9
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->BYTES:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xa
aput v2, v0, v1
:try_end_c5
.catch Ljava/lang/NoSuchFieldError; {:try_start_b9 .. :try_end_c5} :catch_128
:goto_c5
:try_start_c5
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xb
aput v2, v0, v1
:try_end_d1
.catch Ljava/lang/NoSuchFieldError; {:try_start_c5 .. :try_end_d1} :catch_126
:try_start_d1
:goto_d1
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED32:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xc
aput v2, v0, v1
:try_end_dd
.catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_dd} :catch_124
:try_start_dd
:goto_dd
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED32:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xd
aput v2, v0, v1
:goto_e9
:try_end_e9
.catch Ljava/lang/NoSuchFieldError; {:try_start_dd .. :try_end_e9} :catch_122
:try_start_e9
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->FLOAT:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xe
aput v2, v0, v1
:goto_f5
:try_start_f5
:try_end_f5
.catch Ljava/lang/NoSuchFieldError; {:try_start_e9 .. :try_end_f5} :catch_120
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->FIXED64:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0xf
aput v2, v0, v1
:goto_101
:try_end_101
.catch Ljava/lang/NoSuchFieldError; {:try_start_f5 .. :try_end_101} :catch_11e
:try_start_101
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->SFIXED64:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0x10
aput v2, v0, v1
:goto_10d
:try_start_10d
:try_end_10d
.catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10d} :catch_11c
sget-object v0, Lcom/squareup/wire/MessageAdapter$1;->a:[I
sget-object v1, Lcom/squareup/wire/Message$Datatype;->DOUBLE:Lcom/squareup/wire/Message$Datatype;
invoke-virtual {v1}, Lcom/squareup/wire/Message$Datatype;->ordinal()I
move-result v1
const/16 v2, 0x11
aput v2, v0, v1
:try_end_119
.catch Ljava/lang/NoSuchFieldError; {:try_start_10d .. :try_end_119} :catch_11a
:goto_119
return-void
:catch_11a
move-exception v0
goto :goto_119
:catch_11c
move-exception v0
goto :goto_10d
:catch_11e
move-exception v0
goto :goto_101
:catch_120
move-exception v0
goto :goto_f5
:catch_122
move-exception v0
goto :goto_e9
:catch_124
move-exception v0
goto :goto_dd
:catch_126
move-exception v0
goto :goto_d1
:catch_128
move-exception v0
goto :goto_c5
:catch_12a
move-exception v0
goto :goto_b9
:catch_12c
move-exception v0
goto :goto_ad
:catch_12e
move-exception v0
goto/16 :goto_a1
:catch_131
move-exception v0
goto/16 :goto_96
:catch_134
move-exception v0
goto/16 :goto_8b
:catch_137
move-exception v0
goto/16 :goto_80
:catch_13a
move-exception v0
goto/16 :goto_75
:catch_13d
move-exception v0
goto/16 :goto_6a
:catch_140
move-exception v0
goto/16 :goto_5f
:catch_143
move-exception v0
goto/16 :goto_4b
:catch_146
move-exception v0
goto/16 :goto_40
:catch_149
move-exception v0
goto/16 :goto_35
:catch_14c
move-exception v0
goto/16 :goto_2a
:catch_14f
move-exception v0
goto/16 :goto_1f
:catch_152
move-exception v0
goto/16 :goto_14
.end method