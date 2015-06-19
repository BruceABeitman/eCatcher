.class public Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;
.source "AsPropertyTypeDeserializer.java"
.field private static final serialVersionUID:J = 0x1L
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
.registers 6
invoke-direct/range {p0 .. p5}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;Ljava/lang/String;ZLjava/lang/Class;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
return-void
.end method
.method protected final _deserializeTypedForId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_typeIdVisible:Z
if-eqz v2, :cond_1f
if-nez p3, :cond_15
new-instance p3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
const/4 v2, 0x0
const/4 v3, 0x0
invoke-direct {p3, v2, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V
:cond_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p3, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
:cond_1f
if-eqz p3, :cond_29
invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-static {v0, p1}, Lcom/fasterxml/jackson/core/util/JsonParserSequence;->createFlattened(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/util/JsonParserSequence;
move-result-object p1
:cond_29
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected _deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 7
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_findDefaultImplDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_17
if-eqz p3, :cond_12
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object p1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:cond_12
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:cond_16
:goto_16
return-object v0
:cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_16
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_2c
invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromAny(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_16
:cond_2c
sget-object v0, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "missing property \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' that is to contain type id  (for class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->baseTypeName()Ljava/lang/String;
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
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_d
invoke-super {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsArrayTypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_c
return-object v0
:cond_d
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method
.method public deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadTypeId()Z
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeWithNativeTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_b
return-object v0
:cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_18
move-object v2, v0
move-object v0, v1
:goto_1a
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v2, v3, :cond_57
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_typePropertyName:Ljava/lang/String;
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_44
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedForId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_b
:cond_32
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->START_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_3b
invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_b
:cond_3b
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v2, :cond_18
invoke-virtual {p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_b
:cond_44
if-nez v0, :cond_4c
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
const/4 v3, 0x0
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;Z)V
:cond_4c
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
goto :goto_1a
:cond_57
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_deserializeTypedUsingDefaultImpl(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_b
.end method
.method public forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;->_property:Lcom/fasterxml/jackson/databind/BeanProperty;
if-ne p1, v0, :cond_5
:goto_4
return-object p0
:cond_5
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;-><init>(Lcom/fasterxml/jackson/databind/jsontype/impl/AsPropertyTypeDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)V
move-object p0, v0
goto :goto_4
.end method
.method public getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
.registers 2
sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
return-object v0
.end method