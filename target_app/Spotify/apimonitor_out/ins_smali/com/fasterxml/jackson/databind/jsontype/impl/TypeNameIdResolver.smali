.class public Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "SourceFile"
.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.field protected final _idToType:Ljava/util/HashMap;
.field protected final _typeToId:Ljava/util/HashMap;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-direct {p0, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;
return-void
.end method
.method protected static _defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const/16 v1, 0x2e
invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
if-gez v1, :cond_d
:goto_c
return-object v0
:cond_d
add-int/lit8 v1, v1, 0x1
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method public static construct(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;ZZ)Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;
.registers 11
const/4 v0, 0x0
if-ne p3, p4, :cond_9
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_9
if-eqz p3, :cond_6d
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
move-object v3, v1
:goto_11
if-eqz p4, :cond_6b
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
move-object v2, v0
:goto_19
if-eqz p2, :cond_65
invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1f
:cond_1f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_65
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v5
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z
move-result v1
if-eqz v1, :cond_5f
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getName()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_3a
if-eqz p3, :cond_43
invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_43
if-eqz p4, :cond_1f
invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_57
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_1f
:cond_57
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1f
:cond_5f
invoke-static {v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
goto :goto_3a
:cond_65
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;
invoke-direct {v0, p0, p1, v3, v2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/HashMap;Ljava/util/HashMap;)V
return-object v0
:cond_6b
move-object v2, v0
goto :goto_19
:cond_6d
move-object v3, v0
goto :goto_11
.end method
.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
.registers 7
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;
monitor-enter v3
:try_start_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-nez v0, :cond_3c
iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z
move-result v4
if-eqz v4, :cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
iget-object v4, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
move-result-object v0
:cond_31
if-nez v0, :cond_37
invoke-static {v1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_defaultTypeId(Ljava/lang/Class;)Ljava/lang/String;
move-result-object v0
:cond_37
iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_typeToId:Ljava/util/HashMap;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_3c
monitor-exit v3
:try_end_3d
.catchall {:try_start_b .. :try_end_3d} :catchall_3e
return-object v0
:catchall_3e
move-exception v0
monitor-exit v3
throw v0
.end method
.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->idFromValue(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const/16 v1, 0x5b
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const-string v1, "; id-to-type="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
const/16 v1, 0x5d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeNameIdResolver;->_idToType:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method