.class public abstract Lcom/fasterxml/jackson/core/JsonParser;
.super Ljava/lang/Object;
.source "JsonParser.java"
.implements Ljava/io/Closeable;
.implements Lcom/fasterxml/jackson/core/Versioned;
.field private static final MAX_BYTE_I:I = 0xff
.field private static final MAX_SHORT_I:I = 0x7fff
.field private static final MIN_BYTE_I:I = -0x80
.field private static final MIN_SHORT_I:I = -0x8000
.field protected _features:I
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method protected constructor <init>(I)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
return-void
.end method
.method protected _constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/core/JsonParseException;
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v1
invoke-direct {v0, p1, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
return-object v0
.end method
.method protected _reportUnsupportedOperation()V
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Operation not supported by parser of type "
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
.method public canReadObjectId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canReadTypeId()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public abstract clearCurrentToken()V
.end method
.method public abstract close()V
.end method
.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
:goto_5
return-object p0
:cond_6
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_5
.end method
.method public disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
return-object p0
.end method
.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method
.method public getBinaryValue()[B
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
move-result-object v0
return-object v0
.end method
.method public abstract getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.end method
.method public getBooleanValue()Z
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_10
const/4 v0, 0x0
goto :goto_9
:cond_10
new-instance v1, Lcom/fasterxml/jackson/core/JsonParseException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Current token ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ") not of boolean type"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v2
invoke-direct {v1, v0, v2}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V
throw v1
.end method
.method public getByteValue()B
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
const/16 v1, -0x80
if-lt v0, v1, :cond_c
const/16 v1, 0xff
if-le v0, v1, :cond_2e
:cond_c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Numeric value ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of Java byte"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
:cond_2e
int-to-byte v0, v0
return v0
.end method
.method public abstract getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.end method
.method public abstract getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.end method
.method public abstract getCurrentName()Ljava/lang/String;
.end method
.method public abstract getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public abstract getCurrentTokenId()I
.end method
.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method
.method public abstract getDoubleValue()D
.end method
.method public abstract getEmbeddedObject()Ljava/lang/Object;
.end method
.method public getFeatureMask()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
return v0
.end method
.method public abstract getFloatValue()F
.end method
.method public getInputSource()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getIntValue()I
.end method
.method public abstract getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public abstract getLongValue()J
.end method
.method public abstract getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.end method
.method public abstract getNumberValue()Ljava/lang/Number;
.end method
.method public getObjectId()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.end method
.method public getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getShortValue()S
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
const/16 v1, -0x8000
if-lt v0, v1, :cond_c
const/16 v1, 0x7fff
if-le v0, v1, :cond_2e
:cond_c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Numeric value ("
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ") out of range of Java short"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->_constructError(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParseException;
move-result-object v0
throw v0
:cond_2e
int-to-short v0, v0
return v0
.end method
.method public abstract getText()Ljava/lang/String;
.end method
.method public abstract getTextCharacters()[C
.end method
.method public abstract getTextLength()I
.end method
.method public abstract getTextOffset()I
.end method
.method public abstract getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.end method
.method public getTypeId()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getValueAsBoolean()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z
move-result v0
return v0
.end method
.method public getValueAsBoolean(Z)Z
.registers 2
return p1
.end method
.method public getValueAsDouble()D
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsDouble(D)D
.registers 3
return-wide p1
.end method
.method public getValueAsInt()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I
move-result v0
return v0
.end method
.method public getValueAsInt(I)I
.registers 2
return p1
.end method
.method public getValueAsLong()J
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsLong(J)J
.registers 3
return-wide p1
.end method
.method public getValueAsString()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public abstract getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.end method
.method public abstract hasCurrentToken()Z
.end method
.method public abstract hasTextCharacters()Z
.end method
.method public abstract isClosed()Z
.end method
.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser$Feature;->getMask()I
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
.method public isExpectedStartArrayToken()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public nextBooleanValue()Ljava/lang/Boolean;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_b
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_a
return-object v0
:cond_b
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_12
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_a
:cond_12
const/4 v0, 0x0
goto :goto_a
.end method
.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_18
invoke-interface {p1}, Lcom/fasterxml/jackson/core/SerializableString;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_18
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public nextIntValue(I)I
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result p1
:cond_c
return p1
.end method
.method public nextLongValue(J)J
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_c
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide p1
:cond_c
return-wide p1
.end method
.method public nextTextValue()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public abstract nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public abstract nextValue()Lcom/fasterxml/jackson/core/JsonToken;
.end method
.method public abstract overrideCurrentName(Ljava/lang/String;)V
.end method
.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->_reportUnsupportedOperation()V
const/4 v0, 0x0
return v0
.end method
.method public readBinaryValue(Ljava/io/OutputStream;)I
.registers 3
invoke-static {}, Lcom/fasterxml/jackson/core/Base64Variants;->getDefaultVariant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValue(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into JsonNode tree"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0}, Lcom/fasterxml/jackson/core/ObjectCodec;->readTree(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/TreeNode;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
if-nez v0, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "No ObjectCodec defined for the parser, can not deserialize JSON into Java objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
invoke-virtual {v0, p0, p1}, Lcom/fasterxml/jackson/core/ObjectCodec;->readValues(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Class;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public releaseBuffered(Ljava/io/OutputStream;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public releaseBuffered(Ljava/io/Writer;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public requiresCustomCodec()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.end method
.method public setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonParser;
.registers 2
iput p1, p0, Lcom/fasterxml/jackson/core/JsonParser;->_features:I
return-object p0
.end method
.method public setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Parser of type "
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
.method public abstract skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
.end method
.method public abstract version()Lcom/fasterxml/jackson/core/Version;
.end method