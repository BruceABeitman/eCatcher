.class public final Lorg/codehaus/jackson/node/IntNode;
.super Lorg/codehaus/jackson/node/NumericNode;
.field final _value:I
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lorg/codehaus/jackson/node/NumericNode;-><init>()V
iput p1, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
return-void
.end method
.method public static valueOf(I)Lorg/codehaus/jackson/node/IntNode;
.registers 2
new-instance v0, Lorg/codehaus/jackson/node/IntNode;
invoke-direct {v0, p0}, Lorg/codehaus/jackson/node/IntNode;-><init>(I)V
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
check-cast p1, Lorg/codehaus/jackson/node/IntNode;
iget v0, p1, Lorg/codehaus/jackson/node/IntNode;->_value:I
iget v1, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
if-ne v0, v1, :cond_20
move v0, v3
goto :goto_5
:cond_20
move v0, v2
goto :goto_5
.end method
.method public getBigIntegerValue()Ljava/math/BigInteger;
.registers 3
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public getDecimalValue()Ljava/math/BigDecimal;
.registers 3
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public getDoubleValue()D
.registers 3
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
int-to-double v0, v0
return-wide v0
.end method
.method public getIntValue()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
return v0
.end method
.method public getLongValue()J
.registers 3
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
int-to-long v0, v0
return-wide v0
.end method
.method public getNumberValue()Ljava/lang/Number;
.registers 2
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getValueAsText()Ljava/lang/String;
.registers 2
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
invoke-static {v0}, Lorg/codehaus/jackson/io/NumberOutput;->toString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
return v0
.end method
.method public isInt()Z
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
iget v0, p0, Lorg/codehaus/jackson/node/IntNode;->_value:I
invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonGenerator;->writeNumber(I)V
return-void
.end method