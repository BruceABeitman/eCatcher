.class public abstract Lcom/fasterxml/jackson/core/JsonGenerator;
.super Ljava/lang/Object;
.source "JsonGenerator.java"
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;
.implements Lcom/fasterxml/jackson/core/Versioned;
.field protected _cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected _reportError(Ljava/lang/String;)V
.registers 3
new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected _reportUnsupportedOperation()V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Operation not supported by generator of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected final _throwInternal()V
.registers 1
invoke-static {}, Lcom/fasterxml/jackson/core/util/VersionUtil;->throwInternal()V
return-void
.end method
.method protected _writeSimpleObject(Ljava/lang/Object;)V
.registers 5
if-nez p1, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
:goto_5
return-void
:cond_6
instance-of v0, p1, Ljava/lang/String;
if-eqz v0, :cond_10
check-cast p1, Ljava/lang/String;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
goto :goto_5
:cond_10
instance-of v0, p1, Ljava/lang/Number;
if-eqz v0, :cond_91
move-object v0, p1
check-cast v0, Ljava/lang/Number;
instance-of v1, v0, Ljava/lang/Integer;
if-eqz v1, :cond_23
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_5
:cond_23
instance-of v1, v0, Ljava/lang/Long;
if-eqz v1, :cond_2f
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
goto :goto_5
:cond_2f
instance-of v1, v0, Ljava/lang/Double;
if-eqz v1, :cond_3b
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
goto :goto_5
:cond_3b
instance-of v1, v0, Ljava/lang/Float;
if-eqz v1, :cond_47
invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
goto :goto_5
:cond_47
instance-of v1, v0, Ljava/lang/Short;
if-eqz v1, :cond_53
invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V
goto :goto_5
:cond_53
instance-of v1, v0, Ljava/lang/Byte;
if-eqz v1, :cond_60
invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B
move-result v0
int-to-short v0, v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V
goto :goto_5
:cond_60
instance-of v1, v0, Ljava/math/BigInteger;
if-eqz v1, :cond_6a
check-cast v0, Ljava/math/BigInteger;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_5
:cond_6a
instance-of v1, v0, Ljava/math/BigDecimal;
if-eqz v1, :cond_74
check-cast v0, Ljava/math/BigDecimal;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_5
:cond_74
instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;
if-eqz v1, :cond_82
check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_5
:cond_82
instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;
if-eqz v1, :cond_bc
check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
goto/16 :goto_5
:cond_91
instance-of v0, p1, [B
if-eqz v0, :cond_9e
check-cast p1, [B
check-cast p1, [B
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V
goto/16 :goto_5
:cond_9e
instance-of v0, p1, Ljava/lang/Boolean;
if-eqz v0, :cond_ad
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_5
:cond_ad
instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;
if-eqz v0, :cond_bc
check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_5
:cond_bc
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public canOmitFields()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public canWriteBinaryNatively()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canWriteObjectId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canWriteTypeId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract close()V
.end method
.method public final configure(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;Z)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
:goto_5
return-object p0
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
goto :goto_5
.end method
.method public copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-nez v0, :cond_b
const-string v1, "No current event to copy"
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_b
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v0
packed-switch v0, :pswitch_data_b4
:pswitch_12
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_throwInternal()V
:goto_15
return-void
:pswitch_16
const-string v0, "No current event to copy"
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V
:pswitch_1b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
goto :goto_15
:pswitch_1f
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
goto :goto_15
:pswitch_23
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
goto :goto_15
:pswitch_27
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
goto :goto_15
:pswitch_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
goto :goto_15
:pswitch_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z
move-result v0
if-eqz v0, :cond_49
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I
move-result v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I
move-result v2
invoke-virtual {p0, v0, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString([CII)V
goto :goto_15
:cond_49
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
goto :goto_15
:pswitch_51
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_61
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
goto :goto_15
:cond_61
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_6d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
goto :goto_15
:cond_6d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
goto :goto_15
:pswitch_75
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_DECIMAL:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_85
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
goto :goto_15
:cond_85
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->FLOAT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_91
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
goto :goto_15
:cond_91
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
goto/16 :goto_15
:pswitch_9a
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_15
:pswitch_a0
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
goto/16 :goto_15
:pswitch_a6
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
goto/16 :goto_15
:pswitch_ab
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V
goto/16 :goto_15
:pswitch_data_b4
.packed-switch -0x1
:pswitch_16
:pswitch_12
:pswitch_1b
:pswitch_1f
:pswitch_23
:pswitch_27
:pswitch_2b
:pswitch_33
:pswitch_51
:pswitch_75
:pswitch_9a
:pswitch_a0
:pswitch_a6
:pswitch_ab
.end packed-switch
.end method
.method public copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-nez v0, :cond_b
const-string v1, "No current event to copy"
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->_reportError(Ljava/lang/String;)V
:cond_b
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v0
const/4 v1, 0x5
if-ne v0, v1, :cond_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->id()I
move-result v0
:cond_21
packed-switch v0, :pswitch_data_4e
:pswitch_24
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentEvent(Lcom/fasterxml/jackson/core/JsonParser;)V
:goto_27
return-void
:pswitch_28
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
:goto_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_37
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_2b
:cond_37
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
goto :goto_27
:pswitch_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
:goto_3e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_4a
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_3e
:cond_4a
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V
goto :goto_27
:pswitch_data_4e
.packed-switch 0x1
:pswitch_28
:pswitch_24
:pswitch_3b
.end packed-switch
.end method
.method public abstract disable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method
.method public abstract enable(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method
.method public abstract flush()V
.end method
.method public getCharacterEscapes()Lcom/fasterxml/jackson/core/io/CharacterEscapes;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.end method
.method public abstract getFeatureMask()I
.end method
.method public getHighestEscapedChar()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract getOutputContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method
.method public getOutputTarget()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getPrettyPrinter()Lcom/fasterxml/jackson/core/PrettyPrinter;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
return-object v0
.end method
.method public getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract isClosed()Z
.end method
.method public abstract isEnabled(Lcom/fasterxml/jackson/core/JsonGenerator$Feature;)Z
.end method
.method public setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 2
return-object p0
.end method
.method public abstract setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method
.method public abstract setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonGenerator;
.end method
.method public setHighestNonEscapedChar(I)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 2
return-object p0
.end method
.method public setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/core/JsonGenerator;->_cfgPrettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;
return-object p0
.end method
.method public setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Generator of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not support schema of type \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-interface {p1}, Lcom/fasterxml/jackson/core/FormatSchema;->getSchemaType()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;
.end method
.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method
.method public final writeArrayFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray()V
return-void
.end method
.method public abstract writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
.end method
.method public writeBinary(Ljava/io/InputStream;I)I
.registers 4
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/InputStream;I)I
move-result v0
return v0
.end method
.method public abstract writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
.end method
.method public writeBinary([B)V
.registers 5
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
const/4 v1, 0x0
array-length v2, p1
invoke-virtual {p0, v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
return-void
.end method
.method public writeBinary([BII)V
.registers 5
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary(Lcom/fasterxml/jackson/core/Base64Variant;[BII)V
return-void
.end method
.method public final writeBinaryField(Ljava/lang/String;[B)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBinary([B)V
return-void
.end method
.method public abstract writeBoolean(Z)V
.end method
.method public final writeBooleanField(Ljava/lang/String;Z)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeBoolean(Z)V
return-void
.end method
.method public abstract writeEndArray()V
.end method
.method public abstract writeEndObject()V
.end method
.method public abstract writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
.end method
.method public abstract writeFieldName(Ljava/lang/String;)V
.end method
.method public abstract writeNull()V
.end method
.method public final writeNullField(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V
return-void
.end method
.method public abstract writeNumber(D)V
.end method
.method public abstract writeNumber(F)V
.end method
.method public abstract writeNumber(I)V
.end method
.method public abstract writeNumber(J)V
.end method
.method public abstract writeNumber(Ljava/lang/String;)V
.end method
.method public abstract writeNumber(Ljava/math/BigDecimal;)V
.end method
.method public abstract writeNumber(Ljava/math/BigInteger;)V
.end method
.method public writeNumber(S)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;D)V
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;F)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(F)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;I)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;J)V
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(J)V
return-void
.end method
.method public final writeNumberField(Ljava/lang/String;Ljava/math/BigDecimal;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigDecimal;)V
return-void
.end method
.method public abstract writeObject(Ljava/lang/Object;)V
.end method
.method public final writeObjectField(Ljava/lang/String;Ljava/lang/Object;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeObject(Ljava/lang/Object;)V
return-void
.end method
.method public final writeObjectFieldStart(Ljava/lang/String;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
return-void
.end method
.method public writeObjectId(Ljava/lang/Object;)V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;
const-string v1, "No native support for writing Object Ids"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public writeObjectRef(Ljava/lang/Object;)V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;
const-string v1, "No native support for writing Object Ids"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public writeOmittedField(Ljava/lang/String;)V
.registers 2
return-void
.end method
.method public abstract writeRaw(C)V
.end method
.method public writeRaw(Lcom/fasterxml/jackson/core/SerializableString;)V
.registers 3
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeRaw(Ljava/lang/String;)V
return-void
.end method
.method public abstract writeRaw(Ljava/lang/String;)V
.end method
.method public abstract writeRaw(Ljava/lang/String;II)V
.end method
.method public abstract writeRaw([CII)V
.end method
.method public abstract writeRawUTF8String([BII)V
.end method
.method public abstract writeRawValue(Ljava/lang/String;)V
.end method
.method public abstract writeRawValue(Ljava/lang/String;II)V
.end method
.method public abstract writeRawValue([CII)V
.end method
.method public abstract writeStartArray()V
.end method
.method public abstract writeStartObject()V
.end method
.method public abstract writeString(Lcom/fasterxml/jackson/core/SerializableString;)V
.end method
.method public abstract writeString(Ljava/lang/String;)V
.end method
.method public abstract writeString([CII)V
.end method
.method public writeStringField(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V
return-void
.end method
.method public abstract writeTree(Lcom/fasterxml/jackson/core/TreeNode;)V
.end method
.method public writeTypeId(Ljava/lang/Object;)V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/JsonGenerationException;
const-string v1, "No native support for writing Type Ids"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public abstract writeUTF8String([BII)V
.end method