.class public abstract Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "StdDeserializer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _valueClass:Ljava/lang/Class;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
if-nez p1, :cond_9
const/4 v0, 0x0
:goto_6
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
return-void
:cond_9
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
goto :goto_6
.end method
.method protected constructor <init>(Ljava/lang/Class;)V
.registers 2
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
return-void
.end method
.method protected static final parseDouble(Ljava/lang/String;)D
.registers 3
const-string v0, "2.2250738585072012e-308"
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b
const-wide/16 v0, 0x1
:goto_a
return-wide v0
:cond_b
invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
move-result-wide v0
goto :goto_a
.end method
.method protected _hasTextualNull(Ljava/lang/String;)Z
.registers 3
const-string v0, "null"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final _isNaN(Ljava/lang/String;)Z
.registers 3
const-string v0, "NaN"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected final _isNegInf(Ljava/lang/String;)Z
.registers 3
const-string v0, "-Infinity"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "-INF"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected final _isPosInf(Ljava/lang/String;)Z
.registers 3
const-string v0, "Infinity"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "INF"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method protected final _parseBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Boolean;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_b
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
:goto_a
return-object v0
:cond_b
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_12
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_a
:cond_12
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_33
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_2a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
if-nez v0, :cond_27
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_a
:cond_27
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_a
:cond_2a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_a
:cond_33
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_3e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
goto :goto_a
:cond_3e
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_93
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
const-string v1, "true"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5a
const-string v1, "True"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5d
:cond_5a
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_a
:cond_5d
const-string v1, "false"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_6d
const-string v1, "False"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_70
:cond_6d
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_a
:cond_70
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_7d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
goto :goto_a
:cond_7d
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_8a
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
goto :goto_a
:cond_8a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "only \"true\" or \"false\" recognized"
invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_93
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->LONG:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v0, v1, :cond_1c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-nez v0, :cond_19
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
:goto_14
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
:goto_18
return v0
:cond_19
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_14
:cond_1c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
const-string v1, "0.0"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
const-string v1, "0"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
:cond_30
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_18
:cond_37
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
goto :goto_18
.end method
.method protected final _parseBooleanPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_c
move v1, v0
:cond_b
:goto_b
return v1
:cond_c
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_b
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_b
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_2f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->INT:Lcom/fasterxml/jackson/core/JsonParser$NumberType;
if-ne v2, v3, :cond_2a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v2
if-eqz v2, :cond_28
:goto_26
move v1, v0
goto :goto_b
:cond_28
move v0, v1
goto :goto_26
:cond_2a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseBooleanFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Z
move-result v1
goto :goto_b
:cond_2f
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_72
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
const-string v3, "true"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4b
const-string v3, "True"
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4d
:cond_4b
move v1, v0
goto :goto_b
:cond_4d
const-string v0, "false"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b
const-string v0, "False"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v0
if-eqz v0, :cond_b
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v1, "only \"true\" or \"false\" recognized"
invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_72
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected _parseByte(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Byte;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getByteValue()B
move-result v0
invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_60
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Byte;
goto :goto_14
:cond_2e
:try_start_2e
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Byte;
goto :goto_14
:cond_3b
invoke-static {v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
:try_end_3e
.catch Ljava/lang/IllegalArgumentException; {:try_start_2e .. :try_end_3e} :catch_50
move-result v0
const/16 v2, -0x80
if-lt v0, v2, :cond_47
const/16 v2, 0xff
if-le v0, v2, :cond_5a
:cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "overflow, value can not be represented as 8-bit value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_50
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Byte value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_5a
int-to-byte v0, v0
invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v0
goto :goto_14
:cond_60
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_6b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Byte;
goto :goto_14
:cond_6b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected _parseDate(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Date;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_12
new-instance v0, Ljava/util/Date;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V
:goto_11
return-object v0
:cond_12
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_1d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
goto :goto_11
:cond_1d
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_6e
const/4 v1, 0x0
:try_start_22
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_37
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
goto :goto_11
:cond_37
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_44
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Date;
goto :goto_11
:cond_44
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->parseDate(Ljava/lang/String;)Ljava/util/Date;
:try_end_47
.catch Ljava/lang/IllegalArgumentException; {:try_start_22 .. :try_end_47} :catch_49
move-result-object v0
goto :goto_11
:catch_49
move-exception v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "not a valid representation (error: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ")"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v1, v2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_6e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Double;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_7d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Double;
goto :goto_14
:cond_2e
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Double;
goto :goto_14
:cond_3b
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
sparse-switch v1, :sswitch_data_90
:cond_43
:try_start_43
invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
:try_end_4a
.catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_73
move-result-object v0
goto :goto_14
:sswitch_4c
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
const-wide/high16 v0, 0x7ff0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_14
:sswitch_59
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
const-wide/high16 v0, 0x7ff8
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_14
:sswitch_66
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_43
const-wide/high16 v0, -0x10
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_14
:catch_73
move-exception v1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Double value"
invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_7d
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_88
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Double;
goto :goto_14
:cond_88
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
nop
:sswitch_data_90
.sparse-switch
0x2d -> :sswitch_66
0x49 -> :sswitch_4c
0x4e -> :sswitch_59
.end sparse-switch
.end method
.method protected final _parseDoublePrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)D
.registers 7
const-wide/16 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_e
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_13
:cond_e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
:cond_12
:goto_12
return-wide v0
:cond_13
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_5d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-eqz v3, :cond_12
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12
const/4 v0, 0x0
invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
sparse-switch v0, :sswitch_data_68
:cond_33
:try_start_33
invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->parseDouble(Ljava/lang/String;)D
:try_end_36
.catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_36} :catch_53
move-result-wide v0
goto :goto_12
:sswitch_38
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const-wide/high16 v0, 0x7ff0
goto :goto_12
:sswitch_41
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const-wide/high16 v0, 0x7ff8
goto :goto_12
:sswitch_4a
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_33
const-wide/high16 v0, -0x10
goto :goto_12
:catch_53
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v1, "not a valid double value"
invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_5d
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:sswitch_data_68
.sparse-switch
0x2d -> :sswitch_4a
0x49 -> :sswitch_38
0x4e -> :sswitch_41
.end sparse-switch
.end method
.method protected final _parseFloat(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Float;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_93
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Float;
goto :goto_14
:cond_2e
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Float;
goto :goto_14
:cond_3b
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v1
sparse-switch v1, :sswitch_data_a6
:try_start_43
:cond_43
invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
move-result v1
invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
:try_end_4a
.catch Ljava/lang/IllegalArgumentException; {:try_start_43 .. :try_end_4a} :catch_89
move-result-object v0
goto :goto_14
:sswitch_4c
const-string v1, "Infinity"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_5c
const-string v1, "INF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_43
:cond_5c
const/high16 v0, 0x7f80
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
goto :goto_14
:sswitch_63
const-string v1, "NaN"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_43
const/high16 v0, 0x7fc0
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
goto :goto_14
:sswitch_72
const-string v1, "-Infinity"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_82
const-string v1, "-INF"
invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_43
:cond_82
const/high16 v0, -0x80
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
goto :goto_14
:catch_89
move-exception v1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Float value"
invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_93
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_9f
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Float;
goto/16 :goto_14
:cond_9f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:sswitch_data_a6
.sparse-switch
0x2d -> :sswitch_72
0x49 -> :sswitch_4c
0x4e -> :sswitch_63
.end sparse-switch
.end method
.method protected final _parseFloatPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)F
.registers 6
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_d
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_12
:cond_d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getFloatValue()F
move-result v0
:cond_11
:goto_11
return v0
:cond_12
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_5c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-eqz v2, :cond_11
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_11
const/4 v0, 0x0
invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C
move-result v0
sparse-switch v0, :sswitch_data_68
:cond_32
:try_start_32
invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_35
.catch Ljava/lang/IllegalArgumentException; {:try_start_32 .. :try_end_35} :catch_52
move-result v0
goto :goto_11
:sswitch_37
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isPosInf(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const/high16 v0, 0x7f80
goto :goto_11
:sswitch_40
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNaN(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const/high16 v0, 0x7fc0
goto :goto_11
:sswitch_49
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_isNegInf(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_32
const/high16 v0, -0x80
goto :goto_11
:catch_52
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid float value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_5c
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
nop
:sswitch_data_68
.sparse-switch
0x2d -> :sswitch_49
0x49 -> :sswitch_37
0x4e -> :sswitch_40
.end sparse-switch
.end method
.method protected final _parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I
.registers 9
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_d
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_12
:cond_d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
:cond_11
:goto_11
return v0
:cond_12
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_8a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_11
:try_start_24
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
const/16 v3, 0x9
if-le v2, v3, :cond_83
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/32 v4, -0x80000000
cmp-long v0, v2, v4
if-ltz v0, :cond_3e
const-wide/32 v4, 0x7fffffff
cmp-long v0, v2, v4
if-lez v0, :cond_81
:cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overflow: numeric value ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") out of range of int ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/high16 v3, -0x8000
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " - "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7fffffff
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:try_end_77
.catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_77} :catch_77
:catch_77
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid int value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_81
long-to-int v0, v2
goto :goto_11
:cond_83
if-eqz v2, :cond_11
:try_start_85
invoke-static {v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
:try_end_88
.catch Ljava/lang/IllegalArgumentException; {:try_start_85 .. :try_end_88} :catch_77
move-result v0
goto :goto_11
:cond_8a
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseInteger(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Integer;
.registers 9
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_a5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:try_start_21
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_32
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
goto :goto_14
:cond_32
const/16 v2, 0x9
if-le v0, v2, :cond_91
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
const-wide/32 v4, -0x80000000
cmp-long v0, v2, v4
if-ltz v0, :cond_48
const-wide/32 v4, 0x7fffffff
cmp-long v0, v2, v4
if-lez v0, :cond_8b
:cond_48
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Overflow: numeric value ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") out of range of Integer ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/high16 v3, -0x8000
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " - "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const v3, 0x7fffffff
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:try_end_81
.catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_81} :catch_81
:catch_81
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Integer value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_8b
long-to-int v0, v2
:try_start_8c
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_14
:cond_91
if-nez v0, :cond_9b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
goto/16 :goto_14
:cond_9b
invoke-static {v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
:try_end_a2
.catch Ljava/lang/IllegalArgumentException; {:try_start_8c .. :try_end_a2} :catch_81
move-result-object v0
goto/16 :goto_14
:cond_a5
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_b1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
goto/16 :goto_14
:cond_b1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseLong(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Long;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_4e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-nez v1, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
goto :goto_14
:cond_2e
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
goto :goto_14
:try_start_3b
:cond_3b
invoke-static {v0}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
:try_end_42
.catch Ljava/lang/IllegalArgumentException; {:try_start_3b .. :try_end_42} :catch_44
move-result-object v0
goto :goto_14
:catch_44
move-exception v1
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Long value"
invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_4e
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_59
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
goto :goto_14
:cond_59
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseLongPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)J
.registers 7
const-wide/16 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_e
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_13
:cond_e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v0
:cond_12
:goto_12
return-wide v0
:cond_13
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_3a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-eqz v3, :cond_12
invoke-virtual {p0, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_12
:try_start_2b
invoke-static {v2}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseLong(Ljava/lang/String;)J
:try_end_2e
.catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_2e} :catch_30
move-result-wide v0
goto :goto_12
:catch_30
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v1, "not a valid long value"
invoke-virtual {p2, v2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_3a
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v3, :cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected _parseShort(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Short;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_15
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getShortValue()S
move-result v0
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
:goto_14
return-object v0
:cond_15
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_60
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v1
:try_start_21
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_2e
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getEmptyValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Short;
goto :goto_14
:cond_2e
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_hasTextualNull(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Short;
goto :goto_14
:cond_3b
invoke-static {v1}, Lcom/fasterxml/jackson/core/io/NumberInput;->parseInt(Ljava/lang/String;)I
:try_end_3e
.catch Ljava/lang/IllegalArgumentException; {:try_start_21 .. :try_end_3e} :catch_50
move-result v0
const/16 v2, -0x8000
if-lt v0, v2, :cond_47
const/16 v2, 0x7fff
if-le v0, v2, :cond_5a
:cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "overflow, value can not be represented as 16-bit value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:catch_50
move-exception v0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "not a valid Short value"
invoke-virtual {p2, v1, v0, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_5a
int-to-short v0, v0
invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v0
goto :goto_14
:cond_60
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_6b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Short;
goto :goto_14
:cond_6b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected final _parseShortPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)S
.registers 6
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_parseIntPrimitive(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)I
move-result v0
const/16 v1, -0x8000
if-lt v0, v1, :cond_c
const/16 v1, 0x7fff
if-le v0, v1, :cond_19
:cond_c
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
const-string v2, "overflow, value can not be represented as 16-bit value"
invoke-virtual {p2, v0, v1, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->weirdStringException(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_19
int-to-short v0, v0
return v0
.end method
.method protected final _parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_7
return-object v0
:cond_7
const-class v0, Ljava/lang/String;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;Lcom/fasterxml/jackson/core/JsonToken;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
if-eqz v0, :cond_2e
if-eqz p2, :cond_2e
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentConverter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2e
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-nez p3, :cond_28
invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object p3
:cond_28
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
invoke-direct {v0, v1, v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
move-object p3, v0
:cond_2e
return-object p3
.end method
.method protected findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
invoke-virtual {p1, p2, p3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
return-object v0
.end method
.method public final getValueClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
return-object v0
.end method
.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
if-nez p3, :cond_6
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handledType()Ljava/lang/Class;
move-result-object p3
:cond_6
invoke-virtual {p2, p1, p0, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/lang/Object;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
:goto_c
return-void
:cond_d
invoke-virtual {p2, p3, p4, p0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->reportUnknownProperty(Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_c
.end method
.method public handledType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->_valueClass:Ljava/lang/Class;
return-object v0
.end method
.method protected isDefaultDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Z
.registers 3
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method protected isDefaultKeyDeserializer(Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
.registers 3
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isJacksonStdImpl(Ljava/lang/Object;)Z
move-result v0
return v0
.end method