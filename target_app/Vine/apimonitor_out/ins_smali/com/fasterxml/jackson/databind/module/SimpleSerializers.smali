.class public Lcom/fasterxml/jackson/databind/module/SimpleSerializers;
.super Lcom/fasterxml/jackson/databind/ser/Serializers$Base;
.source "SimpleSerializers.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x76667f4cd0de53cbL
.field protected _classMappings:Ljava/util/HashMap;
.field protected _hasEnumSerializer:Z
.field protected _interfaceMappings:Ljava/util/HashMap;
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/Serializers$Base;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z
return-void
.end method
.method public constructor <init>(Ljava/util/List;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/ser/Serializers$Base;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializers(Ljava/util/List;)V
return-void
.end method
.method protected _addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z
move-result v1
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
if-nez v1, :cond_16
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
:cond_16
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1b
:goto_1b
return-void
:cond_1c
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
if-nez v1, :cond_27
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
:cond_27
iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v0, Ljava/lang/Enum;
if-ne p1, v0, :cond_1b
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z
goto :goto_1b
.end method
.method protected _findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
move v1, v0
:goto_7
if-ge v1, v3, :cond_23
aget-object v4, v2, v1
invoke-virtual {p2, v4}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_19
:goto_18
:cond_18
return-object v0
:cond_19
invoke-virtual {p0, v4, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_18
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_7
:cond_23
const/4 v0, 0x0
goto :goto_18
.end method
.method public addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 5
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JsonSerializer;->handledType()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_a
const-class v1, Ljava/lang/Object;
if-ne v0, v1, :cond_37
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "JsonSerializer of type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not define valid handledType() -- must either register with method that takes type argument "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " or make serializer extend \'com.fasterxml.jackson.databind.ser.std.StdSerializer\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_37
invoke-virtual {p0, v0, p1}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)V
return-void
.end method
.method public addSerializers(Ljava/util/List;)V
.registers 4
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_4
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_14
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->addSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
goto :goto_4
:cond_14
return-void
.end method
.method public findArraySerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
return-object v0
.end method
.method public findCollectionLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
return-object v0
.end method
.method public findCollectionSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 7
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
return-object v0
.end method
.method public findMapLikeSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
return-object v0
.end method
.method public findMapSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
return-object v0
.end method
.method public findSerializer(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonSerializer;
.registers 8
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
new-instance v3, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v3, v1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-eqz v0, :cond_5b
:goto_1d
:cond_1d
return-object v0
:cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_1d
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_hasEnumSerializer:Z
if-eqz v0, :cond_45
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z
move-result v0
if-eqz v0, :cond_45
const-class v0, Ljava/lang/Enum;
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_1d
:cond_45
move-object v2, v1
:goto_46
if-eqz v2, :cond_5b
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;->reset(Ljava/lang/Class;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_classMappings:Ljava/util/HashMap;
invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonSerializer;
if-nez v0, :cond_1d
invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
move-object v2, v0
goto :goto_46
:cond_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_interfaceMappings:Ljava/util/HashMap;
if-eqz v0, :cond_7a
invoke-virtual {p0, v1, v3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v0
if-nez v0, :cond_1d
invoke-virtual {v1}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-nez v0, :cond_7a
move-object v0, v1
:cond_6c
invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_7a
invoke-virtual {p0, v0, v3}, Lcom/fasterxml/jackson/databind/module/SimpleSerializers;->_findInterfaceMapping(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/type/ClassKey;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v1
if-eqz v1, :cond_6c
move-object v0, v1
goto :goto_1d
:cond_7a
const/4 v0, 0x0
goto :goto_1d
.end method