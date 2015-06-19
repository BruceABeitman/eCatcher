.class public final Lcom/fasterxml/jackson/databind/node/BigIntegerNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "SourceFile"
.field private static final MAX_INTEGER:Ljava/math/BigInteger;
.field private static final MAX_LONG:Ljava/math/BigInteger;
.field private static final MIN_INTEGER:Ljava/math/BigInteger;
.field private static final MIN_LONG:Ljava/math/BigInteger;
.field protected final _value:Ljava/math/BigInteger;
.method static constructor <clinit>()V
.registers 2
const-wide/32 v0, -0x80000000
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->MIN_INTEGER:Ljava/math/BigInteger;
const-wide/32 v0, 0x7fffffff
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->MAX_INTEGER:Ljava/math/BigInteger;
const-wide/high16 v0, -0x8000
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->MIN_LONG:Ljava/math/BigInteger;
const-wide v0, 0x7fffffffffffffffL
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->MAX_LONG:Ljava/math/BigInteger;
return-void
.end method
.method public constructor <init>(Ljava/math/BigInteger;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-void
.end method
.method public static valueOf(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/BigIntegerNode;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;-><init>(Ljava/math/BigInteger;)V
return-object v0
.end method
.method public final asText()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final asToken()Lcom/fasterxml/jackson/core/JsonToken;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
return-object v0
.end method
.method public final bigIntegerValue()Ljava/math/BigInteger;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-object v0
.end method
.method public final decimalValue()Ljava/math/BigDecimal;
.registers 3
new-instance v0, Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V
return-object v0
.end method
.method public final doubleValue()D
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D
move-result-wide v0
return-wide v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-ne p1, p0, :cond_5
const/4 v0, 0x1
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_4
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-ne v1, v2, :cond_4
check-cast p1, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I
move-result v0
return v0
.end method
.method public final intValue()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I
move-result v0
return v0
.end method
.method public final longValue()J
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J
move-result-wide v0
return-wide v0
.end method
.method public final numberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->BIG_INTEGER:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
return-object v0
.end method
.method public final numberValue()Ljava/lang/Number;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/node/BigIntegerNode;->_value:Ljava/math/BigInteger;
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(Ljava/math/BigInteger;)V
return-void
.end method