.class public final Lcom/fasterxml/jackson/databind/node/LongNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "LongNode.java"
.field final _value:J
.method public constructor <init>(J)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput-wide p1, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
return-void
.end method
.method public static valueOf(J)Lcom/fasterxml/jackson/databind/node/LongNode;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/node/LongNode;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/node/LongNode;-><init>(J)V
return-object v0
.end method
.method public final asBoolean(Z)Z
.registers 6
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final asText()Ljava/lang/String;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
invoke-static {v0, v1}, Lcom/fasterxml/jackson/a/c/i;->a(J)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final asToken()Lcom/fasterxml/jackson/a/r;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/a/r;->i:Lcom/fasterxml/jackson/a/r;
return-object v0
.end method
.method public final bigIntegerValue()Ljava/math/BigInteger;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
return-object v0
.end method
.method public final canConvertToInt()Z
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
const-wide/32 v2, -0x80000000
cmp-long v0, v0, v2
if-ltz v0, :cond_14
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
const-wide/32 v2, 0x7fffffff
cmp-long v0, v0, v2
if-gtz v0, :cond_14
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public final canConvertToLong()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final decimalValue()Ljava/math/BigDecimal;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public final doubleValue()D
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
long-to-double v0, v0
return-wide v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
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
check-cast p1, Lcom/fasterxml/jackson/databind/node/LongNode;
iget-wide v2, p1, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
iget-wide v4, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
cmp-long v2, v2, v4
if-eqz v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public final floatValue()F
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
long-to-float v0, v0
return v0
.end method
.method public final hashCode()I
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
long-to-int v0, v0
iget-wide v1, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
const/16 v3, 0x20
shr-long/2addr v1, v3
long-to-int v1, v1
xor-int/2addr v0, v1
return v0
.end method
.method public final intValue()I
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
long-to-int v0, v0
return v0
.end method
.method public final isIntegralNumber()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final isLong()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final longValue()J
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
return-wide v0
.end method
.method public final numberType$72641f5()I
.registers 2
sget v0, Lcom/fasterxml/jackson/a/o;->b:I
return v0
.end method
.method public final numberValue()Ljava/lang/Number;
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/a/h;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 5
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V
return-void
.end method
.method public final shortValue()S
.registers 3
iget-wide v0, p0, Lcom/fasterxml/jackson/databind/node/LongNode;->_value:J
long-to-int v0, v0
int-to-short v0, v0
return v0
.end method