.class public final Lcom/fasterxml/jackson/databind/node/FloatNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "FloatNode.java"
.field protected final _value:F
.method public constructor <init>(F)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
return-void
.end method
.method public static valueOf(F)Lcom/fasterxml/jackson/databind/node/FloatNode;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/node/FloatNode;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;-><init>(F)V
return-object v0
.end method
.method public final asText()Ljava/lang/String;
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-double v0, v0
invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(D)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final asToken()Lcom/fasterxml/jackson/a/r;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->j:Lcom/fasterxml/jackson/a/r;
return-object v0
.end method
.method public final bigIntegerValue()Ljava/math/BigInteger;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/node/FloatNode;->decimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public final canConvertToInt()Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
const/high16 v1, -0x3100
cmpl-float v0, v0, v1
if-ltz v0, :cond_12
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
const/high16 v1, 0x4f00
cmpg-float v0, v0, v1
if-gtz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final canConvertToLong()Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
const/high16 v1, -0x2100
cmpl-float v0, v0, v1
if-ltz v0, :cond_12
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
const/high16 v1, 0x5f00
cmpg-float v0, v0, v1
if-gtz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final decimalValue()Ljava/math/BigDecimal;
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public final doubleValue()D
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-double v0, v0
return-wide v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p1, p0, :cond_5
:cond_4
:goto_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/fasterxml/jackson/databind/node/FloatNode;
iget v2, p1, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
iget v3, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
invoke-static {v3, v2}, Ljava/lang/Float;->compare(FF)I
move-result v2
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final floatValue()F
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
return v0
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I
move-result v0
return v0
.end method
.method public final intValue()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-int v0, v0
return v0
.end method
.method public final isFloat()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isFloatingPointNumber()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final longValue()J
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-long v0, v0
return-wide v0
.end method
.method public final numberType$72641f5()I
.registers 2
sget v0, Lcom/fasterxml/jackson/a/o;->d:I
return v0
.end method
.method public final numberValue()Ljava/lang/Number;
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/a/h;->writeNumber(F)V
return-void
.end method
.method public final shortValue()S
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/FloatNode;->_value:F
float-to-int v0, v0
int-to-short v0, v0
return v0
.end method