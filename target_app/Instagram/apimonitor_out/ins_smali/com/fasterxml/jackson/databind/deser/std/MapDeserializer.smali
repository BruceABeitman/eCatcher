.class public Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;
.source "MapDeserializer.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.field private static final serialVersionUID:J = -0x2ee3642d0404d830L
.field protected _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _hasDefaultCreator:Z
.field protected _ignorableProperties:Ljava/util/HashSet;
.field protected final _keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
.field protected final _mapType:Lcom/fasterxml/jackson/databind/JavaType;
.field protected _propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
.field protected _standardStringKey:Z
.field protected final _valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.field protected final _valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
.registers 8
const/4 v1, 0x0
const-class v0, Ljava/util/Map;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;)V
.registers 3
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueClass:Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/util/HashSet;)V
.registers 7
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueClass:Ljava/lang/Class;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/ContainerDeserializerBase;-><init>(Ljava/lang/Class;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
return-void
.end method
.method public _deserializeUsingCreator(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
.registers 11
const/4 v1, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {v2, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->startBuilding(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v4, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v4, :cond_13
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_13
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
:goto_17
sget-object v6, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v6, :cond_83
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v6
iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
if-eqz v7, :cond_37
iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
invoke-virtual {v7, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_37
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
:goto_32
:cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_17
:cond_37
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_64
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v6
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getCreatorIndex()I
move-result v0
invoke-virtual {v3, v0, v6}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->assignParameter(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
:try_start_4e
invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_end_54
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_54} :catch_58
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
:goto_57
return-object v0
:catch_58
move-exception v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
move-object v0, v1
goto :goto_57
:cond_64
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
invoke-virtual {v7, v0, p2}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v7
sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v6, v0, :cond_77
move-object v0, v1
:goto_73
invoke-virtual {v3, v7, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;->bufferMapProperty(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_32
:cond_77
if-nez v5, :cond_7e
invoke-virtual {v4, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_73
:cond_7e
invoke-virtual {v4, p1, p2, v5}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
goto :goto_73
:cond_83
:try_start_83
invoke-virtual {v2, p2, v3}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->build(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/impl/PropertyValueBuffer;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_end_89
.catch Ljava/lang/Exception; {:try_start_83 .. :try_end_89} :catch_8a
goto :goto_57
:catch_8a
move-exception v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0, v0, v2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
move-object v0, v1
goto :goto_57
.end method
.method protected final _isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
.registers 6
const/4 v0, 0x1
if-nez p2, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
if-eqz v1, :cond_3
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
const-class v2, Ljava/lang/String;
if-eq v1, v2, :cond_16
const-class v2, Ljava/lang/Object;
if-ne v1, v2, :cond_1c
:cond_16
invoke-virtual {p0, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->isDefaultKeyDeserializer(Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
move-result v1
if-nez v1, :cond_3
:cond_1c
const/4 v0, 0x0
goto :goto_3
.end method
.method protected final _readAndBind(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
.registers 11
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
:goto_12
sget-object v4, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v4, :cond_4b
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0, p2}, Lcom/fasterxml/jackson/databind/KeyDeserializer;->deserializeKey(Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v5
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
if-eqz v6, :cond_36
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_36
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
:goto_31
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_12
:cond_36
sget-object v0, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v5, v0, :cond_3f
const/4 v0, 0x0
:goto_3b
invoke-interface {p3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_31
:cond_3f
if-nez v3, :cond_46
invoke-virtual {v2, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_3b
:cond_46
invoke-virtual {v2, p1, p2, v3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
goto :goto_3b
:cond_4b
return-void
.end method
.method protected final _readAndBindStringMap(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
.registers 9
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_c
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
:cond_c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
:goto_10
sget-object v3, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-ne v0, v3, :cond_45
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
if-eqz v4, :cond_30
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_30
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;
:goto_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
goto :goto_10
:cond_30
sget-object v4, Lcom/fasterxml/jackson/a/r;->m:Lcom/fasterxml/jackson/a/r;
if-ne v0, v4, :cond_39
const/4 v0, 0x0
:goto_35
invoke-interface {p3, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2b
:cond_39
if-nez v2, :cond_40
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_35
:cond_40
invoke-virtual {v1, p1, p2, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
move-result-object v0
goto :goto_35
:cond_45
return-void
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
if-nez v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
move-object v1, v0
:goto_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->findConvertingContentDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-nez v0, :cond_5c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
:goto_21
:cond_21
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-eqz v2, :cond_29
invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->forProperty(Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v2
:cond_29
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
if-eqz v3, :cond_6d
if-eqz p2, :cond_6d
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v5
invoke-virtual {v3, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_6d
if-nez v4, :cond_67
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3}, Ljava/util/HashSet;-><init>()V
:goto_44
array-length v6, v5
const/4 v4, 0x0
:goto_46
if-ge v4, v6, :cond_6e
aget-object v7, v5, v4
invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_46
:cond_50
instance-of v1, v0, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;
if-eqz v1, :cond_73
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualKeyDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
move-object v1, v0
goto :goto_f
:cond_5c
instance-of v2, v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
if-eqz v2, :cond_21
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
invoke-interface {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;->createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_21
:cond_67
new-instance v3, Ljava/util/HashSet;
invoke-direct {v3, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
goto :goto_44
:cond_6d
move-object v3, v4
:cond_6e
invoke-virtual {p0, v1, v2, v0, v3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->withResolved(Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
move-result-object v0
return-object v0
:cond_73
move-object v1, v0
goto :goto_f
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
check-cast p3, Ljava/util/Map;
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_deserializeUsingCreator(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/util/Map;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
goto :goto_8
:cond_1c
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_hasDefaultCreator:Z
if-nez v0, :cond_2b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "No default constructor found"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_2b
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_55
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_55
sget-object v1, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_55
sget-object v1, Lcom/fasterxml/jackson/a/r;->h:Lcom/fasterxml/jackson/a/r;
if-ne v0, v1, :cond_4c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
goto :goto_8
:cond_4c
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_55
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
iget-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
if-eqz v1, :cond_65
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBindStringMap(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
goto :goto_8
:cond_65
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
goto :goto_8
.end method
.method public deserialize(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)Ljava/util/Map;
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/l;->getCurrentToken()Lcom/fasterxml/jackson/a/r;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/a/r;->b:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_15
sget-object v1, Lcom/fasterxml/jackson/a/r;->f:Lcom/fasterxml/jackson/a/r;
if-eq v0, v1, :cond_15
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->getMapClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_15
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
if-eqz v0, :cond_1d
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBindStringMap(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
:goto_1c
return-object p3
:cond_1d
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_readAndBind(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/util/Map;)V
goto :goto_1c
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 5
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/a/l;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getContentDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
return-object v0
.end method
.method public getContentType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final getMapClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_45
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid delegate-creator definition for "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": value instantiator ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_45
const/4 v1, 0x0
invoke-virtual {p0, p1, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
:cond_4c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z
move-result v0
if-eqz v0, :cond_66
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
:cond_66
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_mapType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_isStdKeyDeser(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/KeyDeserializer;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_standardStringKey:Z
return-void
.end method
.method public setIgnorableProperties([Ljava/lang/String;)V
.registers 3
if-eqz p1, :cond_5
array-length v0, p1
if-nez v0, :cond_9
:cond_5
const/4 v0, 0x0
:goto_6
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
return-void
:cond_9
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
move-result-object v0
goto :goto_6
.end method
.method protected withResolved(Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
.registers 11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_keyDeserializer:Lcom/fasterxml/jackson/databind/KeyDeserializer;
if-ne v0, p1, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-ne v0, p3, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_valueTypeDeserializer:Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-ne v0, p2, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->_ignorableProperties:Ljava/util/HashSet;
if-ne v0, p4, :cond_11
:goto_10
return-object p0
:cond_11
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
move-object v1, p0
move-object v2, p1
move-object v3, p3
move-object v4, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Ljava/util/HashSet;)V
move-object p0, v0
goto :goto_10
.end method
.method protected wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;)V
.registers 4
:goto_0
instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;
if-eqz v0, :cond_f
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object p1
goto :goto_0
:cond_f
instance-of v0, p1, Ljava/lang/Error;
if-eqz v0, :cond_16
check-cast p1, Ljava/lang/Error;
throw p1
:cond_16
instance-of v0, p1, Ljava/io/IOException;
if-eqz v0, :cond_21
instance-of v0, p1, Lcom/fasterxml/jackson/databind/JsonMappingException;
if-nez v0, :cond_21
check-cast p1, Ljava/io/IOException;
throw p1
:cond_21
const/4 v0, 0x0
invoke-static {p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method