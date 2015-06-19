.class public Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "ObjectArrayDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.field private static final serialVersionUID:J = 0x1L
.field protected final _arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
.field protected final _elementClass:Ljava/lang/Class;
.field protected _elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.field protected final _untyped:Z
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
.registers 6
invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;
const-class v1, Ljava/lang/Object;
if-ne v0, v1, :cond_1d
const/4 v0, 0x1
:goto_16
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
return-void
:cond_1d
const/4 v0, 0x0
goto :goto_16
.end method
.method private final handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
.registers 6
const/4 v2, 0x1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_1d
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_EMPTY_STRING_AS_NULL_OBJECT:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_1d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_1d
const/4 v0, 0x0
:goto_1c
return-object v0
:cond_1d
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-nez v0, :cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;
const-class v1, Ljava/lang/Byte;
if-ne v0, v1, :cond_38
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserializeFromBase64(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Byte;
move-result-object v0
goto :goto_1c
:cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_5c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
:goto_52
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z
if-eqz v0, :cond_72
new-array v0, v2, [Ljava/lang/Object;
:goto_58
const/4 v2, 0x0
aput-object v1, v0, v2
goto :goto_1c
:cond_5c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_68
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
move-object v1, v0
goto :goto_52
:cond_68
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
invoke-virtual {v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
move-object v1, v0
goto :goto_52
:cond_72
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;
invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
goto :goto_58
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_12
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-eqz v1, :cond_1a
invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v1
:cond_1a
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->withDeserializer(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
move-result-object v0
return-object v0
:cond_1f
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleSecondaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_12
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
.registers 10
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_c
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Object;
move-result-object v0
:goto_b
return-object v0
:cond_c
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->leaseObjectBuffer()Lcom/fasterxml/jackson/databind/util/ObjectBuffer;
move-result-object v5
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->resetAndStart()[Ljava/lang/Object;
move-result-object v0
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-object v2, v0
move v0, v1
:goto_18
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v3, v4, :cond_47
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_37
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->getNullValue()Ljava/lang/Object;
move-result-object v3
:goto_2a
array-length v4, v2
if-lt v0, v4, :cond_5a
invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v2
move v4, v1
:goto_32
add-int/lit8 v0, v4, 0x1
aput-object v3, v2, v4
goto :goto_18
:cond_37
if-nez v6, :cond_40
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v3
goto :goto_2a
:cond_40
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v3, p1, p2, v6}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v3
goto :goto_2a
:cond_47
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_untyped:Z
if-eqz v1, :cond_53
invoke-virtual {v5, v2, v0}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v0
:goto_4f
invoke-virtual {p2, v5}, Lcom/fasterxml/jackson/databind/DeserializationContext;->returnObjectBuffer(Lcom/fasterxml/jackson/databind/util/ObjectBuffer;)V
goto :goto_b
:cond_53
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementClass:Ljava/lang/Class;
invoke-virtual {v5, v2, v0, v1}, Lcom/fasterxml/jackson/databind/util/ObjectBuffer;->completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
move-result-object v0
goto :goto_4f
:cond_5a
move v4, v0
goto :goto_32
.end method
.method protected deserializeFromBase64(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)[Ljava/lang/Byte;
.registers 8
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getBase64Variant()Lcom/fasterxml/jackson/core/Base64Variant;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->getBinaryValue(Lcom/fasterxml/jackson/core/Base64Variant;)[B
move-result-object v1
array-length v0, v1
new-array v2, v0, [Ljava/lang/Byte;
const/4 v0, 0x0
array-length v3, v1
:goto_d
if-ge v0, v3, :cond_1a
aget-byte v4, v1, v0
invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;
move-result-object v4
aput-object v4, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1a
return-object v2
.end method
.method public bridge synthetic deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)[Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
return-object v0
.end method
.method public getContentDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public withDeserializer(Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne p2, v0, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_elementTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-ne p1, v0, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;->_arrayType:Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-direct {v0, v1, p2, p1}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
move-object p0, v0
goto :goto_8
.end method