.class public abstract Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.super Lcom/fasterxml/jackson/databind/DeserializationContext;
.source "DefaultDeserializationContext.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected transient _objectIds:Ljava/util/LinkedHashMap;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;-><init>(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;Lcom/fasterxml/jackson/databind/deser/DeserializerCache;)V
return-void
.end method
.method public abstract createInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/InjectableValues;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method
.method public deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
const/4 v1, 0x0
if-nez p2, :cond_4
:goto_3
:cond_3
return-object v1
:cond_4
instance-of v0, p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_16
check-cast p2, Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-object v1, p2
:cond_b
:goto_b
instance-of v0, v1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
if-eqz v0, :cond_3
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3
:cond_16
instance-of v0, p2, Ljava/lang/Class;
if-nez v0, :cond_41
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "AnnotationIntrospector returned deserializer definition of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_41
check-cast p2, Ljava/lang/Class;
const-class v0, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;
if-eq p2, v0, :cond_3
const-class v0, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-eq p2, v0, :cond_3
const-class v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_76
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "AnnotationIntrospector returned Class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<JsonDeserializer>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_76
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-nez v0, :cond_8f
:goto_7e
if-nez v1, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-object v1, v0
goto/16 :goto_b
:cond_8f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->deserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
goto :goto_7e
.end method
.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
.registers 6
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->key(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator$IdKey;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;
if-nez v0, :cond_1a
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;
:cond_f
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;-><init>(Ljava/lang/Object;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;
invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_19
return-object v0
:cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_objectIds:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
if-eqz v0, :cond_f
goto :goto_19
.end method
.method public final keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 6
const/4 v1, 0x0
if-nez p2, :cond_4
:goto_3
:cond_3
return-object v1
:cond_4
instance-of v0, p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;
if-eqz v0, :cond_16
check-cast p2, Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-object v1, p2
:cond_b
:goto_b
instance-of v0, v1, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
if-eqz v0, :cond_3
move-object v0, v1
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
invoke-interface {v0, p0}, Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;->resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_3
:cond_16
instance-of v0, p2, Ljava/lang/Class;
if-nez v0, :cond_41
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "AnnotationIntrospector returned key deserializer definition of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_41
check-cast p2, Ljava/lang/Class;
const-class v0, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;
if-eq p2, v0, :cond_3
const-class v0, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-eq p2, v0, :cond_3
const-class v0, Lcom/fasterxml/jackson/databind/KeyDeserializer;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_76
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "AnnotationIntrospector returned Class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<KeyDeserializer>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_76
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-nez v0, :cond_8f
:goto_7e
if-nez v1, :cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-object v1, v0
goto/16 :goto_b
:cond_8f
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;->_config:Lcom/fasterxml/jackson/databind/DeserializationConfig;
invoke-virtual {v0, v1, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v1
goto :goto_7e
.end method
.method public abstract with(Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;)Lcom/fasterxml/jackson/databind/deser/DefaultDeserializationContext;
.end method