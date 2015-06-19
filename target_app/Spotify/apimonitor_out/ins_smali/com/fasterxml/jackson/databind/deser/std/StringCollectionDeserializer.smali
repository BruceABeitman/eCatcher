.class public final Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "SourceFile"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.field private static final serialVersionUID:J = 0x1L
.field protected final _collectionType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p3, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-void
.end method
.method private deserializeUsingCustom(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/Collection;
.registers 7
:goto_0
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_18
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_11
const/4 v0, 0x0
:goto_d
invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_0
:cond_11
invoke-virtual {p4, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_d
:cond_18
return-object p3
.end method
.method private final handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
.registers 7
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->ACCEPT_SINGLE_VALUE_AS_ARRAY:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v1, v2, :cond_22
const/4 v0, 0x0
:goto_1e
invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
return-object p3
:cond_22
if-nez v0, :cond_29
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
goto :goto_1e
:cond_29
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
goto :goto_1e
.end method
.method public final createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
move-result-object v0
if-eqz v0, :cond_42
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, p1, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
move-object v1, v0
:goto_1c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v0, :cond_35
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_2a
:cond_2a
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->isDefaultDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Z
move-result v3
if-eqz v3, :cond_40
:goto_30
invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
move-result-object v0
return-object v0
:cond_35
instance-of v3, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v3, :cond_2a
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_2a
:cond_40
move-object v2, v0
goto :goto_30
:cond_42
move-object v1, v2
goto :goto_1c
.end method
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
check-cast p3, Ljava/util/Collection;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
move-result-object v0
return-object v0
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Collection;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
move-result-object v0
goto :goto_12
.end method
.method public final deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->isExpectedStartArrayToken()Z
move-result v0
if-nez v0, :cond_b
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->handleNonArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;)Ljava/util/Collection;
move-result-object p3
:cond_a
:goto_a
return-object p3
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-direct {p0, p1, p2, p3, v0}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->deserializeUsingCustom(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Collection;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/util/Collection;
move-result-object p3
goto :goto_a
:cond_16
:goto_16
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v0, v1, :cond_a
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_27
const/4 v0, 0x0
:goto_23
invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_27
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_parseString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/String;
move-result-object v0
goto :goto_23
.end method
.method public final deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getContentDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method protected final withResolved(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v0, p2, :cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v0, p1, :cond_9
:goto_8
return-object p0
:cond_9
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_collectionType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-direct {v0, v1, v2, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
move-object p0, v0
goto :goto_8
.end method