.class public Lcom/fasterxml/jackson/databind/util/RootNameLookup;
.super Ljava/lang/Object;
.source "RootNameLookup.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected transient _rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/util/LRUMap",
            "<",
            "Lcom/fasterxml/jackson/databind/type/ClassKey;",
            "Lcom/fasterxml/jackson/core/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findRootName(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/fasterxml/jackson/core/io/SerializedString;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;

    move-result-object v0

    return-object v0
.end method

.method public findRootName(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)Lcom/fasterxml/jackson/core/io/SerializedString;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;)",
            "Lcom/fasterxml/jackson/core/io/SerializedString;"
        }
    .end annotation

    new-instance v2, Lcom/fasterxml/jackson/databind/type/ClassKey;

    invoke-direct {v2, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V

    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    if-nez v0, :cond_40

    new-instance v0, Lcom/fasterxml/jackson/databind/util/LRUMap;

    const/16 v1, 0x14

    const/16 v3, 0xc8

    invoke-direct {v0, v1, v3}, Lcom/fasterxml/jackson/databind/util/LRUMap;-><init>(II)V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    :cond_15
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_4c

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;

    move-result-object v0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v1

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object v0

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z

    move-result v1

    if-nez v1, :cond_4f

    :cond_2e
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_32
    new-instance v1, Lcom/fasterxml/jackson/core/io/SerializedString;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/core/io/SerializedString;-><init>(Ljava/lang/String;)V

    monitor-enter p0

    :try_start_38
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0, v2, v1}, Lcom/fasterxml/jackson/databind/util/LRUMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_54

    move-object v0, v1

    :goto_3f
    return-object v0

    :cond_40
    :try_start_40
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/RootNameLookup;->_rootNames:Lcom/fasterxml/jackson/databind/util/LRUMap;

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/util/LRUMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/io/SerializedString;

    if-eqz v0, :cond_15

    monitor-exit p0

    goto :goto_3f

    :catchall_4c
    move-exception v0

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_40 .. :try_end_4e} :catchall_4c

    throw v0

    :cond_4f
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0
.end method
