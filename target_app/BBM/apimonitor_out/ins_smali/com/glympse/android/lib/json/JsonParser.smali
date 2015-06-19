.class public Lcom/glympse/android/lib/json/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"
.implements Lcom/glympse/android/lib/json/GJsonParser;
.field private mQ:I
.field private uO:Lcom/glympse/android/hal/GVector;
.field private uP:Lcom/glympse/android/lib/json/GJsonHandler;
.field private uQ:Lcom/glympse/android/hal/GVector;
.field private uR:Lcom/glympse/android/hal/GVector;
.field private uS:Lcom/glympse/android/hal/GVector;
.field private uT:Lcom/glympse/android/lib/json/JsonTokener;
.field private uU:Lcom/glympse/android/lib/json/JsonToken;
.field private uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uQ:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uR:Lcom/glympse/android/hal/GVector;
const/4 v0, 0x0
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
new-instance v0, Lcom/glympse/android/hal/GVector;
invoke-direct {v0, v1}, Lcom/glympse/android/hal/GVector;-><init>(I)V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
new-instance v0, Lcom/glympse/android/lib/json/JsonTokener;
invoke-direct {v0}, Lcom/glympse/android/lib/json/JsonTokener;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
new-instance v0, Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-direct {v0}, Lcom/glympse/android/lib/json/GJsonPrimitive;-><init>()V
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
return-void
.end method
.method private a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;)Z
.registers 4
invoke-static {p1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/json/JsonParser;->error(Ljava/lang/String;)Z
const/4 v0, 0x0
return v0
.end method
.method private a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;I)Z
.registers 5
invoke-direct {p0, p1, p2}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;)Z
invoke-direct {p0, p3}, Lcom/glympse/android/lib/json/JsonParser;->z(I)Z
move-result v0
return v0
.end method
.method private da()Z
.registers 4
const/4 v0, 0x1
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->db()V
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I
packed-switch v1, :pswitch_data_64
:pswitch_b
const-string v0, "Syntax error: value, object or array expected."
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
invoke-direct {p0, v0, v1}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;)Z
move-result v0
:goto_13
return v0
:pswitch_14
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->dc()Z
move-result v0
goto :goto_13
:pswitch_19
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->dd()Z
move-result v0
goto :goto_13
:pswitch_1e
const/4 v1, 0x2
invoke-direct {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->y(I)V
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_28
const/4 v1, 0x3
invoke-direct {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->y(I)V
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_32
const/4 v1, 0x4
invoke-direct {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->y(I)V
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_3c
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iput v0, v1, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iput-boolean v0, v1, Lcom/glympse/android/lib/json/GJsonPrimitive;->_bool:Z
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_4a
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iput v0, v1, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/glympse/android/lib/json/GJsonPrimitive;->_bool:Z
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_59
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
const/4 v2, 0x5
iput v2, v1, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {p0, v1}, Lcom/glympse/android/lib/json/JsonParser;->primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
goto :goto_13
:pswitch_data_64
.packed-switch 0x2
:pswitch_14
:pswitch_b
:pswitch_19
:pswitch_b
:pswitch_32
:pswitch_1e
:pswitch_28
:pswitch_3c
:pswitch_4a
:pswitch_59
.end packed-switch
.end method
.method private db()V
.registers 3
:cond_0
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/16 v1, 0xe
if-eq v0, v1, :cond_0
return-void
.end method
.method private dc()Z
.registers 6
const/16 v4, 0xe
const/4 v1, 0x1
const/4 v3, 0x3
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->startObject()Z
:goto_7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v0
if-eqz v0, :cond_24
move v0, v1
:goto_10
iget-object v2, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v2, v2, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v2, v4, :cond_1f
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v0
goto :goto_10
:cond_1f
if-nez v0, :cond_31
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
:goto_24
:cond_24
const-string v0, "Missing \'}\' or object member name"
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;
move-result-object v1
invoke-direct {p0, v0, v1, v3}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;I)Z
move-result v1
:goto_30
return v1
:cond_31
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v0, v3, :cond_3b
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
goto :goto_30
:cond_3b
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/4 v2, 0x6
if-eq v0, v2, :cond_46
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
goto :goto_24
:cond_46
const/4 v0, 0x4
invoke-direct {p0, v0}, Lcom/glympse/android/lib/json/JsonParser;->y(I)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
invoke-virtual {v0, v1}, Lcom/glympse/android/lib/json/GJsonPrimitive;->getString(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/glympse/android/lib/json/JsonParser;->startPair(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v0
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/16 v2, 0xd
if-eq v0, v2, :cond_76
:cond_63
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endPair()Z
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
const-string v0, "Missing \':\' after object member name"
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;
move-result-object v1
invoke-direct {p0, v0, v1, v3}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;I)Z
move-result v1
goto :goto_30
:cond_76
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->da()Z
move-result v0
if-nez v0, :cond_87
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endPair()Z
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
invoke-direct {p0, v3}, Lcom/glympse/android/lib/json/JsonParser;->z(I)Z
move-result v1
goto :goto_30
:cond_87
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v0
if-eqz v0, :cond_a3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-eq v0, v3, :cond_b7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/16 v2, 0xc
if-eq v0, v2, :cond_b7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-eq v0, v4, :cond_b7
:cond_a3
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endPair()Z
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
const-string v0, "Missing \',\' or \'}\' in object declaration"
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;
move-result-object v1
invoke-direct {p0, v0, v1, v3}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;I)Z
move-result v1
goto/16 :goto_30
:cond_b7
move v0, v1
:goto_b8
iget-object v2, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v2, v2, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v2, v4, :cond_c7
if-eqz v0, :cond_c7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v0
goto :goto_b8
:cond_c7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v0, v3, :cond_d5
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endPair()Z
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endObject()Z
goto/16 :goto_30
:cond_d5
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endPair()Z
goto/16 :goto_7
.end method
.method private dd()Z
.registers 6
const/4 v0, 0x1
const/4 v4, 0x5
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->startArray()Z
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->skipSpaces()V
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->getCurrentChar()C
move-result v1
const/16 v2, 0x5d
if-ne v1, v2, :cond_1d
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endArray()Z
:goto_1c
return v0
:cond_1d
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->da()Z
move-result v1
if-nez v1, :cond_2b
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endArray()Z
invoke-direct {p0, v4}, Lcom/glympse/android/lib/json/JsonParser;->z(I)Z
move-result v0
goto :goto_1c
:cond_2b
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
move-result v2
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/16 v3, 0xe
if-ne v1, v3, :cond_3b
if-nez v2, :cond_2b
:cond_3b
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I
const/16 v3, 0xc
if-eq v1, v3, :cond_5e
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-eq v1, v4, :cond_5e
move v1, v0
:goto_4a
if-eqz v2, :cond_4e
if-eqz v1, :cond_60
:cond_4e
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endArray()Z
const-string v0, "Missing \',\' or \']\' in array declaration"
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v1}, Lcom/glympse/android/lib/json/JsonTokener;->getToken()Lcom/glympse/android/lib/json/JsonToken;
move-result-object v1
invoke-direct {p0, v0, v1, v4}, Lcom/glympse/android/lib/json/JsonParser;->a(Ljava/lang/String;Lcom/glympse/android/lib/json/JsonToken;I)Z
move-result v0
goto :goto_1c
:cond_5e
const/4 v1, 0x0
goto :goto_4a
:cond_60
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v1, v4, :cond_1d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->endArray()Z
goto :goto_1c
.end method
.method private y(I)V
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_processed:Z
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_start:I
iput v1, v0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_start:I
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v1, v1, Lcom/glympse/android/lib/json/JsonToken;->_end:I
iput v1, v0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_end:I
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iput p1, v0, Lcom/glympse/android/lib/json/GJsonPrimitive;->_type:I
return-void
.end method
.method private z(I)Z
.registers 4
const/4 v1, 0x1
:cond_1
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
invoke-virtual {v0}, Lcom/glympse/android/lib/json/JsonTokener;->readToken()Z
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-eq v0, v1, :cond_12
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uU:Lcom/glympse/android/lib/json/JsonToken;
iget v0, v0, Lcom/glympse/android/lib/json/JsonToken;->_type:I
if-ne v0, v1, :cond_1
:cond_12
const/4 v0, 0x0
return v0
.end method
.method public clearStack()V
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->removeAllElements()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
return-void
.end method
.method public endArray()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->endArray(I)Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_d
iget v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
const/4 v0, 0x1
return v0
.end method
.method public endObject()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->endObject(I)Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_d
iget v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
const/4 v0, 0x1
return v0
.end method
.method public endPair()Z
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->endPair(I)Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_d
const/4 v0, 0x1
return v0
.end method
.method public error(Ljava/lang/String;)Z
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
if-nez v0, :cond_6
:cond_5
:goto_5
return v1
:cond_6
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
invoke-interface {v0, p1}, Lcom/glympse/android/lib/json/GJsonHandler;->error(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_5
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
goto :goto_5
.end method
.method public parse(Ljava/lang/String;)Z
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_4
:goto_3
:cond_3
return v1
:cond_4
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_3
:try_start_a
invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
check-cast v0, [C
iget-object v3, p0, Lcom/glympse/android/lib/json/JsonParser;->uT:Lcom/glympse/android/lib/json/JsonTokener;
const/4 v4, 0x0
invoke-virtual {v3, v0, v4, v2}, Lcom/glympse/android/lib/json/JsonTokener;->init([CII)V
iget-object v2, p0, Lcom/glympse/android/lib/json/JsonParser;->uV:Lcom/glympse/android/lib/json/GJsonPrimitive;
iput-object v0, v2, Lcom/glympse/android/lib/json/GJsonPrimitive;->_buffer:[C
invoke-direct {p0}, Lcom/glympse/android/lib/json/JsonParser;->da()Z
:try_end_1d
.catch Lcom/glympse/android/lib/json/a; {:try_start_a .. :try_end_1d} :catch_20
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_1d} :catch_23
move-result v0
:goto_1e
move v1, v0
goto :goto_3
:catch_20
move-exception v0
const/4 v0, 0x1
goto :goto_1e
:catch_23
move-exception v0
move v0, v1
goto :goto_1e
.end method
.method public popData()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
invoke-virtual {v1}, Lcom/glympse/android/hal/GVector;->size()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
return-void
.end method
.method public popHandler()V
.registers 7
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->size()I
move-result v2
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
add-int/lit8 v1, v2, -0x1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uQ:Lcom/glympse/android/hal/GVector;
add-int/lit8 v1, v2, -0x1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
iget-object v1, p0, Lcom/glympse/android/lib/json/JsonParser;->uR:Lcom/glympse/android/hal/GVector;
add-int/lit8 v3, v2, -0x1
invoke-virtual {v1, v3}, Lcom/glympse/android/hal/GVector;->elementAt(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Long;
iget-object v3, p0, Lcom/glympse/android/lib/json/JsonParser;->uQ:Lcom/glympse/android/hal/GVector;
add-int/lit8 v4, v2, -0x1
invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
iget-object v3, p0, Lcom/glympse/android/lib/json/JsonParser;->uR:Lcom/glympse/android/hal/GVector;
add-int/lit8 v4, v2, -0x1
invoke-virtual {v3, v4}, Lcom/glympse/android/hal/GVector;->removeElementAt(I)V
add-int/lit8 v2, v2, -0x1
if-lez v2, :cond_4f
iget-object v2, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
invoke-virtual {v2}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/glympse/android/lib/json/GJsonHandler;
:goto_3b
iput-object v2, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v2
iget v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
int-to-long v4, v0
invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
move-result-wide v0
sub-long v0, v4, v0
add-long/2addr v0, v2
long-to-int v0, v0
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
return-void
:cond_4f
const/4 v2, 0x0
goto :goto_3b
.end method
.method public primitive(Lcom/glympse/android/lib/json/GJsonPrimitive;)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1, p1}, Lcom/glympse/android/lib/json/GJsonHandler;->primitive(ILcom/glympse/android/lib/json/GJsonPrimitive;)Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_d
const/4 v0, 0x1
return v0
.end method
.method public pushData(Lcom/glympse/android/core/GCommon;)V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
return-void
.end method
.method public pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;)V
.registers 5
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uQ:Lcom/glympse/android/hal/GVector;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
int-to-long v1, v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uR:Lcom/glympse/android/hal/GVector;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
int-to-long v1, v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iput-object p1, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
return-void
.end method
.method public pushHandler(Lcom/glympse/android/lib/json/GJsonHandler;I)V
.registers 6
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uO:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0, p1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uQ:Lcom/glympse/android/hal/GVector;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
int-to-long v1, v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uR:Lcom/glympse/android/hal/GVector;
int-to-long v1, p2
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/glympse/android/hal/GVector;->addElement(Ljava/lang/Object;)V
iput p2, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
iput-object p1, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
return-void
.end method
.method public startArray()Z
.registers 3
iget v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->startArray(I)Z
move-result v0
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_13
const/4 v0, 0x1
return v0
.end method
.method public startObject()Z
.registers 3
iget v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1}, Lcom/glympse/android/lib/json/GJsonHandler;->startObject(I)Z
move-result v0
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_13
const/4 v0, 0x1
return v0
.end method
.method public startPair(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uP:Lcom/glympse/android/lib/json/GJsonHandler;
iget v1, p0, Lcom/glympse/android/lib/json/JsonParser;->mQ:I
invoke-interface {v0, v1, p1}, Lcom/glympse/android/lib/json/GJsonHandler;->startPair(ILjava/lang/String;)Z
move-result v0
if-nez v0, :cond_d
invoke-virtual {p0}, Lcom/glympse/android/lib/json/JsonParser;->throwCancellation()V
:cond_d
const/4 v0, 0x1
return v0
.end method
.method public throwCancellation()V
.registers 3
new-instance v0, Lcom/glympse/android/lib/json/a;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/lib/json/a;-><init>(Lcom/glympse/android/lib/json/JsonParser$1;)V
throw v0
.end method
.method public topData()Lcom/glympse/android/core/GCommon;
.registers 2
iget-object v0, p0, Lcom/glympse/android/lib/json/JsonParser;->uS:Lcom/glympse/android/hal/GVector;
invoke-virtual {v0}, Lcom/glympse/android/hal/GVector;->lastElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/core/GCommon;
return-object v0
.end method