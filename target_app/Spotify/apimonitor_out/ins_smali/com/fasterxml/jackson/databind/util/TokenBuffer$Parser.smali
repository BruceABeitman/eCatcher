.class public final Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;
.super Lcom/fasterxml/jackson/core/base/ParserMinimalBase;
.source "SourceFile"
.field protected transient _byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
.field protected _closed:Z
.field protected _codec:Lcom/fasterxml/jackson/core/ObjectCodec;
.field protected _location:Lcom/fasterxml/jackson/core/JsonLocation;
.field protected _parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
.field protected _segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
.field protected _segmentPtr:I
.method public constructor <init>(Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;Lcom/fasterxml/jackson/core/ObjectCodec;)V
.registers 5
const/4 v1, -0x1
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/core/base/ParserMinimalBase;-><init>(I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/core/JsonLocation;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
iput-object p2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_codec:Lcom/fasterxml/jackson/core/ObjectCodec;
invoke-static {v1, v1}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
return-void
.end method
.method protected final _checkIsNumber()V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isNumeric()Z
move-result v0
if-nez v0, :cond_28
:cond_c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current token ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") not numeric, can not use numeric value accessors"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
:cond_28
return-void
.end method
.method protected final _currentObject()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected final _handleEOF()V
.registers 1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_throwInternal()V
return-void
.end method
.method public final close()V
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z
if-nez v0, :cond_7
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z
:cond_7
return-void
.end method
.method public final getBigIntegerValue()Ljava/math/BigInteger;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
instance-of v1, v0, Ljava/math/BigInteger;
if-eqz v1, :cond_b
check-cast v0, Ljava/math/BigInteger;
:goto_a
return-object v0
:cond_b
sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_2a
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
goto :goto_a
:pswitch_23
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
goto :goto_a
:pswitch_data_2a
.packed-switch 0x3
:pswitch_23
.end packed-switch
.end method
.method public final getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, [B
if-eqz v1, :cond_11
check-cast v0, [B
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_33
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Current token ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
:cond_33
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_3b
const/4 v0, 0x0
goto :goto_10
:cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
if-nez v0, :cond_50
new-instance v0, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
const/16 v2, 0x64
invoke-direct {v0, v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;-><init>(I)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
:goto_48
invoke-virtual {p0, v1, v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_decodeBase64(Ljava/lang/String;Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;Lcom/fasterxml/jackson/core/Base64Variant;)V
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->toByteArray()[B
move-result-object v0
goto :goto_10
:cond_50
iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_byteBuilder:Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/util/ByteArrayBuilder;->reset()V
goto :goto_48
.end method
.method public final getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_codec:Lcom/fasterxml/jackson/core/ObjectCodec;
return-object v0
.end method
.method public final getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/core/JsonLocation;
if-nez v0, :cond_7
sget-object v0, Lcom/fasterxml/jackson/core/JsonLocation;->NA:Lcom/fasterxml/jackson/core/JsonLocation;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/core/JsonLocation;
goto :goto_6
.end method
.method public final getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getCurrentName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final getDecimalValue()Ljava/math/BigDecimal;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
instance-of v1, v0, Ljava/math/BigDecimal;
if-eqz v1, :cond_b
check-cast v0, Ljava/math/BigDecimal;
:goto_a
return-object v0
:cond_b
sget-object v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_36
:pswitch_1a
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
goto :goto_a
:pswitch_23
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
goto :goto_a
:pswitch_2c
new-instance v1, Ljava/math/BigDecimal;
check-cast v0, Ljava/math/BigInteger;
invoke-direct {v1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
move-object v0, v1
goto :goto_a
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_23
:pswitch_2c
:pswitch_1a
:pswitch_1a
:pswitch_23
.end packed-switch
.end method
.method public final getDoubleValue()D
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public final getEmbeddedObject()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_EMBEDDED_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final getFloatValue()F
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F
move-result v0
return v0
.end method
.method public final getIntValue()I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Number;
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
:goto_10
return v0
:cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
goto :goto_10
.end method
.method public final getLongValue()J
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public final getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_b
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
:goto_a
return-object v0
:cond_b
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_12
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_a
:cond_12
instance-of v1, v0, Ljava/lang/Double;
if-eqz v1, :cond_19
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_a
:cond_19
instance-of v1, v0, Ljava/math/BigDecimal;
if-eqz v1, :cond_20
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_a
:cond_20
instance-of v1, v0, Ljava/lang/Float;
if-eqz v1, :cond_27
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_a
:cond_27
instance-of v0, v0, Ljava/math/BigInteger;
if-eqz v0, :cond_2e
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
goto :goto_a
:cond_2e
const/4 v0, 0x0
goto :goto_a
.end method
.method public final getNumberValue()Ljava/lang/Number;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_checkIsNumber()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Number;
return-object v0
.end method
.method public final getText()Ljava/lang/String;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v2, :cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_21
:cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Ljava/lang/String;
if-eqz v2, :cond_18
check-cast v0, Ljava/lang/String;
:goto_17
return-object v0
:cond_18
if-nez v0, :cond_1c
move-object v0, v1
goto :goto_17
:cond_1c
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_17
:cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
if-nez v0, :cond_27
move-object v0, v1
goto :goto_17
:cond_27
sget-object v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v2}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v2
aget v0, v0, v2
packed-switch v0, :pswitch_data_48
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->asString()Ljava/lang/String;
move-result-object v0
goto :goto_17
:pswitch_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_43
move-object v0, v1
goto :goto_17
:cond_43
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_17
:pswitch_data_48
.packed-switch 0x7
:pswitch_3b
:pswitch_3b
.end packed-switch
.end method
.method public final getTextCharacters()[C
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
goto :goto_7
.end method
.method public final getTextLength()I
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getText()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
goto :goto_7
.end method
.method public final getTextOffset()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v0
return-object v0
.end method
.method public final hasTextCharacters()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 5
const/4 v0, 0x0
const/4 v3, -0x1
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_closed:Z
if-nez v1, :cond_a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
if-nez v1, :cond_b
:cond_a
:goto_a
return-object v0
:cond_b
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
const/16 v2, 0x10
if-lt v1, v2, :cond_24
const/4 v1, 0x0
iput v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->next()Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
move-result-object v1
iput-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
if-eqz v1, :cond_a
:cond_24
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segment:Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;
iget v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_segmentPtr:I
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Segment;->type(I)Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_4b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currentObject()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Ljava/lang/String;
if-eqz v1, :cond_46
check-cast v0, Ljava/lang/String;
:goto_3e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->setCurrentName(Ljava/lang/String;)V
:goto_43
:cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_a
:cond_46
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3e
:cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_5a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildObjectContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
goto :goto_43
:cond_5a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0, v3, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createChildArrayContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
goto :goto_43
:cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_75
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_currToken:Lcom/fasterxml/jackson/core/JsonToken;
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_43
:cond_75
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->getParent()Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
if-nez v0, :cond_43
invoke-static {v3, v3}, Lcom/fasterxml/jackson/core/json/JsonReadContext;->createRootContext(II)Lcom/fasterxml/jackson/core/json/JsonReadContext;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_parsingContext:Lcom/fasterxml/jackson/core/json/JsonReadContext;
goto :goto_43
.end method
.method public final setLocation(Lcom/fasterxml/jackson/core/JsonLocation;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/TokenBuffer$Parser;->_location:Lcom/fasterxml/jackson/core/JsonLocation;
return-void
.end method