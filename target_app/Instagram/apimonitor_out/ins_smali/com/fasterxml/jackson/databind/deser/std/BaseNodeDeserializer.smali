.class abstract Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "JsonNodeDeserializer.java"
.method public constructor <init>()V
.registers 2
const-class v0, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Ljava/lang/Class;)V
return-void
.end method
.method protected _handleDuplicateField(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 5
return-void
.end method
.method protected _reportProblem(Lcom/fasterxml/jackson/a/l;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getTokenLocation()Lcom/fasterxml/jackson/a/j;
move-result-object v1
invoke-direct {v0, p2, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;)V
throw v0
.end method
.method protected final deserializeAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
.registers 7
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_b8
:pswitch_f
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->getValueClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_18
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
:goto_1c
return-object v0
:pswitch_1d
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_1c
:pswitch_22
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
goto :goto_1c
:pswitch_27
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_32
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
goto :goto_1c
:cond_32
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const-class v2, [B
if-ne v1, v2, :cond_43
check-cast v0, [B
check-cast v0, [B
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->binaryNode([B)Lcom/fasterxml/jackson/databind/node/BinaryNode;
move-result-object v0
goto :goto_1c
:cond_43
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->pojoNode(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/node/ValueNode;
move-result-object v0
goto :goto_1c
:pswitch_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
move-result-object v0
goto :goto_1c
:pswitch_51
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v0
sget v1, Lcom/fasterxml/jackson/a/o;->c:I
if-eq v0, v1, :cond_61
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_INTEGER_FOR_INTS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-eqz v1, :cond_6a
:cond_61
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getBigIntegerValue()Ljava/math/BigInteger;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigInteger;)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
goto :goto_1c
:cond_6a
sget v1, Lcom/fasterxml/jackson/a/o;->a:I
if-ne v0, v1, :cond_77
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getIntValue()I
move-result v0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(I)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
goto :goto_1c
:cond_77
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getLongValue()J
move-result-wide v0
invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(J)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
goto :goto_1c
:pswitch_80
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getNumberType$72641f5()I
move-result v0
sget v1, Lcom/fasterxml/jackson/a/o;->f:I
if-eq v0, v1, :cond_90
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->USE_BIG_DECIMAL_FOR_FLOATS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_99
:cond_90
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDecimalValue()Ljava/math/BigDecimal;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(Ljava/math/BigDecimal;)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
goto :goto_1c
:cond_99
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getDoubleValue()D
move-result-wide v0
invoke-virtual {p3, v0, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->numberNode(D)Lcom/fasterxml/jackson/databind/node/NumericNode;
move-result-object v0
goto/16 :goto_1c
:pswitch_a3
const/4 v0, 0x1
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
goto/16 :goto_1c
:pswitch_aa
const/4 v0, 0x0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->booleanNode(Z)Lcom/fasterxml/jackson/databind/node/BooleanNode;
move-result-object v0
goto/16 :goto_1c
:pswitch_b1
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->nullNode()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
goto/16 :goto_1c
nop
:pswitch_data_b8
.packed-switch 0x1
:pswitch_18
:pswitch_1d
:pswitch_48
:pswitch_f
:pswitch_22
:pswitch_27
:pswitch_51
:pswitch_80
:pswitch_a3
:pswitch_aa
:pswitch_b1
.end packed-switch
.end method
.method protected final deserializeArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
.registers 7
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->arrayNode()Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
:goto_4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v1
if-nez v1, :cond_11
const-string v0, "Unexpected end-of-input when binding data into ArrayNode"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_11
sget-object v2, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v1}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v1
aget v1, v2, v1
packed-switch v1, :pswitch_data_42
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_4
:pswitch_24
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_4
:pswitch_2c
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_4
:pswitch_34
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/node/ArrayNode;->add(Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
goto :goto_4
:pswitch_40
return-object v0
nop
:pswitch_data_42
.packed-switch 0x1
:pswitch_24
:pswitch_2c
:pswitch_34
:pswitch_40
.end packed-switch
.end method
.method protected final deserializeObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
.registers 8
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->objectNode()Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v2, :cond_10
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_10
:goto_10
sget-object v2, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v2, :cond_4c
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v2
sget-object v0, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v3
invoke-virtual {v3}, Lcom/fasterxml/jackson/a/r;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_4e
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
:goto_2b
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->replace(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v3
if-eqz v3, :cond_34
invoke-virtual {p0, v2, v1, v3, v0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->_handleDuplicateField(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/JsonNode;)V
:cond_34
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_10
:pswitch_39
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
move-result-object v0
goto :goto_2b
:pswitch_3e
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->deserializeArray(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;)Lcom/fasterxml/jackson/databind/node/ArrayNode;
move-result-object v0
goto :goto_2b
:pswitch_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/node/JsonNodeFactory;->textNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/TextNode;
move-result-object v0
goto :goto_2b
:cond_4c
return-object v1
nop
:pswitch_data_4e
.packed-switch 0x1
:pswitch_39
:pswitch_3e
:pswitch_43
.end packed-switch
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getNullValue()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
invoke-static {}, Lcom/fasterxml/jackson/databind/node/NullNode;->getInstance()Lcom/fasterxml/jackson/databind/node/NullNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getNullValue()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/BaseNodeDeserializer;->getNullValue()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method