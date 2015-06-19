.class public Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x1L
.field protected final _buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
.registers 11
invoke-direct/range {p0 .. p7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getBuildMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not use Object Id with Builder-based deserialization (type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ")"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_2c
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Ljava/util/HashSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-void
.end method
.method private final _vanillaDeserializeHandleUnknown(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_1f
:try_start_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a
goto :goto_f
:catch_1a
move-exception v0
invoke-virtual {p0, v0, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_f
:cond_1f
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_f
.end method
.method private final vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_2e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
if-eqz v2, :cond_2a
:try_start_1d
invoke-virtual {v2, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_20
.catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_25
move-result-object v0
:goto_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_6
:catch_25
move-exception v2
invoke-virtual {p0, v2, v0, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_21
:cond_2a
invoke-direct {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_vanillaDeserializeHandleUnknown(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_21
:cond_2e
return-object v0
.end method
.method protected final _deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v0, :cond_7
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz v0, :cond_10
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
:cond_f
:goto_f
return-object p3
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
if-eqz v0, :cond_19
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
goto :goto_f
:cond_19
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_needViewProcesing:Z
if-eqz v0, :cond_28
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_28
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object p3
goto :goto_f
:cond_28
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_34
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_34
:cond_34
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_55
:try_start_47
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4a} :catch_50
move-result-object p3
:goto_4b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_34
:catch_50
move-exception v1
invoke-virtual {p0, v1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_4b
:cond_55
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v1, :cond_65
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_65
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_4b
:cond_65
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v1, :cond_6f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_4b
:cond_6f
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_4b
.end method
.method protected final _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 10
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v3, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
move-object v1, v0
move-object v0, v2
:goto_f
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v5, :cond_a8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-eqz v5, :cond_60
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v5
invoke-virtual {v4, v5, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_50
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:try_start_31
invoke-virtual {v3, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_34
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_46
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_55
invoke-virtual {p0, p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v2
:goto_45
return-object v2
:catch_46
move-exception v5
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {p0, v5, v6, v1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_50
:goto_50
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
goto :goto_f
:cond_55
if-eqz v0, :cond_cd
invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_5b
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
goto :goto_45
:cond_60
invoke-virtual {v4, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z
move-result v5
if-nez v5, :cond_50
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v5
if-eqz v5, :cond_76
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v4, v5, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
goto :goto_50
:cond_76
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v5, :cond_86
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v5, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_86
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_50
:cond_86
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v5, :cond_96
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v6, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v4, v5, v1, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_50
:cond_96
if-nez v0, :cond_a1
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v5
invoke-direct {v0, v5}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
:cond_a1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_50
:try_start_a8
:cond_a8
invoke-virtual {v3, p2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_ab
.catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_ab} :catch_bf
move-result-object v1
if-eqz v0, :cond_ca
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_c4
invoke-virtual {p0, v2, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v2
goto :goto_45
:catch_bf
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_45
:cond_c4
invoke-virtual {p0, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v2
goto/16 :goto_45
:cond_ca
move-object v2, v1
goto/16 :goto_45
:cond_cd
move-object v0, v1
goto :goto_5b
.end method
.method protected bridge synthetic asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayBuilderDeserializer;
move-result-object v0
return-object v0
.end method
.method protected asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayBuilderDeserializer;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->getPropertiesInInsertionOrder()[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayBuilderDeserializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-direct {v1, p0, v0, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanAsArrayBuilderDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)V
return-object v1
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_22
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_vanillaProcessing:Z
if-eqz v1, :cond_19
invoke-direct {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->vanillaDeserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/core/JsonToken;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_18
return-object v0
:cond_19
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:cond_22
sget-object v1, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonToken:[I
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->ordinal()I
move-result v0
aget v0, v1, v0
packed-switch v0, :pswitch_data_72
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->getBeanClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_36
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_3f
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_48
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_51
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getEmbeddedObject()Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_56
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_5f
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:pswitch_68
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
nop
:pswitch_data_72
.packed-switch 0x1
:pswitch_36
:pswitch_3f
:pswitch_48
:pswitch_51
:pswitch_56
:pswitch_56
:pswitch_5f
:pswitch_68
:pswitch_68
.end packed-switch
.end method
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_1c
:try_start_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_17
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18
return-object v0
:catch_18
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->getBeanClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_1f
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_1f
:goto_1f
return-object v0
:cond_20
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_30
const/4 v0, 0x1
:goto_29
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
move-result-object v0
goto :goto_1f
:cond_30
const/4 v0, 0x0
goto :goto_29
.end method
.method public deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_56
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:cond_1f
:goto_1f
return-object v0
:pswitch_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromDouble()Z
move-result v0
if-nez v0, :cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_1f
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_1f
:cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v1
invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
move-result-object v0
goto :goto_1f
:cond_4b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->getBeanClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "no suitable creator method found to deserialize from JSON floating-point number"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_data_56
.packed-switch 0x3
:pswitch_20
:pswitch_20
.end packed-switch
.end method
.method public deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
:cond_8
return-object v0
:cond_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_92
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_86
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:pswitch_30
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z
move-result v0
if-nez v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
move-result-object v0
goto :goto_8
:pswitch_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z
move-result v0
if-nez v0, :cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
move-result-object v0
goto :goto_8
:cond_86
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->getBeanClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "no suitable creator method found to deserialize from JSON integer number"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
nop
:pswitch_data_92
.packed-switch 0x1
:pswitch_30
:pswitch_5b
.end packed-switch
.end method
.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_nonStandardCreation:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz v0, :cond_d
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_c
:cond_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
if-eqz v0, :cond_16
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_16
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_28
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_28
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_needViewProcesing:Z
if-eqz v1, :cond_3e
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_3e
invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:catch_37
move-exception v1
invoke-virtual {p0, v1, v0, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:goto_3b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
:cond_3e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_5a
:try_start_55
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_58
.catch Ljava/lang/Exception; {:try_start_55 .. :try_end_58} :catch_37
move-result-object v0
goto :goto_3b
:cond_5a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v1, :cond_6a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_6a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_3b
:cond_6a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v1, :cond_79
:try_start_6e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1, p1, p2, v0, v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_73
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_73} :catch_74
goto :goto_3b
:catch_74
move-exception v1
invoke-virtual {p0, v1, v0, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3b
:cond_79
invoke-virtual {p0, p1, p2, v0, v2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3b
.end method
.method protected deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_1a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_10
:cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z
move-result v0
if-eqz v0, :cond_3e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Can not instantiate abstract type "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (need to add/enable type information?)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_3e
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "No suitable constructor found for type "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method
.method protected deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Deserialization with Builder, External type id, @JsonCreator not yet implemented"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v2
new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_18
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v4, :cond_b6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_7a
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v0
invoke-virtual {v2, v0, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:try_start_3b
invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_3e
.catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_4e
move-result-object v1
:goto_3f
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v2, :cond_5d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_3f
:catch_4e
move-exception v0
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v5
invoke-virtual {p0, v0, v5, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:goto_58
:cond_58
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_18
:cond_5d
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
if-eq v0, v2, :cond_73
const-string v0, "Can not create polymorphic instances with unwrapped values"
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_73
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_79
return-object v0
:cond_7a
invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->readIdProperty(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_58
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_90
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v2, v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/Object;)V
goto :goto_58
:cond_90
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_58
:cond_a0
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_58
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v5, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v5
invoke-virtual {v2, v0, v4, v5}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferAnyProperty(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_58
:try_start_b6
:cond_b6
invoke-virtual {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_c1
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v1, p1, p2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
goto :goto_79
:catch_c1
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
const/4 v0, 0x0
goto :goto_79
.end method
.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeUsingPropertyBasedWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method
.method protected deserializeWithExternalTypeId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_needViewProcesing:Z
if-eqz v0, :cond_34
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v0
:goto_8
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->start()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
move-result-object v2
:goto_e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v3, :cond_69
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_40
if-eqz v0, :cond_36
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v4
if-nez v4, :cond_36
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_30
:cond_30
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_e
:cond_34
const/4 v0, 0x0
goto :goto_8
:cond_36
:try_start_36
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_39
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_3b
move-result-object p3
goto :goto_30
:catch_3b
move-exception v1
invoke-virtual {p0, v1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_30
:cond_40
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v1, :cond_50
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_50
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_30
:cond_50
invoke-virtual {v2, p1, p2, v3, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->handlePropertyValue(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_30
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v1, :cond_65
:try_start_5a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_5f
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5f} :catch_60
goto :goto_30
:catch_60
move-exception v1
invoke-virtual {p0, v1, p3, v3, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_30
:cond_65
invoke-virtual {p0, p1, p2, p3, v3}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_30
:cond_69
invoke-virtual {v2, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;->complete(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method protected deserializeWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:goto_10
return-object v1
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_1a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserializeUsingPropertyBasedWithUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
goto :goto_10
:cond_1a
new-instance v3, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v0
invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v0, :cond_33
invoke-virtual {p0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_33
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_needViewProcesing:Z
if-eqz v0, :cond_61
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v0
:goto_3b
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v2
sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v2, v4, :cond_92
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v2
if-eqz v2, :cond_6d
if-eqz v0, :cond_63
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v5
if-nez v5, :cond_63
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_5d
:cond_5d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_3b
:cond_61
const/4 v0, 0x0
goto :goto_3b
:try_start_63
:cond_63
invoke-virtual {v2, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_66
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_66} :catch_68
move-result-object v1
goto :goto_5d
:catch_68
move-exception v2
invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_5d
:cond_6d
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v2, :cond_7d
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_7d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_5d
:cond_7d
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v3, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v2, :cond_5d
:try_start_87
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v2, p1, p2, v1, v4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_8c
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8c} :catch_8d
goto :goto_5d
:catch_8d
move-exception v2
invoke-virtual {p0, v2, v1, v4, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_5d
:cond_92
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
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
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCodec()Lcom/fasterxml/jackson/core/ObjectCodec;
move-result-object v1
invoke-direct {v2, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/ObjectCodec;)V
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeStartObject()V
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_needViewProcesing:Z
if-eqz v1, :cond_43
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getActiveView()Ljava/lang/Class;
move-result-object v1
:goto_20
sget-object v3, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v3, :cond_6f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
if-eqz v3, :cond_4f
if-eqz v1, :cond_45
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->visibleInView(Ljava/lang/Class;)Z
move-result v4
if-nez v4, :cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:cond_3e
:goto_3e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
goto :goto_20
:cond_43
const/4 v1, 0x0
goto :goto_20
:try_start_45
:cond_45
invoke-virtual {v3, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_48
.catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_4a
move-result-object p3
goto :goto_3e
:catch_4a
move-exception v3
invoke-virtual {p0, v3, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3e
:cond_4f
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v3, :cond_5f
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_3e
:cond_5f
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v3, :cond_3e
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v3, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_3e
:cond_6f
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-virtual {v0, p1, p2, p3, v2}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->processUnwrapped(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
return-object p3
.end method
.method protected final deserializeWithView(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
:goto_4
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_4d
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-eqz v1, :cond_2f
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
invoke-virtual {v1, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeSetAndReturn(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_28
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_28} :catch_2a
move-result-object p3
goto :goto_20
:catch_2a
move-exception v1
invoke-virtual {p0, v1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_20
:cond_2f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
if-eqz v1, :cond_3f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
goto :goto_20
:cond_3f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v1, :cond_49
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_20
:cond_49
invoke-virtual {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_20
:cond_4d
return-object p3
.end method
.method protected final finishBuild(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
:try_start_0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e
move-result-object v0
:goto_d
return-object v0
:catch_e
move-exception v0
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
const/4 v0, 0x0
goto :goto_d
.end method
.method protected handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 7
invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->_findSubclassDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
if-eqz v1, :cond_1d
if-eqz p4, :cond_2c
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_16
if-eqz p1, :cond_1c
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_1c
:cond_1c
return-object v0
:cond_1d
if-eqz p4, :cond_2a
invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_23
if-eqz p1, :cond_1c
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_1c
:cond_2a
move-object v0, p3
goto :goto_23
:cond_2c
move-object v0, p3
goto :goto_16
.end method
.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
return-object v0
.end method
.method public bridge synthetic withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
move-result-object v0
return-object v0
.end method
.method public withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Ljava/util/HashSet;)V
return-object v0
.end method
.method public bridge synthetic withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
move-result-object v0
return-object v0
.end method
.method public withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
return-object v0
.end method