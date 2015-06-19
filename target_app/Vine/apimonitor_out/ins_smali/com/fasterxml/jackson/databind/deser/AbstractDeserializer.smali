.class public Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "AbstractDeserializer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x29c6e883091839e2L
.field protected final _acceptBoolean:Z
.field protected final _acceptDouble:Z
.field protected final _acceptInt:Z
.field protected final _acceptString:Z
.field protected final _backRefProperties:Ljava/util/Map;
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object v3, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_backRefProperties:Ljava/util/Map;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
const-class v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptString:Z
sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_2a
const-class v0, Ljava/lang/Boolean;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_4c
:cond_2a
move v0, v2
:goto_2b
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_39
const-class v0, Ljava/lang/Integer;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_4e
:cond_39
move v0, v2
:goto_3a
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptInt:Z
sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_48
const-class v0, Ljava/lang/Double;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_49
:cond_48
move v1, v2
:cond_49
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptDouble:Z
return-void
:cond_4c
move v0, v1
goto :goto_2b
:cond_4e
move v0, v1
goto :goto_3a
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/Map;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;-><init>()V
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_backRefProperties:Ljava/util/Map;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
const-class v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptString:Z
sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_2d
const-class v0, Ljava/lang/Boolean;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_4f
:cond_2d
move v0, v2
:goto_2e
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_3c
const-class v0, Ljava/lang/Integer;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_51
:cond_3c
move v0, v2
:goto_3d
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptInt:Z
sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-eq v3, v0, :cond_4b
const-class v0, Ljava/lang/Double;
invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_4c
:cond_4b
move v1, v2
:cond_4c
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptDouble:Z
return-void
:cond_4f
move v0, v1
goto :goto_2e
:cond_51
move v0, v1
goto :goto_3d
.end method
.method public static constructForNonPOJO(Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;)V
return-object v0
.end method
.method protected _deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
move-result-object v1
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->item:Ljava/lang/Object;
if-nez v1, :cond_31
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not resolve Object Id ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "] -- unresolved forward-reference?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_31
return-object v1
.end method
.method protected _deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z
move-result v1
if-eqz v1, :cond_4f
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_17
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptString:Z
if-eqz v0, :cond_4f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
:goto_16
return-object v0
:cond_17
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_INT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_28
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptInt:Z
if-eqz v0, :cond_4f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_16
:cond_28
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NUMBER_FLOAT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_39
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptDouble:Z
if-eqz v0, :cond_4f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_16
:cond_39
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_44
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
if-eqz v0, :cond_4f
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_16
:cond_44
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_FALSE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_4f
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
if-eqz v0, :cond_4f
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_16
:cond_4f
const/4 v0, 0x0
goto :goto_16
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "abstract types either need to be mapped to concrete types, have custom deserializer, or be instantiated with additional type information"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z
move-result v0
if-eqz v0, :cond_15
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_14
:cond_14
return-object v0
:cond_15
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_14
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_14
.end method
.method public findBackReference(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_backRefProperties:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_backRefProperties:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
goto :goto_5
.end method
.method public getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
return-object v0
.end method
.method public handledType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public isCachable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method