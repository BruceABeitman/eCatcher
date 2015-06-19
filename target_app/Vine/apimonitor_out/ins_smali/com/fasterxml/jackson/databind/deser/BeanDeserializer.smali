.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.source "BeanDeserializer.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V
.registers 3
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
.registers 8
invoke-direct/range {p0 .. p7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
return-void
.end method
.method private final vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_2d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
if-eqz v2, :cond_29
:try_start_1d
invoke-virtual {v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:goto_20
:try_end_20
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_6
:catch_24
move-exception v2
invoke-virtual {p0, v2, v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_20
:cond_29
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_20
:cond_2d
return-object v0
.end method
.method protected final _deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
.registers 6
if-nez p3, :cond_7
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_missingToken(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_6
return-object v0
:cond_7
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {p3}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_50
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_1b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_20
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_25
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_2a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_2f
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_34
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_39
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_vanillaProcessing:Z
if-eqz v0, :cond_42
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:cond_42
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_4b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:cond_4b
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_6
:pswitch_data_50
.packed-switch 0x1
:pswitch_1b
:pswitch_20
:pswitch_25
:pswitch_2a
:pswitch_2f
:pswitch_2f
:pswitch_34
:pswitch_39
:pswitch_39
.end packed-switch
.end method
.method protected _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 10
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
move-object v1, v0
move-object v0, v2
:goto_f
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v5, :cond_a9
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-eqz v5, :cond_5c
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v5
invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_62
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:try_start_31
invoke-virtual {v3, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_34
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_46
move-result-object v2
:goto_35
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
if-eq v1, v3, :cond_51
invoke-virtual {p0, p1, p2, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_45
return-object v0
:catch_46
move-exception v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {p0, v3, v4, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_35
:cond_51
if-eqz v0, :cond_57
invoke-virtual {p0, p2, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v2
:cond_57
invoke-virtual {p0, p1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_45
:cond_5c
invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_67
:cond_62
:goto_62
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_f
:cond_67
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-eqz v5, :cond_77
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v4, v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
goto :goto_62
:cond_77
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v5, :cond_8b
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_8b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;
move-result-object v5
invoke-virtual {p0, p1, p2, v5, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_62
:cond_8b
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v5, :cond_9b
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v6, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v4, v5, v1, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_62
:cond_9b
if-nez v0, :cond_a2
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
:cond_a2
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_62
:try_start_a9
:cond_a9
invoke-virtual {v3, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_ac
.catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_ac} :catch_c0
move-result-object v1
:goto_ad
if-eqz v0, :cond_cc
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_c6
invoke-virtual {p0, v2, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_45
:catch_c0
move-exception v1
invoke-virtual {p0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
move-object v1, v2
goto :goto_ad
:cond_c6
invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto/16 :goto_45
:cond_cc
move-object v0, v1
goto/16 :goto_45
.end method
.method protected _missingToken(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->endOfInputException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;
invoke-direct {v1, p0, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-object v1
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_26
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_vanillaProcessing:Z
if-eqz v0, :cond_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
move-result-object v0
:goto_14
return-object v0
:cond_15
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_21
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_14
:cond_21
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_14
:cond_26
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_deserializeOther(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
move-result-object v0
goto :goto_14
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v0, :cond_7
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz v0, :cond_10
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
:cond_f
:goto_f
return-object p3
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
if-eqz v0, :cond_19
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
goto :goto_f
:cond_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_25
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z
if-eqz v1, :cond_34
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_34
invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object p3
goto :goto_f
:goto_34
:cond_34
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_54
:try_start_47
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:goto_4a
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_4f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_34
:catch_4f
move-exception v1
invoke-virtual {p0, v1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_4a
:cond_54
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_4a
.end method
.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_nonStandardCreation:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz v0, :cond_d
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_c
:cond_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
if-eqz v0, :cond_16
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_16
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z
move-result v1
if-eqz v1, :cond_30
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_30
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_30
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_37
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_37
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z
if-eqz v1, :cond_46
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_46
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_46
:goto_46
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
if-eqz v2, :cond_69
:try_start_5d
invoke-virtual {v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_64
:goto_60
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_46
:catch_64
move-exception v2
invoke-virtual {p0, v2, v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_60
:cond_69
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_60
.end method
.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 11
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v4
new-instance v5, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_1b
sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v6, :cond_c0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v3, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_7f
invoke-virtual {v2, p1, p2, v6, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_37
:goto_32
:cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_1b
:cond_37
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v0
invoke-virtual {v4, v0, v7}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:try_start_49
invoke-virtual {v3, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4c} :catch_5c
move-result-object v1
:goto_4d
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v3, :cond_67
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v5, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_4d
:catch_5c
move-exception v0
iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v7
invoke-virtual {p0, v0, v7, v6, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_32
:cond_67
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
if-eq v0, v3, :cond_7a
const-string v0, "Can not create polymorphic instances with unwrapped values"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_7a
invoke-virtual {v2, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_7e
return-object v0
:cond_7f
invoke-virtual {v4, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_95
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v4, v0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
goto :goto_32
:cond_95
invoke-virtual {v2, p1, p2, v6, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_af
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_af
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, p1, p2, v0, v6}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_32
:cond_af
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_32
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v7, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v7
invoke-virtual {v4, v0, v6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
goto/16 :goto_32
:try_start_c0
:cond_c0
invoke-virtual {v2, p1, p2, v4, v3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;)Ljava/lang/Object;
:try_end_c3
.catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c3} :catch_c5
move-result-object v0
goto :goto_7e
:catch_c5
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
move-object v0, v1
goto :goto_7e
.end method
.method protected deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v2
new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_14
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v4, :cond_b9
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_79
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v0
invoke-virtual {v2, v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_54
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:try_start_37
invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_4a
move-result-object v1
:goto_3b
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_59
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_3b
:catch_4a
move-exception v0
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {p0, v0, v5, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_54
:goto_54
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_14
:cond_59
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
if-eq v0, v2, :cond_72
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->close()V
const-string v0, "Can not create polymorphic instances with unwrapped values"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_72
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_78
return-object v0
:cond_79
invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_54
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_8f
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
goto :goto_54
:cond_8f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_a3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a3
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handledType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, p1, p2, v0, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_54
:cond_a3
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_54
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v2, v0, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_54
:try_start_b9
:cond_b9
invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_bc
.catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_bc} :catch_c4
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v1, p1, p2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_78
:catch_c4
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
const/4 v0, 0x0
goto :goto_78
.end method
.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method
.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z
if-eqz v0, :cond_41
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v0
:goto_8
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
move-result-object v2
:goto_e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v3, :cond_75
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_4c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
invoke-virtual {v4}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z
move-result v4
if-eqz v4, :cond_32
invoke-virtual {v2, p1, p2, v3, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handleTypePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
:cond_32
if-eqz v0, :cond_43
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v4
if-nez v4, :cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_3d
:cond_3d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_e
:cond_41
const/4 v0, 0x0
goto :goto_8
:try_start_43
:cond_43
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
goto :goto_3d
:catch_47
move-exception v1
invoke-virtual {p0, v1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3d
:cond_4c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v1, :cond_5c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3d
:cond_5c
invoke-virtual {v2, p1, p2, v3, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_3d
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v1, :cond_71
:try_start_66
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_6b
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_6c
goto :goto_3d
:catch_6c
move-exception v1
invoke-virtual {p0, v1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3d
:cond_71
invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3d
:cond_75
invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_1a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_10
:cond_1a
new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v0, :cond_2f
invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_2f
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z
if-eqz v0, :cond_5d
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v0
:goto_37
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v4, :cond_8d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
if-eqz v2, :cond_68
if-eqz v0, :cond_5f
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v5
if-nez v5, :cond_5f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:cond_59
:goto_59
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_37
:cond_5d
const/4 v0, 0x0
goto :goto_37
:cond_5f
:try_start_5f
invoke-virtual {v2, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:try_end_62
.catch Ljava/lang/Exception; {:try_start_5f .. :try_end_62} :catch_63
goto :goto_59
:catch_63
move-exception v2
invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_59
:cond_68
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v2, :cond_78
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_78
invoke-virtual {p0, p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_59
:cond_78
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v2, :cond_59
:try_start_82
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v2, p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_87
.catch Ljava/lang/Exception; {:try_start_82 .. :try_end_87} :catch_88
goto :goto_59
:catch_88
move-exception v2
invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_59
:cond_8d
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-object v0, v1
goto/16 :goto_10
.end method
.method protected deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:cond_c
new-instance v2, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_needViewProcesing:Z
if-eqz v1, :cond_3f
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v1
:goto_1c
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v3, :cond_6a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v3, :cond_4a
if-eqz v1, :cond_41
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v4
if-nez v4, :cond_41
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:cond_3a
:goto_3a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_1c
:cond_3f
const/4 v1, 0x0
goto :goto_1c
:try_start_41
:cond_41
invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:try_end_44
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_44} :catch_45
goto :goto_3a
:catch_45
move-exception v3
invoke-virtual {p0, v3, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3a
:cond_4a
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v3, :cond_5a
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5a
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3a
:cond_5a
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v3, :cond_3a
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v3, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3a
:cond_6a
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
return-object p3
.end method
.method protected final deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_4
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_2e
invoke-virtual {v1, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_25
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_20
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_4
:cond_25
:try_start_25
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_29
goto :goto_20
:catch_29
move-exception v1
invoke-virtual {p0, v1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_20
:cond_2e
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_20
:cond_32
return-object p3
.end method
.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
if-eq v0, v1, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
move-object p0, v0
goto :goto_8
.end method
.method public withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
return-object v0
.end method
.method public bridge synthetic withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
move-result-object v0
return-object v0
.end method
.method public withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
return-object v0
.end method
.method public bridge synthetic withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
move-result-object v0
return-object v0
.end method