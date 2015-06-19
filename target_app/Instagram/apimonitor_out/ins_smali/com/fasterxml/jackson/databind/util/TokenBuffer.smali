.class public Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.super Lcom/fasterxml/jackson/a/h;
.source "TokenBuffer.java"
.field protected static final DEFAULT_PARSER_FEATURES:I
.field protected _appendOffset:I
.field protected _closed:Z
.field protected _first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _generatorFeatures:I
.field protected _last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _objectCodec:Lcom/fasterxml/jackson/a/s;
.field protected _writeContext:Lcom/fasterxml/jackson/a/d/e;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/a/n;->a()I
move-result v0
sput v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/a/s;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/a/h;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/a/s;
sget v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-static {}, Lcom/fasterxml/jackson/a/d/e;->a()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
return-void
.end method
.method protected final _append(Lcom/fasterxml/jackson/a/r;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/a/r;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
if-nez v0, :cond_11
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_10
return-void
:cond_11
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_10
.end method
.method protected final _append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/a/r;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
if-nez v0, :cond_11
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_10
return-void
:cond_11
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_10
.end method
.method protected final _appendRaw(ILjava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->appendRaw(IILjava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
if-nez v0, :cond_11
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
:goto_10
return-void
:cond_11
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
goto :goto_10
.end method
.method protected _reportUnsupportedOperation()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Called operation not supported for TokenBuffer"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public append(Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/a/l;
move-result-object v0
:goto_4
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
if-eqz v1, :cond_e
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
goto :goto_4
:cond_e
return-object p0
.end method
.method public asParser()Lcom/fasterxml/jackson/a/l;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/a/s;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/l;
move-result-object v0
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/a/l;)Lcom/fasterxml/jackson/a/l;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCodec()Lcom/fasterxml/jackson/a/s;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/a/s;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTokenLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->setLocation(Lcom/fasterxml/jackson/a/j;)V
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/l;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/a/s;)V
return-object v0
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z
return-void
.end method
.method public copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_b2
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: should never end up through this code path"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_17
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
:goto_1a
return-void
:pswitch_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
goto :goto_1a
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
goto :goto_1a
:pswitch_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
goto :goto_1a
:pswitch_27
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
goto :goto_1a
:pswitch_2f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->hasTextCharacters()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextCharacters()[C
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextOffset()I
move-result v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTextLength()I
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString([CII)V
goto :goto_1a
:cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
goto :goto_1a
:pswitch_4d
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_ce
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V
goto :goto_1a
:pswitch_62
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V
goto :goto_1a
:pswitch_6a
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_1a
:pswitch_72
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v1
add-int/lit8 v1, v1, -0x1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(D)V
goto :goto_1a
:pswitch_87
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_1a
:pswitch_8f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getFloatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(F)V
goto :goto_1a
:pswitch_97
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_1a
:pswitch_9d
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_1a
:pswitch_a3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
goto/16 :goto_1a
:pswitch_a8
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_1a
nop
:pswitch_data_d6
.packed-switch 0x3
:pswitch_87
:pswitch_8f
.end packed-switch
:pswitch_data_ce
.packed-switch 0x1
:pswitch_62
:pswitch_6a
.end packed-switch
:pswitch_data_b2
.packed-switch 0x1
:pswitch_17
:pswitch_1b
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2f
:pswitch_4d
:pswitch_72
:pswitch_97
:pswitch_9d
:pswitch_a3
:pswitch_a8
.end packed-switch
.end method
.method public copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_13
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_13
sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_48
:pswitch_1e
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/a/l;)V
:goto_21
return-void
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
:goto_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_31
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
goto :goto_25
:cond_31
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
goto :goto_21
:pswitch_35
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
:goto_38
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_44
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/a/l;)V
goto :goto_38
:cond_44
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
goto :goto_21
:pswitch_data_48
.packed-switch 0x1
:pswitch_35
:pswitch_1e
:pswitch_22
.end packed-switch
.end method
.method public disable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/a/i;)Lcom/fasterxml/jackson/a/h;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
return-object p0
.end method
.method public firstToken()Lcom/fasterxml/jackson/a/r;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/a/r;
move-result-object v0
:goto_b
return-object v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public flush()V
.registers 1
return-void
.end method
.method public getCodec()Lcom/fasterxml/jackson/a/s;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/a/s;
return-object v0
.end method
.method public final getOutputContext()Lcom/fasterxml/jackson/a/d/e;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
return-object v0
.end method
.method public bridge synthetic getOutputContext()Lcom/fasterxml/jackson/a/q;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->getOutputContext()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
return-object v0
.end method
.method public isClosed()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/a/i;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/i;->b()I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public serialize(Lcom/fasterxml/jackson/a/h;)V
.registers 8
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v1, -0x1
move v0, v1
move-object v1, v3
:goto_6
add-int/lit8 v0, v0, 0x1
const/16 v3, 0x10
if-lt v0, v3, :cond_154
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
if-eqz v0, :cond_153
move v1, v2
move-object v3, v0
:goto_14
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/a/r;
move-result-object v0
if-eqz v0, :cond_153
sget-object v4, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v0
aget v0, v4, v0
packed-switch v0, :pswitch_data_158
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: should never end up through this code path"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2d
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_39
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_45
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Lcom/fasterxml/jackson/a/u;
if-eqz v4, :cond_55
check-cast v0, Lcom/fasterxml/jackson/a/u;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Lcom/fasterxml/jackson/a/u;)V
move v0, v1
move-object v1, v3
goto :goto_6
:cond_55
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_5d
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Lcom/fasterxml/jackson/a/u;
if-eqz v4, :cond_6d
check-cast v0, Lcom/fasterxml/jackson/a/u;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Lcom/fasterxml/jackson/a/u;)V
move v0, v1
move-object v1, v3
goto :goto_6
:cond_6d
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_75
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Ljava/lang/Integer;
if-eqz v4, :cond_8a
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_8a
instance-of v4, v0, Ljava/math/BigInteger;
if-eqz v4, :cond_97
check-cast v0, Ljava/math/BigInteger;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigInteger;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_97
instance-of v4, v0, Ljava/lang/Long;
if-eqz v4, :cond_a8
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_a8
instance-of v4, v0, Ljava/lang/Short;
if-eqz v4, :cond_b9
check-cast v0, Ljava/lang/Short;
invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(S)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_b9
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(I)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_c6
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Ljava/lang/Double;
if-eqz v4, :cond_db
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/a/h;->writeNumber(D)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_db
instance-of v4, v0, Ljava/math/BigDecimal;
if-eqz v4, :cond_e8
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/math/BigDecimal;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_e8
instance-of v4, v0, Ljava/lang/Float;
if-eqz v4, :cond_f9
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_f9
if-nez v0, :cond_102
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeNull()V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_102
instance-of v4, v0, Ljava/lang/String;
if-eqz v4, :cond_10f
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_10f
new-instance v1, Lcom/fasterxml/jackson/a/g;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Unrecognized value type for VALUE_NUMBER_FLOAT: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ", can not serialize"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/a/g;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_132
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_13a
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/a/h;->writeBoolean(Z)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_141
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/h;->writeNull()V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_148
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeObject(Ljava/lang/Object;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_153
return-void
:cond_154
move-object v3, v1
move v1, v0
goto/16 :goto_14
:pswitch_data_158
.packed-switch 0x1
:pswitch_2d
:pswitch_33
:pswitch_39
:pswitch_3f
:pswitch_45
:pswitch_5d
:pswitch_75
:pswitch_c6
:pswitch_132
:pswitch_13a
:pswitch_141
:pswitch_148
.end packed-switch
.end method
.method public setCodec(Lcom/fasterxml/jackson/a/s;)Lcom/fasterxml/jackson/a/h;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/a/s;
return-object p0
.end method
.method public toString()Ljava/lang/String;
.registers 7
const/16 v5, 0x64
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "[TokenBuffer: "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/a/l;
move-result-object v2
const/4 v0, 0x0
:goto_11
:try_start_11
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:try_end_14
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_5c
move-result-object v3
if-nez v3, :cond_34
if-lt v0, v5, :cond_2a
const-string v2, " ... (truncated "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
add-int/lit8 v0, v0, -0x64
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " entries)"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_2a
const/16 v0, 0x5d
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_34
if-ge v0, v5, :cond_59
if-lez v0, :cond_3d
:try_start_38
const-string v4, ", "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_3d
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/r;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v4, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v3, v4, :cond_59
const/16 v3, 0x28
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/16 v3, 0x29
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_59
:try_end_59
.catch Ljava/io/IOException; {:try_start_38 .. :try_end_59} :catch_5c
add-int/lit8 v0, v0, 0x1
goto :goto_11
:catch_5c
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method
.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/a/h;
.registers 1
return-object p0
.end method
.method public version()Lcom/fasterxml/jackson/a/w;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/cfg/PackageVersion;->VERSION:Lcom/fasterxml/jackson/a/w;
return-object v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/a/a;Ljava/io/InputStream;I)I
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/a/a;[BII)V
.registers 7
new-array v0, p4, [B
const/4 v1, 0x0
invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public writeBoolean(Z)V
.registers 3
if-eqz p1, :cond_8
sget-object v0, Lcom/fasterxml/jackson/a/r;->k:Lcom/fasterxml/jackson/a/r;
:goto_4
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
return-void
:cond_8
sget-object v0, Lcom/fasterxml/jackson/a/r;->l:Lcom/fasterxml/jackson/a/r;
goto :goto_4
.end method
.method public final writeEndArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->e:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
:cond_f
return-void
.end method
.method public final writeEndObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->d()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
:cond_f
return-void
.end method
.method public writeFieldName(Lcom/fasterxml/jackson/a/u;)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-interface {p1}, Lcom/fasterxml/jackson/a/u;->a()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I
return-void
.end method
.method public final writeFieldName(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/a/d/e;->a(Ljava/lang/String;)I
return-void
.end method
.method public writeNull()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
return-void
.end method
.method public writeNumber(D)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(F)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(I)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(J)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/math/BigDecimal;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeNumber(Ljava/math/BigInteger;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeNumber(S)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeObject(Ljava/lang/Object;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeRaw(C)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Lcom/fasterxml/jackson/a/u;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Ljava/lang/String;II)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw([CII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;II)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue([CII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public final writeStartArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->d:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->b()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
return-void
.end method
.method public final writeStartObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
invoke-virtual {v0}, Lcom/fasterxml/jackson/a/d/e;->c()Lcom/fasterxml/jackson/a/d/e;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/a/d/e;
return-void
.end method
.method public writeString(Lcom/fasterxml/jackson/a/u;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString([CII)V
.registers 5
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public writeTree(Lcom/fasterxml/jackson/a/v;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/a/r;->g:Lcom/fasterxml/jackson/a/r;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/a/r;Ljava/lang/Object;)V
return-void
.end method
.method public writeUTF8String([BII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method