.class public Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected _registeredSubtypes:Ljava/util/LinkedHashSet;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;-><init>()V
return-void
.end method
.method protected _collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
.registers 13
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z
move-result v0
if-nez v0, :cond_16
invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_16
new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v2
invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
move-object p2, v0
:cond_16
invoke-virtual {p5, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z
move-result v0
if-eqz v0, :cond_31
invoke-virtual {p5, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z
move-result v0
if-nez v0, :cond_31
invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_31
return-void
:cond_32
invoke-virtual {p5, p2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p4, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_31
invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z
move-result v1
if-nez v1, :cond_31
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_45
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v1
invoke-static {v1, p4, p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->hasName()Z
move-result v2
if-nez v2, :cond_74
new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p4, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v0, v3}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
:goto_6c
move-object v0, p0
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
goto :goto_45
:cond_74
move-object v2, v0
goto :goto_6c
.end method
.method public collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
.registers 12
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;
if-eqz v0, :cond_38
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;
move-result-object v6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;
invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_13
:goto_13
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_38
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p3, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
move-object v0, p0
move-object v3, p2
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
goto :goto_13
:cond_38
new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getRawType()Ljava/lang/Class;
move-result-object v0
const/4 v1, 0x0
invoke-direct {v2, v0, v1}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
move-object v0, p0
move-object v1, p1
move-object v3, p2
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
.registers 13
if-nez p4, :cond_3b
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;
move-result-object v0
move-object v6, v0
:goto_7
new-instance v5, Ljava/util/HashMap;
invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_registeredSubtypes:Ljava/util/LinkedHashSet;
invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_16
:cond_16
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v6, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_16
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p3, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
move-object v0, p0
move-object v3, p2
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
goto :goto_16
:cond_3b
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
move-object v6, v0
goto :goto_7
:cond_41
invoke-virtual {p3, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_66
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v7
:goto_4b
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_66
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;->getType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p3, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
move-object v0, p0
move-object v3, p2
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
goto :goto_4b
:cond_66
new-instance v2, Lcom/fasterxml/jackson/databind/jsontype/NamedType;
const/4 v0, 0x0
invoke-direct {v2, v6, v0}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V
invoke-static {v6, p3, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->constructWithoutSuperTypes(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
move-object v0, p0
move-object v3, p2
move-object v4, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdSubtypeResolver;->_collectAndResolve(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/jsontype/NamedType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Ljava/util/HashMap;)V
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method