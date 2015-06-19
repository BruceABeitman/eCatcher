.class public Lcom/fasterxml/jackson/databind/node/DoubleNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "DoubleNode.java"
.field protected final _value:D
.method public constructor <init>(D)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput-wide p1, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
return-void
.end method
.method public static valueOf(D)Lcom/fasterxml/jackson/databind/node/DoubleNode;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/node/DoubleNode;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/DoubleNode;-><init>(D)V
return-object v0
.end method
.method public asText()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Lcom/fasterxml/jackson/core/io/NumberOutput;->toString(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public bigIntegerValue()Ljava/math/BigInteger;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/DoubleNode;->decimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public canConvertToInt()Z
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
const-wide/high16 v2, -0x3e20
cmpl-double v0, v0, v2
if-ltz v0, :cond_15
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
const-wide v2, 0x41dfffffffc00000L
cmpg-double v0, v0, v2
if-gtz v0, :cond_15
const/4 v0, 0x1
:goto_14
return v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method public canConvertToLong()Z
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
const-wide/high16 v2, -0x3c20
cmpl-double v0, v0, v2
if-ltz v0, :cond_12
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
const-wide/high16 v2, 0x43e0
cmpg-double v0, v0, v2
if-gtz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public decimalValue()Ljava/math/BigDecimal;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public doubleValue()D
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
return-wide v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
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
instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;
if-eqz v2, :cond_1b
check-cast p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;
iget-wide v2, p1, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
iget-wide v4, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-static {v4, v5, v2, v3}, Ljava/lang/Double;->compare(DD)I
move-result v2
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
:cond_1b
move v0, v1
goto :goto_4
.end method
.method public floatValue()F
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
double-to-float v0, v0
return v0
.end method
.method public hashCode()I
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
long-to-int v2, v0
const/16 v3, 0x20
shr-long/2addr v0, v3
long-to-int v0, v0
xor-int/2addr v0, v2
return v0
.end method
.method public intValue()I
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
double-to-int v0, v0
return v0
.end method
.method public isDouble()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isFloatingPointNumber()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public longValue()J
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
double-to-long v0, v0
return-wide v0
.end method
.method public numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->DOUBLE:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
return-object v0
.end method
.method public numberValue()Ljava/lang/Number;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(D)V
return-void
.end method
.method public shortValue()S
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/DoubleNode;->_value:D
double-to-int v0, v0
int-to-short v0, v0
return v0
.end method