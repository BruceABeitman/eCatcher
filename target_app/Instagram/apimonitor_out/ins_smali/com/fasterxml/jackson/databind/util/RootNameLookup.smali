.class public Lcom/fasterxml/jackson/databind/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x1L
.field protected _rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/a/c/l;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/a/c/l;
move-result-object v0
return-object v0
.end method
.method public declared-synchronized findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/a/c/l;
.registers 7
monitor-enter p0
:try_start_1
new-instance v2, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
if-nez v0, :cond_3e
new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;
const/16 v1, 0x14
const/16 v3, 0xc8
invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
:cond_15
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
if-eqz v0, :cond_2d
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z
move-result v1
if-nez v1, :cond_49
:cond_2d
invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_32
new-instance v0, Lcom/fasterxml/jackson/a/c/l;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/a/c/l;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_3c
.catchall {:try_start_1 .. :try_end_3c} :catchall_4f
:goto_3c
monitor-exit p0
return-object v0
:try_start_3e
:cond_3e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/a/c/l;
if-eqz v0, :cond_15
goto :goto_3c
:cond_49
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
:try_end_4c
.catchall {:try_start_3e .. :try_end_4c} :catchall_4f
move-result-object v0
move-object v1, v0
goto :goto_32
:catchall_4f
move-exception v0
monitor-exit p0
throw v0
.end method