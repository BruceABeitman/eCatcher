.class public abstract Lorg/codehaus/jackson/JsonParser;
.super Ljava/lang/Object;
.field protected _currToken:Lorg/codehaus/jackson/JsonToken;
.field protected _features:I
.field protected _lastClearedToken:Lorg/codehaus/jackson/JsonToken;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final clearCurrentToken()V
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
if-eqz v0, :cond_b
iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
iput-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_lastClearedToken:Lorg/codehaus/jackson/JsonToken;
const/4 v0, 0x0
iput-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
:cond_b
return-void
.end method
.method public abstract close()V
.end method
.method public disableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
.registers 4
iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I
move-result v1
xor-int/lit8 v1, v1, -0x1
and-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I
return-void
.end method
.method public enableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
.registers 4
iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I
move-result v1
or-int/2addr v0, v1
iput v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I
return-void
.end method
.method public abstract getBigIntegerValue()Ljava/math/BigInteger;
.end method
.method public getBinaryValue()[B
.registers 2
invoke-static {}, Lorg/codehaus/jackson/Base64Variants;->getDefaultVariant()Lorg/codehaus/jackson/Base64Variant;
move-result-object v0
invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonParser;->getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
move-result-object v0
return-object v0
.end method
.method public abstract getBinaryValue(Lorg/codehaus/jackson/Base64Variant;)[B
.end method
.method public abstract getByteValue()B
.end method
.method public abstract getCurrentLocation()Lorg/codehaus/jackson/JsonLocation;
.end method
.method public abstract getCurrentName()Ljava/lang/String;
.end method
.method public final getCurrentToken()Lorg/codehaus/jackson/JsonToken;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
return-object v0
.end method
.method public abstract getDecimalValue()Ljava/math/BigDecimal;
.end method
.method public abstract getDoubleValue()D
.end method
.method public abstract getFloatValue()F
.end method
.method public abstract getIntValue()I
.end method
.method public getLastClearedToken()Lorg/codehaus/jackson/JsonToken;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_lastClearedToken:Lorg/codehaus/jackson/JsonToken;
return-object v0
.end method
.method public abstract getLongValue()J
.end method
.method public abstract getNumberType()Lorg/codehaus/jackson/JsonParser$NumberType;
.end method
.method public abstract getNumberValue()Ljava/lang/Number;
.end method
.method public abstract getParsingContext()Lorg/codehaus/jackson/JsonStreamContext;
.end method
.method public abstract getShortValue()S
.end method
.method public abstract getText()Ljava/lang/String;
.end method
.method public abstract getTextCharacters()[C
.end method
.method public abstract getTextLength()I
.end method
.method public abstract getTextOffset()I
.end method
.method public abstract getTokenLocation()Lorg/codehaus/jackson/JsonLocation;
.end method
.method public final hasCurrentToken()Z
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/JsonParser;->_currToken:Lorg/codehaus/jackson/JsonToken;
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public abstract isClosed()Z
.end method
.method public final isFeatureEnabled(Lorg/codehaus/jackson/JsonParser$Feature;)Z
.registers 4
iget v0, p0, Lorg/codehaus/jackson/JsonParser;->_features:I
invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser$Feature;->getMask()I
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
.method public abstract nextToken()Lorg/codehaus/jackson/JsonToken;
.end method
.method public abstract nextValue()Lorg/codehaus/jackson/JsonToken;
.end method
.method public abstract readValueAs(Ljava/lang/Class;)Ljava/lang/Object;
.end method
.method public abstract readValueAs(Lorg/codehaus/jackson/type/TypeReference;)Ljava/lang/Object;
.end method
.method public abstract readValueAsTree()Lorg/codehaus/jackson/JsonNode;
.end method
.method public setFeature(Lorg/codehaus/jackson/JsonParser$Feature;Z)V
.registers 3
if-eqz p2, :cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->enableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
:goto_5
return-void
:cond_6
invoke-virtual {p0, p1}, Lorg/codehaus/jackson/JsonParser;->disableFeature(Lorg/codehaus/jackson/JsonParser$Feature;)V
goto :goto_5
.end method
.method public abstract skipChildren()V
.end method