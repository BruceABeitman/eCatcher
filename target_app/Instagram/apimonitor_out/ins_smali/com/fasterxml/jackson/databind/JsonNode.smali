.class public abstract Lcom/fasterxml/jackson/databind/JsonNode;
.super Ljava/lang/Object;
.source "JsonNode.java"
.implements Lcom/fasterxml/jackson/a/v;
.implements Ljava/lang/Iterable;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public asBoolean()Z
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean(Z)Z
move-result v0
return v0
.end method
.method public asBoolean(Z)Z
.registers 2
return p1
.end method
.method public asDouble()D
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble(D)D
move-result-wide v0
return-wide v0
.end method
.method public asDouble(D)D
.registers 3
return-wide p1
.end method
.method public asInt()I
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt(I)I
move-result v0
return v0
.end method
.method public asInt(I)I
.registers 2
return p1
.end method
.method public asLong()J
.registers 3
const-wide/16 v0, 0x0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong(J)J
move-result-wide v0
return-wide v0
.end method
.method public asLong(J)J
.registers 3
return-wide p1
.end method
.method public abstract asText()Ljava/lang/String;
.end method
.method public bigIntegerValue()Ljava/math/BigInteger;
.registers 2
sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
return-object v0
.end method
.method public binaryValue()[B
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public booleanValue()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canConvertToInt()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public canConvertToLong()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public decimalValue()Ljava/math/BigDecimal;
.registers 2
sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;
return-object v0
.end method
.method public abstract deepCopy()Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public doubleValue()D
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public elements()Ljava/util/Iterator;
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public abstract equals(Ljava/lang/Object;)Z
.end method
.method public fieldNames()Ljava/util/Iterator;
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public fields()Ljava/util/Iterator;
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/util/EmptyIterator;->instance()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public abstract findParent(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public final findParents(Ljava/lang/String;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:cond_b
return-object v0
.end method
.method public abstract findParents(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
.method public abstract findPath(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public abstract findValue(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public final findValues(Ljava/lang/String;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:cond_b
return-object v0
.end method
.method public abstract findValues(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
.method public final findValuesAsText(Ljava/lang/String;)Ljava/util/List;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/JsonNode;->findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
move-result-object v0
if-nez v0, :cond_b
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:cond_b
return-object v0
.end method
.method public abstract findValuesAsText(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
.end method
.method public floatValue()F
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public bridge synthetic get(I)Lcom/fasterxml/jackson/a/v;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic get(Ljava/lang/String;)Lcom/fasterxml/jackson/a/v;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public abstract get(I)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public abstract getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
.end method
.method public has(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public has(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public hasNonNull(I)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public hasNonNull(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public intValue()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isArray()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isBigDecimal()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isBigInteger()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isBinary()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BINARY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isBoolean()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->BOOLEAN:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isContainerNode()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-eq v0, v1, :cond_c
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ARRAY:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public isDouble()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isFloat()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isFloatingPointNumber()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isInt()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isIntegralNumber()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isLong()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isMissingNode()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->MISSING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isNull()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NULL:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isNumber()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->NUMBER:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isObject()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->OBJECT:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isPojo()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->POJO:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public isShort()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final isTextual()Z
.registers 3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->STRING:Lcom/fasterxml/jackson/databind/node/JsonNodeType;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final isValueNode()Z
.registers 3
sget-object v0, Lcom/fasterxml/jackson/databind/JsonNode$1;->$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType:[I
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->getNodeType()Lcom/fasterxml/jackson/databind/node/JsonNodeType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_14
const/4 v0, 0x1
:goto_10
return v0
:pswitch_11
const/4 v0, 0x0
goto :goto_10
nop
:pswitch_data_14
.packed-switch 0x1
:pswitch_11
:pswitch_11
:pswitch_11
.end packed-switch
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->elements()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public longValue()J
.registers 3
const-wide/16 v0, 0x0
return-wide v0
.end method
.method public numberValue()Ljava/lang/Number;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public bridge synthetic path(I)Lcom/fasterxml/jackson/a/v;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->path(I)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic path(Ljava/lang/String;)Lcom/fasterxml/jackson/a/v;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/JsonNode;->path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public abstract path(I)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public abstract path(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.end method
.method public shortValue()S
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public size()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public textValue()Ljava/lang/String;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public abstract toString()Ljava/lang/String;
.end method
.method public with(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "JsonNode not of type ObjectNode (but "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "), can not call with() on it"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public withArray(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 5
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "JsonNode not of type ObjectNode (but "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "), can not call withArray() on it"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method