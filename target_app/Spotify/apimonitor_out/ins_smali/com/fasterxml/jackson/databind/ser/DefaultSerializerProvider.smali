.class public abstract Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.super Lcom/fasterxml/jackson/databind/SerializerProvider;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected transient _objectIdGenerators:Ljava/util/ArrayList;
.field protected transient _seenObjectIds:Ljava/util/IdentityHashMap;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>()V
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/SerializerProvider;-><init>(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)V
return-void
.end method
.method public abstract createInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/ser/SerializerFactory;)Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;
.end method
.method public findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/IdentityHashMap;
if-nez v0, :cond_31
new-instance v0, Ljava/util/IdentityHashMap;
invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/IdentityHashMap;
:cond_b
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;
if-nez v0, :cond_3c
new-instance v0, Ljava/util/ArrayList;
const/16 v2, 0x8
invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;
move-object v0, v1
:goto_1a
:cond_1a
if-nez v0, :cond_25
invoke-virtual {p2, p0}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->newForSerialization(Ljava/lang/Object;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_25
new-instance v1, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;-><init>(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/IdentityHashMap;
invoke-virtual {v0, p1, v1}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object v0, v1
:goto_30
return-object v0
:cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_seenObjectIds:Ljava/util/IdentityHashMap;
invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/ser/impl/WritableObjectId;
if-eqz v0, :cond_b
goto :goto_30
:cond_3c
const/4 v0, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
move v2, v0
:goto_44
if-ge v2, v3, :cond_58
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_objectIdGenerators:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->canUseFor(Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Z
move-result v4
if-nez v4, :cond_1a
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_44
:cond_58
move-object v0, v1
goto :goto_1a
.end method
.method public objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
.registers 6
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-nez v0, :cond_24
const/4 v0, 0x0
:goto_d
if-nez v0, :cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
:cond_1b
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;->forScope(Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
return-object v0
:cond_24
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v0, v2, p1, v1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
goto :goto_d
.end method
.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;)V
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-nez p2, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
:goto_8
:try_start_8
invoke-virtual {v1, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
if-eqz v0, :cond_10
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
:cond_10
:try_end_10
.catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_51
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_10} :catch_53
return-void
:cond_11
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {p0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Ljava/lang/Class;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getRootName()Ljava/lang/String;
move-result-object v3
if-nez v3, :cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_7e
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, v3, v4}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
move-object v1, v2
goto :goto_8
:cond_40
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v4
if-nez v4, :cond_48
move-object v1, v2
goto :goto_8
:cond_48
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V
move v0, v1
move-object v1, v2
goto :goto_8
:catch_51
move-exception v0
throw v0
:catch_53
move-exception v0
move-object v1, v0
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_78
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "[no message for "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_78
new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;
invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:cond_7e
move-object v1, v2
goto :goto_8
.end method
.method public serializeValue(Lcom/fasterxml/jackson/core/JsonGenerator;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 8
if-nez p2, :cond_10
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->getDefaultNullValueSerializer()Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object p4
const/4 v0, 0x0
:goto_7
:try_start_7
:cond_7
invoke-virtual {p4, p2, p1, p0}, Lcom/fasterxml/jackson/databind/JsonSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Lcom/fasterxml/jackson/databind/SerializerProvider;)V
if-eqz v0, :cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V
:cond_f
:try_end_f
.catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_44
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_46
return-void
:cond_10
if-eqz p3, :cond_23
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_23
invoke-virtual {p0, p2, p3}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_reportIncompatibleRootType(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JavaType;)V
:cond_23
if-nez p4, :cond_2b
const/4 v0, 0x1
const/4 v1, 0x0
invoke-virtual {p0, p3, v0, v1}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->findTypedValueSerializer(Lcom/fasterxml/jackson/databind/JavaType;ZLcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object p4
:cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRAP_ROOT_VALUE:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v0
if-eqz v0, :cond_7
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_rootNames:Lcom/fasterxml/jackson/databind/util/RootNameLookup;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, p3, v2}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Lcom/fasterxml/jackson/core/SerializableString;)V
goto :goto_7
:catch_44
move-exception v0
throw v0
:catch_46
move-exception v0
move-object v1, v0
invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_6b
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "[no message for "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "]"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_6b
new-instance v2, Lcom/fasterxml/jackson/databind/JsonMappingException;
invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
.end method
.method public serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 6
const/4 v0, 0x0
if-nez p2, :cond_4
:goto_3
:cond_3
return-object v0
:cond_4
instance-of v1, p2, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v1, :cond_f
check-cast p2, Lcom/fasterxml/jackson/databind/JsonSerializer;
:goto_a
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_handleResolvable(Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_3
:cond_f
instance-of v1, p2, Ljava/lang/Class;
if-nez v1, :cond_36
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned serializer definition of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type JsonSerializer or Class<JsonSerializer> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_36
check-cast p2, Ljava/lang/Class;
const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;
if-eq p2, v1, :cond_3
const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-eq p2, v1, :cond_3
const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_67
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<JsonSerializer>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_67
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v1
if-nez v1, :cond_7f
:goto_6f
if-nez v0, :cond_86
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
move-object p2, v0
goto :goto_a
:cond_7f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/DefaultSerializerProvider;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1, v0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->serializerInstance(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
goto :goto_6f
:cond_86
move-object p2, v0
goto :goto_a
.end method