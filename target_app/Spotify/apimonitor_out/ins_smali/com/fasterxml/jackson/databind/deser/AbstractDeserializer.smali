.class public Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
.super Lcom/fasterxml/jackson/databind/JsonDeserializer;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x29c6e883091839e2L
.field protected final _acceptBoolean:Z
.field protected final _acceptDouble:Z
.field protected final _acceptInt:Z
.field protected final _acceptString:Z
.field protected final _backRefProperties:Ljava/util/Map;
.field protected final _baseType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
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
.method protected _deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->deserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
move-result-object v1
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->item:Ljava/lang/Object;
if-nez v1, :cond_2f
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Could not resolve Object Id ["
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "] -- unresolved forward-reference?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_2f
return-object v1
.end method
.method protected _deserializeIfNatural(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
sget-object v0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_42
:cond_f
const/4 v0, 0x0
:goto_10
return-object v0
:pswitch_11
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptString:Z
if-eqz v0, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v0
goto :goto_10
:pswitch_1a
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptInt:Z
if-eqz v0, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
goto :goto_10
:pswitch_27
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptDouble:Z
if-eqz v0, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
goto :goto_10
:pswitch_34
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
if-eqz v0, :cond_f
sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
goto :goto_10
:pswitch_3b
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;->_acceptBoolean:Z
if-eqz v0, :cond_f
sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
goto :goto_10
:pswitch_data_42
.packed-switch 0x1
:pswitch_11
:pswitch_1a
:pswitch_27
:pswitch_34
:pswitch_3b
.end packed-switch
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
.method public isCachable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method