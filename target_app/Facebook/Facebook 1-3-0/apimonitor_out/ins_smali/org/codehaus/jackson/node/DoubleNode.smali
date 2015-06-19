.class public final Lorg/codehaus/jackson/node/DoubleNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.field final _value:D
.method public constructor <init>(D)V
.registers 3
invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V
iput-wide p1, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
return-void
.end method
.method public static valueOf(D)Lorg/codehaus/jackson/node/DoubleNode;
.registers 3
new-instance v0, Lorg/codehaus/jackson/node/DoubleNode;
invoke-direct {v0, p0, p1}, Lorg/codehaus/jackson/node/DoubleNode;-><init>(D)V
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
if-ne p1, p0, :cond_6
move v0, v5
:goto_5
return v0
:cond_6
if-nez p1, :cond_a
move v0, v4
goto :goto_5
:cond_a
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_16
move v0, v4
goto :goto_5
:cond_16
check-cast p1, Lorg/codehaus/jackson/node/DoubleNode;
iget-wide v0, p1, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
iget-wide v2, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
cmpl-double v0, v0, v2
if-nez v0, :cond_22
move v0, v5
goto :goto_5
:cond_22
move v0, v4
goto :goto_5
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
invoke-virtual {p0}, Lorg/codehaus/jackson/node/DoubleNode;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
return-wide v0
.end method
.method public getIntValue()I
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
double-to-int v0, v0
return v0
.end method
.method public getLongValue()J
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
double-to-long v0, v0
return-wide v0
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
return-object v0
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Lorg/codehaus/jackson/io/NumberOutput;->toString(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 5
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
long-to-int v2, v0
const/16 v3, 0x20
shr-long/2addr v0, v3
long-to-int v0, v0
xor-int/2addr v0, v2
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
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 5
iget-wide v0, p0, Lorg/codehaus/jackson/node/DoubleNode;->_value:D
invoke-virtual {p1, v0, v1}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(D)V
return-void
.end method