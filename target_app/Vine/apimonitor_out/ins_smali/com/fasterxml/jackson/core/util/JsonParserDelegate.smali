.class public Lcom/fasterxml/jackson/core/util/JsonParserDelegate;
.super Lcom/fasterxml/jackson/core/JsonParser;
.source "JsonParserDelegate.java"
.field protected delegate:Lcom/fasterxml/jackson/core/JsonParser;
.method public constructor <init>(Lcom/fasterxml/jackson/core/JsonParser;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/core/JsonParser;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
return-void
.end method
.method public canReadObjectId()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z
move-result v0
return v0
.end method
.method public canReadTypeId()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->canReadTypeId()Z
move-result v0
return v0
.end method
.method public canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->canUseSchema(Lcom/fasterxml/jackson/core/FormatSchema;)Z
move-result v0
return v0
.end method
.method public clearCurrentToken()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->clearCurrentToken()V
return-void
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->close()V
return-void
.end method
.method public configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonParser;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->configure(Lcom/fasterxml/jackson/core/JsonParser$Feature;Z)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
return-object v0
.end method
.method public disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->disable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
return-object p0
.end method
.method public enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->enable(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Lcom/fasterxml/jackson/core/JsonParser;
return-object p0
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public getBinaryValue()[B
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue()[B
move-result-object v0
return-object v0
.end method
.method public getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
move-result-object v0
return-object v0
.end method
.method public getBooleanValue()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z
move-result v0
return v0
.end method
.method public getByteValue()B
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B
move-result v0
return v0
.end method
.method public getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
return-object v0
.end method
.method public getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v0
return-object v0
.end method
.method public getCurrentName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
return-object v0
.end method
.method public getCurrentTokenId()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentTokenId()I
move-result v0
return v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public getEmbeddedObject()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getFeatureMask()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getFeatureMask()I
move-result v0
return v0
.end method
.method public getFloatValue()F
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
return v0
.end method
.method public getInputSource()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getInputSource()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getIntValue()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
return v0
.end method
.method public getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLastClearedToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
return-object v0
.end method
.method public getLongValue()J
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
return-wide v0
.end method
.method public getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
return-object v0
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberValue()Ljava/lang/Number;
move-result-object v0
return-object v0
.end method
.method public getObjectId()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getParsingContext()Lcom/fasterxml/jackson/core/JsonStreamContext;
move-result-object v0
return-object v0
.end method
.method public getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getSchema()Lcom/fasterxml/jackson/core/FormatSchema;
move-result-object v0
return-object v0
.end method
.method public getShortValue()S
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S
move-result v0
return v0
.end method
.method public getText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getTextCharacters()[C
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextCharacters()[C
move-result-object v0
return-object v0
.end method
.method public getTextLength()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextLength()I
move-result v0
return v0
.end method
.method public getTextOffset()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTextOffset()I
move-result v0
return v0
.end method
.method public getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;
move-result-object v0
return-object v0
.end method
.method public getTypeId()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getTypeId()Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getValueAsBoolean()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean()Z
move-result v0
return v0
.end method
.method public getValueAsBoolean(Z)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsBoolean(Z)Z
move-result v0
return v0
.end method
.method public getValueAsDouble()D
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble()D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsDouble(D)D
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsDouble(D)D
move-result-wide v0
return-wide v0
.end method
.method public getValueAsInt()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt()I
move-result v0
return v0
.end method
.method public getValueAsInt(I)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsInt(I)I
move-result v0
return v0
.end method
.method public getValueAsLong()J
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong()J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsLong(J)J
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsLong(J)J
move-result-wide v0
return-wide v0
.end method
.method public getValueAsString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public getValueAsString(Ljava/lang/String;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hasCurrentToken()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasCurrentToken()Z
move-result v0
return v0
.end method
.method public hasTextCharacters()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->hasTextCharacters()Z
move-result v0
return v0
.end method
.method public isClosed()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->isClosed()Z
move-result v0
return v0
.end method
.method public isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->isEnabled(Lcom/fasterxml/jackson/core/JsonParser$Feature;)Z
move-result v0
return v0
.end method
.method public isExpectedStartArrayToken()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
return v0
.end method
.method public nextBooleanValue()Ljava/lang/Boolean;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextBooleanValue()Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method public nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextFieldName(Lcom/fasterxml/jackson/core/SerializableString;)Z
move-result v0
return v0
.end method
.method public nextIntValue(I)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextIntValue(I)I
move-result v0
return v0
.end method
.method public nextLongValue(J)J
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->nextLongValue(J)J
move-result-wide v0
return-wide v0
.end method
.method public nextTextValue()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextTextValue()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public nextToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
return-object v0
.end method
.method public nextValue()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextValue()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
return-object v0
.end method
.method public overrideCurrentName(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->overrideCurrentName(Ljava/lang/String;)V
return-void
.end method
.method public readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public readBinaryValue(Ljava/io/OutputStream;)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readBinaryValue(Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAsTree()Lcom/fasterxml/jackson/core/TreeNode;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValuesAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValuesAs(Ljava/lang/Class;)Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public releaseBuffered(Ljava/io/OutputStream;)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->releaseBuffered(Ljava/io/OutputStream;)I
move-result v0
return v0
.end method
.method public releaseBuffered(Ljava/io/Writer;)I
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->releaseBuffered(Ljava/io/Writer;)I
move-result v0
return v0
.end method
.method public requiresCustomCodec()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->requiresCustomCodec()Z
move-result v0
return v0
.end method
.method public setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->setCodec(Lcom/fasterxml/jackson/core/ObjectCodec;)V
return-void
.end method
.method public setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonParser;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->setFeatureMask(I)Lcom/fasterxml/jackson/core/JsonParser;
return-object p0
.end method
.method public setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V
return-void
.end method
.method public skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
return-object p0
.end method
.method public version()Lcom/fasterxml/jackson/core/Version;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/core/util/JsonParserDelegate;->delegate:Lcom/fasterxml/jackson/core/JsonParser;
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->version()Lcom/fasterxml/jackson/core/Version;
move-result-object v0
return-object v0
.end method