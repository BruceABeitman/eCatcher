.class public Lcom/fasterxml/jackson/databind/node/ShortNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "ShortNode.java"
.field protected final _value:S
.method public constructor <init>(S)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput-short p1, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
return-void
.end method
.method public static valueOf(S)Lcom/fasterxml/jackson/databind/node/ShortNode;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/node/ShortNode;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/ShortNode;-><init>(S)V
return-object v0
.end method
.method public asBoolean(Z)Z
.registers 3
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public asText()Ljava/lang/String;
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public bigIntegerValue()Ljava/math/BigInteger;
.registers 3
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public canConvertToInt()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public canConvertToLong()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public decimalValue()Ljava/math/BigDecimal;
.registers 3
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public doubleValue()D
.registers 3
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
int-to-double v0, v0
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;
if-eqz v2, :cond_17
check-cast p1, Lcom/fasterxml/jackson/databind/node/ShortNode;
iget-short v2, p1, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
iget-short v3, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
:cond_17
move v0, v1
goto :goto_4
.end method
.method public floatValue()F
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
int-to-float v0, v0
return v0
.end method
.method public hashCode()I
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
return v0
.end method
.method public intValue()I
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
return v0
.end method
.method public isIntegralNumber()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isShort()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public longValue()J
.registers 3
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
int-to-long v0, v0
return-wide v0
.end method
.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
return-object v0
.end method
.method public numberValue()Ljava/lang/Number;
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(S)V
return-void
.end method
.method public shortValue()S
.registers 2
iget-short v0, p0, Lcom/fasterxml/jackson/databind/node/ShortNode;->_value:S
return v0
.end method