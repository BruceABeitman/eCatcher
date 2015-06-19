.class public Lcom/fasterxml/jackson/databind/util/TokenBuffer;
.super Lcom/fasterxml/jackson/core/JsonGenerator;
.source "SourceFile"
.field protected static final DEFAULT_PARSER_FEATURES:I
.field protected _appendOffset:I
.field protected _closed:Z
.field protected _first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _generatorFeatures:I
.field protected _last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
.field protected _writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->collectDefaults()I
move-result v0
sput v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
sget v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->DEFAULT_PARSER_FEATURES:I
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_generatorFeatures:I
invoke-static {}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createRootContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v0, 0x0
iput v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
return-void
.end method
.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
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
.method protected final _append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_last:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_appendOffset:I
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->append(ILcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
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
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
:goto_4
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
if-eqz v1, :cond_e
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_4
:cond_e
return-object p0
.end method
.method public asParser()Lcom/fasterxml/jackson/core/JsonParser;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_objectCodec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->setLocation(Lcom/fasterxml/jackson/core/JsonLocation;)V
return-object v0
.end method
.method public asParser(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-direct {v0, v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;-><init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;)V
return-object v0
.end method
.method public close()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_closed:Z
return-void
.end method
.method public copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_b6
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
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
goto :goto_1a
:pswitch_2f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z
move-result v0
if-eqz v0, :cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I
move-result v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString([CII)V
goto :goto_1a
:cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
goto :goto_1a
:pswitch_4d
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_d2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V
goto :goto_1a
:pswitch_64
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V
goto :goto_1a
:pswitch_6c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_1a
:pswitch_74
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_da
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(D)V
goto :goto_1a
:pswitch_8b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_1a
:pswitch_93
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(F)V
goto :goto_1a
:pswitch_9b
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_1a
:pswitch_a1
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeBoolean(Z)V
goto/16 :goto_1a
:pswitch_a7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
goto/16 :goto_1a
:pswitch_ac
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_1a
nop
:pswitch_data_d2
.packed-switch 0x1
:pswitch_64
:pswitch_6c
.end packed-switch
:pswitch_data_da
.packed-switch 0x3
:pswitch_8b
:pswitch_93
.end packed-switch
:pswitch_data_b6
.packed-switch 0x1
:pswitch_17
:pswitch_1b
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2f
:pswitch_4d
:pswitch_74
:pswitch_9b
:pswitch_a1
:pswitch_a7
:pswitch_ac
.end packed-switch
.end method
.method public copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_13
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_13
sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_48
:pswitch_1e
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
:goto_21
return-void
:pswitch_22
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartArray()V
:goto_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_31
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_25
:cond_31
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndArray()V
goto :goto_21
:pswitch_35
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
:goto_38
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_44
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
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
.method public flush()V
.registers 1
return-void
.end method
.method public serialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
.registers 8
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_first:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
const/4 v1, -0x1
move v0, v1
move-object v1, v3
:goto_6
add-int/lit8 v0, v0, 0x1
const/16 v3, 0x10
if-lt v0, v3, :cond_12f
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v0
if-eqz v0, :cond_12e
move v1, v2
move-object v3, v0
:goto_14
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-eqz v0, :cond_12e
sget-object v4, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v4, v0
packed-switch v0, :pswitch_data_134
new-instance v0, Ljava/lang/RuntimeException;
const-string v1, "Internal error: should never end up through this code path"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_2d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_39
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_45
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v4, :cond_55
check-cast v0, Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
move v0, v1
move-object v1, v3
goto :goto_6
:cond_55
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_5d
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Lcom/fasterxml/jackson/core/SerializableString;
if-eqz v4, :cond_6d
check-cast v0, Lcom/fasterxml/jackson/core/SerializableString;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
move v0, v1
move-object v1, v3
goto :goto_6
:cond_6d
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto :goto_6
:pswitch_75
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Number;
instance-of v4, v0, Ljava/math/BigInteger;
if-eqz v4, :cond_87
check-cast v0, Ljava/math/BigInteger;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
move v0, v1
move-object v1, v3
goto :goto_6
:cond_87
instance-of v4, v0, Ljava/lang/Long;
if-eqz v4, :cond_96
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_96
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_a1
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v4, v0, Ljava/math/BigDecimal;
if-eqz v4, :cond_b2
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_b2
instance-of v4, v0, Ljava/lang/Float;
if-eqz v4, :cond_c3
check-cast v0, Ljava/lang/Float;
invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F
move-result v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_c3
instance-of v4, v0, Ljava/lang/Double;
if-eqz v4, :cond_d4
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v4
invoke-virtual {p1, v4, v5}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_d4
if-nez v0, :cond_dd
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_dd
instance-of v4, v0, Ljava/lang/String;
if-eqz v4, :cond_ea
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/lang/String;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_ea
new-instance v1, Lcom/fasterxml/jackson/core/JsonGenerationException;
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
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_10d
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_115
invoke-virtual {p1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_11c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:pswitch_123
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V
move v0, v1
move-object v1, v3
goto/16 :goto_6
:cond_12e
return-void
:cond_12f
move-object v3, v1
move v1, v0
goto/16 :goto_14
nop
:pswitch_data_134
.packed-switch 0x1
:pswitch_2d
:pswitch_33
:pswitch_39
:pswitch_3f
:pswitch_45
:pswitch_5d
:pswitch_75
:pswitch_a1
:pswitch_10d
:pswitch_115
:pswitch_11c
:pswitch_123
.end packed-switch
.end method
.method public toString()Ljava/lang/String;
.registers 7
const/16 v5, 0x64
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v0, "[TokenBuffer: "
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v2
const/4 v0, 0x0
:goto_11
:try_start_11
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
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
invoke-virtual {v3}, Lcom/fasterxml/jackson/core/JsonToken;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_59
const/16 v3, 0x28
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
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
.method public useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 1
return-object p0
.end method
.method public writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
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
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
:goto_4
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
return-void
:cond_8
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_4
.end method
.method public final writeEndArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
:cond_f
return-void
.end method
.method public final writeEndObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
if-eqz v0, :cond_f
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
:cond_f
return-void
.end method
.method public writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
return-void
.end method
.method public final writeFieldName(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->writeFieldName(Ljava/lang/String;)I
return-void
.end method
.method public writeNull()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
return-void
.end method
.method public writeNumber(D)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(F)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(I)V
.registers 4
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(J)V
.registers 5
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/lang/String;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeNumber(Ljava/math/BigDecimal;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeNumber(Ljava/math/BigInteger;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeObject(Ljava/lang/Object;)V
.registers 3
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
return-void
.end method
.method public writeRaw(C)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRaw([CII)V
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public writeRawValue(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_reportUnsupportedOperation()V
return-void
.end method
.method public final writeStartArray()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildArrayContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
.end method
.method public final writeStartObject()V
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonWriteContext;->createChildObjectContext()Lcom/fasterxml/jackson/core/json/JsonWriteContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_writeContext:Lcom/fasterxml/jackson/core/json/JsonWriteContext;
return-void
.end method
.method public writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString(Ljava/lang/String;)V
.registers 3
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNull()V
:goto_5
return-void
:cond_6
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->_append(Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/Object;)V
goto :goto_5
.end method
.method public writeString([CII)V
.registers 5
new-instance v0, Ljava/lang/String;
invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
return-void
.end method