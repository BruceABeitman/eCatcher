.class public Lcom/fasterxml/jackson/databind/node/IntNode;
.super Lcom/fasterxml/jackson/databind/node/NumericNode;
.source "IntNode.java"
.field private static final CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode; = null
.field static final MAX_CANONICAL:I = 0xa
.field static final MIN_CANONICAL:I = -0x1
.field protected final _value:I
.method static constructor <clinit>()V
.registers 5
const/16 v1, 0xc
new-array v0, v1, [Lcom/fasterxml/jackson/databind/node/IntNode;
sput-object v0, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_17
sget-object v2, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;
new-instance v3, Lcom/fasterxml/jackson/databind/node/IntNode;
add-int/lit8 v4, v0, -0x1
invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_17
return-void
.end method
.method public constructor <init>(I)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/node/NumericNode;-><init>()V
iput p1, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
return-void
.end method
.method public static valueOf(I)Lcom/fasterxml/jackson/databind/node/IntNode;
.registers 3
const/16 v0, 0xa
if-gt p0, v0, :cond_7
const/4 v0, -0x1
if-ge p0, v0, :cond_d
:cond_7
new-instance v0, Lcom/fasterxml/jackson/databind/node/IntNode;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/node/IntNode;-><init>(I)V
:goto_c
return-object v0
:cond_d
sget-object v0, Lcom/fasterxml/jackson/databind/node/IntNode;->CANONICALS:[Lcom/fasterxml/jackson/databind/node/IntNode;
add-int/lit8 v1, p0, 0x1
aget-object v0, v0, v1
goto :goto_c
.end method
.method public asBoolean(Z)Z
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
int-to-long v0, v0
invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;
move-result-object v0
return-object v0
.end method
.method public doubleValue()D
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
instance-of v2, p1, Lcom/fasterxml/jackson/databind/node/IntNode;
if-eqz v2, :cond_17
check-cast p1, Lcom/fasterxml/jackson/databind/node/IntNode;
iget v2, p1, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
iget v3, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
if-eq v2, v3, :cond_4
move v0, v1
goto :goto_4
:cond_17
move v0, v1
goto :goto_4
.end method
.method public floatValue()F
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
int-to-float v0, v0
return v0
.end method
.method public hashCode()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
return v0
.end method
.method public intValue()I
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
.method public longValue()J
.registers 3
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
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
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public final serialize(Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNumber(I)V
return-void
.end method
.method public shortValue()S
.registers 2
iget v0, p0, Lcom/fasterxml/jackson/databind/node/IntNode;->_value:I
int-to-short v0, v0
return v0
.end method