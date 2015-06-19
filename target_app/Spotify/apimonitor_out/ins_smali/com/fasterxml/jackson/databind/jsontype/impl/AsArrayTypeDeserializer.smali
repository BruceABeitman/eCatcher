.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x4a2f47f9ad71b962L
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/TypeDeserializerBase;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-void
.end method
.method private final _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_locateTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_typeIdVisible:Z
if-eqz v3, :cond_34
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v3
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v3, v4, :cond_34
new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
const/4 v4, 0x0
invoke-direct {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v1
invoke-static {v1, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
move-result-object p1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:cond_34
invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
if-eqz v0, :cond_4b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v2, :cond_4b
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
const-string v1, "expected closing END_ARRAY after type information and deserialized value"
invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_4b
return-object v1
.end method
.method protected final _locateTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromBaseType()Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "need JSON Array to contain As.WRAPPER_ARRAY type information for class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_3b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_10
:cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_defaultImpl:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_46
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_idResolver:Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
invoke-interface {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->idFromBaseType()Ljava/lang/String;
move-result-object v0
goto :goto_10
:cond_46
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "need JSON String that contains type id (for subtype of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->baseTypeName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p2, p1, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->wrongTokenException(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonToken;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeTypedFromScalar(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
move-object p0, v0
goto :goto_4
.end method
.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->WRAPPER_ARRAY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-object v0
.end method