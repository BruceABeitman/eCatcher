.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "JsonPrimitive.java"
.field private static final PRIMITIVE_TYPES:[Ljava/lang/Class;
.field private value:Ljava/lang/Object;
.method static constructor <clinit>()V
.registers 3
const/16 v0, 0x10
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x1
sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x2
sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x3
sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x4
sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x5
sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x6
sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/4 v1, 0x7
sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
aput-object v2, v0, v1
const/16 v1, 0x8
const-class v2, Ljava/lang/Integer;
aput-object v2, v0, v1
const/16 v1, 0x9
const-class v2, Ljava/lang/Long;
aput-object v2, v0, v1
const/16 v1, 0xa
const-class v2, Ljava/lang/Short;
aput-object v2, v0, v1
const/16 v1, 0xb
const-class v2, Ljava/lang/Float;
aput-object v2, v0, v1
const/16 v1, 0xc
const-class v2, Ljava/lang/Double;
aput-object v2, v0, v1
const/16 v1, 0xd
const-class v2, Ljava/lang/Byte;
aput-object v2, v0, v1
const/16 v1, 0xe
const-class v2, Ljava/lang/Boolean;
aput-object v2, v0, v1
const/16 v1, 0xf
const-class v2, Ljava/lang/Character;
aput-object v2, v0, v1
sput-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Ljava/lang/Boolean;)V
.registers 2
invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V
invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Character;)V
.registers 2
invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V
invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/Number;)V
.registers 2
invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V
invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V
return-void
.end method
.method constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V
invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V
invoke-virtual {p0, p1}, Lcom/google/gson/JsonPrimitive;->setValue(Ljava/lang/Object;)V
return-void
.end method
.method private static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
.registers 4
const/4 v1, 0x0
iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v2, v2, Ljava/lang/Number;
if-eqz v2, :cond_20
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/lang/Number;
instance-of v2, v0, Ljava/math/BigInteger;
if-nez v2, :cond_1f
instance-of v2, v0, Ljava/lang/Long;
if-nez v2, :cond_1f
instance-of v2, v0, Ljava/lang/Integer;
if-nez v2, :cond_1f
instance-of v2, v0, Ljava/lang/Short;
if-nez v2, :cond_1f
instance-of v2, v0, Ljava/lang/Byte;
if-eqz v2, :cond_20
:cond_1f
const/4 v1, 0x1
:cond_20
return v1
.end method
.method private static isPrimitiveOrString(Ljava/lang/Object;)Z
.registers 8
const/4 v5, 0x1
instance-of v6, p0, Ljava/lang/String;
if-eqz v6, :cond_6
:goto_5
:cond_5
return v5
:cond_6
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
sget-object v0, Lcom/google/gson/JsonPrimitive;->PRIMITIVE_TYPES:[Ljava/lang/Class;
array-length v3, v0
const/4 v2, 0x0
:goto_e
if-ge v2, v3, :cond_1b
aget-object v4, v0, v2
invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-nez v6, :cond_5
add-int/lit8 v2, v2, 0x1
goto :goto_e
:cond_1b
const/4 v5, 0x0
goto :goto_5
.end method
.method bridge synthetic deepCopy()Lcom/google/gson/JsonElement;
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->deepCopy()Lcom/google/gson/JsonPrimitive;
move-result-object v0
return-object v0
.end method
.method  deepCopy()Lcom/google/gson/JsonPrimitive;
.registers 1
return-object p0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 13
const/4 v5, 0x1
const/4 v6, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v5
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v7
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v8
if-eq v7, v8, :cond_13
:cond_11
move v5, v6
goto :goto_4
:cond_13
move-object v4, p1
check-cast v4, Lcom/google/gson/JsonPrimitive;
iget-object v7, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
if-nez v7, :cond_20
iget-object v7, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
if-eqz v7, :cond_4
move v5, v6
goto :goto_4
:cond_20
invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z
move-result v7
if-eqz v7, :cond_42
invoke-static {v4}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z
move-result v7
if-eqz v7, :cond_42
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Number;->longValue()J
move-result-wide v7
invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/Number;->longValue()J
move-result-wide v9
cmp-long v7, v7, v9
if-eqz v7, :cond_4
move v5, v6
goto :goto_4
:cond_42
iget-object v7, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v7, v7, Ljava/lang/Number;
if-eqz v7, :cond_71
iget-object v7, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v7, v7, Ljava/lang/Number;
if-eqz v7, :cond_71
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
invoke-virtual {v4}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D
move-result-wide v2
cmpl-double v7, v0, v2
if-eqz v7, :cond_6e
invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z
move-result v7
if-eqz v7, :cond_6f
invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z
move-result v7
if-eqz v7, :cond_6f
:cond_6e
move v6, v5
:cond_6f
move v5, v6
goto :goto_4
:cond_71
iget-object v5, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
iget-object v6, v4, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v5
goto :goto_4
.end method
.method public getAsBigDecimal()Ljava/math/BigDecimal;
.registers 3
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/math/BigDecimal;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/math/BigDecimal;
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/math/BigDecimal;
iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V
goto :goto_a
.end method
.method public getAsBigInteger()Ljava/math/BigInteger;
.registers 3
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/math/BigInteger;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/math/BigInteger;
:goto_a
return-object v0
:cond_b
new-instance v0, Ljava/math/BigInteger;
iget-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
goto :goto_a
.end method
.method public getAsBoolean()Z
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
goto :goto_e
.end method
.method  getAsBooleanWrapper()Ljava/lang/Boolean;
.registers 2
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/lang/Boolean;
return-object v0
.end method
.method public getAsByte()B
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B
move-result v0
goto :goto_e
.end method
.method public getAsCharacter()C
.registers 3
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
return v0
.end method
.method public getAsDouble()D
.registers 3
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D
move-result-wide v0
:goto_e
return-wide v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
goto :goto_e
.end method
.method public getAsFloat()F
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v0
goto :goto_e
.end method
.method public getAsInt()I
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->intValue()I
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
goto :goto_e
.end method
.method public getAsLong()J
.registers 3
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->longValue()J
move-result-wide v0
:goto_e
return-wide v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
goto :goto_e
.end method
.method public getAsNumber()Ljava/lang/Number;
.registers 3
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
if-eqz v0, :cond_11
new-instance v1, Lcom/google/gson/internal/LazilyParsedNumber;
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
invoke-direct {v1, v0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V
move-object v0, v1
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/lang/Number;
goto :goto_10
.end method
.method public getAsShort()S
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S
move-result v0
:goto_e
return v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S
move-result v0
goto :goto_e
.end method
.method public getAsString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isNumber()Z
move-result v0
if-eqz v0, :cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->isBoolean()Z
move-result v0
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsBooleanWrapper()Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_1e
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
check-cast v0, Ljava/lang/String;
goto :goto_e
.end method
.method public hashCode()I
.registers 6
const/16 v4, 0x20
iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
if-nez v2, :cond_9
const/16 v2, 0x1f
:goto_8
return v2
:cond_9
invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z
move-result v2
if-eqz v2, :cond_1c
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Number;->longValue()J
move-result-wide v0
ushr-long v2, v0, v4
xor-long/2addr v2, v0
long-to-int v2, v2
goto :goto_8
:cond_1c
iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v2, v2, Ljava/lang/Number;
if-eqz v2, :cond_33
invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J
move-result-wide v0
ushr-long v2, v0, v4
xor-long/2addr v2, v0
long-to-int v2, v2
goto :goto_8
:cond_33
iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v2
goto :goto_8
.end method
.method public isBoolean()Z
.registers 2
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/Boolean;
return v0
.end method
.method public isNumber()Z
.registers 2
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/Number;
return v0
.end method
.method public isString()Z
.registers 2
iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
instance-of v0, v0, Ljava/lang/String;
return v0
.end method
.method  setValue(Ljava/lang/Object;)V
.registers 4
instance-of v1, p1, Ljava/lang/Character;
if-eqz v1, :cond_11
check-cast p1, Ljava/lang/Character;
invoke-virtual {p1}, Ljava/lang/Character;->charValue()C
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
:goto_10
return-void
:cond_11
instance-of v1, p1, Ljava/lang/Number;
if-nez v1, :cond_1b
invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isPrimitiveOrString(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_22
:cond_1b
const/4 v1, 0x1
:goto_1c
invoke-static {v1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V
iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;
goto :goto_10
:cond_22
const/4 v1, 0x0
goto :goto_1c
.end method