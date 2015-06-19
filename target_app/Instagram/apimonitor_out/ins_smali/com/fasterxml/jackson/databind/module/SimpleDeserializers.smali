.class public Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;
.super Ljava/lang/Object;
.source "SimpleDeserializers.java"
.implements Lcom/fasterxml/jackson/databind/deser/Deserializers;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x29b9d97c59de97b0L
.field protected _classMappings:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
return-void
.end method
.method public constructor <init>(Ljava/util/Map;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializers(Ljava/util/Map;)V
return-void
.end method
.method public addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v1, :cond_10
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
:cond_10
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public addDeserializers(Ljava/util/Map;)V
.registers 5
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Class;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {p0, v1, v0}, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
goto :goto_8
:cond_24
return-void
.end method
.method public findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findBeanDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method
.method public findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleDeserializers;->_classMappings:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_5
.end method