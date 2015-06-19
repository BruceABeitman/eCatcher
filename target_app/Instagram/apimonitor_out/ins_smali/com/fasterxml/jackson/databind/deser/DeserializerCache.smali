.class public final Lcom/fasterxml/jackson/databind/deser/DeserializerCache;
.super Ljava/lang/Object;
.source "DeserializerCache.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected final _cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
.field protected final _incompleteDeserializers:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
const/16 v1, 0x40
const/high16 v2, 0x3f40
const/4 v3, 0x2
invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Ljava/util/HashMap;
const/16 v1, 0x8
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
return-void
.end method
.method private _verifyAsClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
.registers 7
const/4 v0, 0x0
if-nez p1, :cond_5
move-object p1, v0
:goto_4
:cond_4
return-object p1
:cond_5
instance-of v1, p1, Ljava/lang/Class;
if-nez v1, :cond_36
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector."
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "() returned value of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": expected type JsonSerializer or Class<JsonSerializer> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_36
check-cast p1, Ljava/lang/Class;
if-eq p1, p3, :cond_3e
const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-ne p1, v1, :cond_4
:cond_3e
move-object p1, v0
goto :goto_4
.end method
.method private modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 11
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_f
:try_start_b
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_e
.catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_3e
move-result-object p3
:cond_f
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v1
if-eqz v1, :cond_dd
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v3, p2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v4
if-eqz v4, :cond_86
instance-of v1, p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;
if-nez v1, :cond_7e
new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Illegal key-type annotation: type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a Map(-like) type"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v1
:catch_3e
move-exception v3
new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to narrow type "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " with concrete-type annotation (value "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, "), method \'"
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, "\': "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1, v2, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
throw v4
:cond_7e
:try_start_7e
move-object v0, p3
check-cast v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-object v1, v0
invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_85
.catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_85} :catch_de
move-result-object p3
:cond_86
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
if-eqz v1, :cond_a7
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_a7
invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_a7
invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v1
if-eqz v1, :cond_a7
check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object p3
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
:cond_a7
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v3, p2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_b5
:try_start_b1
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_b4
.catch Ljava/lang/IllegalArgumentException; {:try_start_b1 .. :try_end_b4} :catch_110
move-result-object p3
:cond_b5
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_dd
invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_dd
instance-of v3, v1, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v3, :cond_142
const-string v3, "findContentDeserializer"
const-class v4, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;
invoke-direct {p0, v1, v3, v4}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_verifyAsClass(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_142
invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
:goto_d7
if-eqz v1, :cond_dd
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p3
:cond_dd
return-object p3
:catch_de
move-exception v1
new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to narrow key type "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " with key-type annotation ("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "): "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4, v2, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
throw v3
:catch_110
move-exception v3
new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to narrow content type "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " with content-type annotation ("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, "): "
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v5
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1, v2, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
throw v4
:cond_142
move-object v1, v2
goto :goto_d7
.end method
.method protected final _createAndCache2(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 8
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
:try_end_4
.catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_9
move-result-object v1
if-nez v1, :cond_14
move-object v1, v0
:goto_8
:cond_8
return-object v1
:catch_9
move-exception v1
new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/a/j;Ljava/lang/Throwable;)V
throw v2
:cond_14
instance-of v0, v1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->isCachable()Z
move-result v2
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v0, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_2c
if-eqz v2, :cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
.end method
.method protected final _createAndCacheValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
monitor-enter v1
:try_start_3
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_b
monitor-exit v1
:goto_a
return-object v0
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->size()I
move-result v2
if-lez v2, :cond_22
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_22
monitor-exit v1
goto :goto_a
:catchall_1f
move-exception v0
monitor-exit v1
:try_end_21
.catchall {:try_start_3 .. :try_end_21} :catchall_1f
throw v0
:cond_22
:try_start_22
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCache2(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_37
move-result-object v0
if-nez v2, :cond_35
:try_start_28
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->size()I
move-result v2
if-lez v2, :cond_35
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
:cond_35
monitor-exit v1
goto :goto_a
:catchall_37
move-exception v0
if-nez v2, :cond_47
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->size()I
move-result v2
if-lez v2, :cond_47
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v2}, Ljava/util/HashMap;->clear()V
:cond_47
throw v0
:try_end_48
.catchall {:try_start_28 .. :try_end_48} :catchall_1f
.end method
.method protected final _createDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 10
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v3
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z
move-result v1
if-nez v1, :cond_16
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z
move-result v1
if-nez v1, :cond_16
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z
move-result v1
if-eqz v1, :cond_1a
:cond_16
invoke-virtual {p2, v3, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p3
:cond_1a
invoke-virtual {v3, p3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
if-eqz v2, :cond_2a
move-object v1, v2
:goto_29
return-object v1
:cond_2a
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-direct {p0, p1, v2, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-eq v0, p3, :cond_39
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
move-object p3, v0
:cond_39
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findPOJOBuilder()Ljava/lang/Class;
move-result-object v2
if-eqz v2, :cond_44
invoke-virtual {p2, p1, p3, v1, v2}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createBuilderBasedDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
goto :goto_29
:cond_44
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDeserializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v4
if-nez v4, :cond_4f
invoke-virtual {p0, p1, p2, p3, v1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer2(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
goto :goto_29
:cond_4f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v2
invoke-interface {v4, v2}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v5
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v5, v2}, Lcom/fasterxml/jackson/databind/JavaType;->hasRawClass(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_65
invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
:cond_65
new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
invoke-virtual {p0, p1, p2, v5, v1}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createDeserializer2(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
invoke-direct {v2, v4, v5, v1}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
move-object v1, v2
goto :goto_29
.end method
.method protected final _createDeserializer2(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v1
if-eqz v1, :cond_65
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isArrayType()Z
move-result v1
if-eqz v1, :cond_22
check-cast p3, Lcom/fasterxml/jackson/databind/type/ArrayType;
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_22
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isMapLikeType()Z
move-result v1
if-eqz v1, :cond_3c
check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->isTrueMapType()Z
move-result v0
if-eqz v0, :cond_37
check-cast p3, Lcom/fasterxml/jackson/databind/type/MapType;
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_37
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_3c
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isCollectionLikeType()Z
move-result v1
if-eqz v1, :cond_65
const/4 v1, 0x0
invoke-virtual {p4, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v1
if-eqz v1, :cond_51
invoke-virtual {v1}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->OBJECT:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-eq v1, v2, :cond_65
:cond_51
check-cast p3, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->isTrueCollectionType()Z
move-result v0
if-eqz v0, :cond_60
check-cast p3, Lcom/fasterxml/jackson/databind/type/CollectionType;
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_60
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_65
const-class v1, Lcom/fasterxml/jackson/databind/JsonNode;
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_76
invoke-virtual {p2, v0, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_76
invoke-virtual {p2, p1, p3, p4}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createBeanDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
.end method
.method protected final _findCachedDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Null JavaType passed"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method protected final _handleUnknownKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not find a (Map) Key deserializer for type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected final _handleUnknownValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->isConcrete(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_1f
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not find a Value deserializer for abstract type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
new-instance v0, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not find a Value deserializer for type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final cachedDeserializersCount()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I
move-result v0
return v0
.end method
.method protected final findConverter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/util/Converter;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v0
goto :goto_b
.end method
.method protected final findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findConverter(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v1
if-nez v1, :cond_7
:goto_6
return-object p3
:cond_7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
invoke-direct {v0, v1, v2, p3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
move-object p3, v0
goto :goto_6
.end method
.method protected final findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_b
.end method
.method public final findKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 6
invoke-virtual {p2, p1, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;->createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v1
if-nez v1, :cond_b
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_handleUnknownKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v1
:cond_a
:goto_a
return-object v1
:cond_b
instance-of v0, v1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
if-eqz v0, :cond_a
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_a
.end method
.method public final findValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 5
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-object v0
:cond_7
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCacheValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-nez v0, :cond_6
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_handleUnknownValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_6
.end method
.method public final flushCachedDeserializers()V
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_cachedDeserializers:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method
.method public final hasValueDeserializerFor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Z
.registers 6
const/4 v0, 0x0
invoke-virtual {p0, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_findCachedDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
if-nez v1, :cond_b
:try_start_7
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_createAndCacheValueDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
:try_end_a
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_f
move-result-object v1
:cond_b
if-eqz v1, :cond_e
const/4 v0, 0x1
:cond_e
:goto_e
return v0
:catch_f
move-exception v1
goto :goto_e
.end method
.method final writeReplace()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DeserializerCache;->_incompleteDeserializers:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-object p0
.end method