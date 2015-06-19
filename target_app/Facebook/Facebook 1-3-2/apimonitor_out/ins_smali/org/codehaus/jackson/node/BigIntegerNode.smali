.class public final Lorg/codehaus/jackson/node/BigIntegerNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.field final _value:Ljava/math/BigInteger;
.method public constructor <init>(Ljava/math/BigInteger;)V
.registers 2
invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V
iput-object p1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-void
.end method
.method public static valueOf(Ljava/math/BigInteger;)Lorg/codehaus/jackson/node/BigIntegerNode;
.registers 2
new-instance v0, Lorg/codehaus/jackson/node/BigIntegerNode;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V
return-object v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v3, 0x1
const/4 v2, 0x0
if-ne p1, p0, :cond_6
move v0, v3
:goto_5
return v0
:cond_6
if-nez p1, :cond_a
move v0, v2
goto :goto_5
:cond_a
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
if-eq v0, v1, :cond_16
move v0, v2
goto :goto_5
:cond_16
check-cast p1, Lorg/codehaus/jackson/node/BigIntegerNode;
iget-object v0, p1, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
if-ne v0, v1, :cond_20
move v0, v3
goto :goto_5
:cond_20
move v0, v2
goto :goto_5
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-object v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 3
new-instance v0, Ljava/math/BigDecimal;
iget-object v1, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public getIntValue()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
move-result v0
return v0
.end method
.method public getLongValue()J
.registers 3
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-object v0
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I
move-result v0
return v0
.end method
.method public isBigInteger()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public isIntegralNumber()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final serialize(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
.registers 4
iget-object v0, p0, Lorg/codehaus/jackson/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
return-void
.end method