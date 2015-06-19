.class public Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;
.super Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;
.source "ClassNameIdResolver.java"


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/TypeIdResolverBase;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/type/TypeFactory;)V

    return-void
.end method


# virtual methods
.method protected final _idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    :cond_12
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.util"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_73

    instance-of v1, p1, Ljava/util/EnumSet;

    if-eqz v1, :cond_37

    check-cast p1, Ljava/util/EnumSet;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumSet;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v1

    const-class v2, Ljava/util/EnumSet;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructCollectionType(Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/CollectionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/CollectionType;->toCanonical()Ljava/lang/String;

    move-result-object v0

    :cond_36
    :goto_36
    return-object v0

    :cond_37
    instance-of v1, p1, Ljava/util/EnumMap;

    if-eqz v1, :cond_52

    check-cast p1, Ljava/util/EnumMap;

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findEnumType(Ljava/util/EnumMap;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    invoke-static {}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->defaultInstance()Lcom/fasterxml/jackson/databind/type/TypeFactory;

    move-result-object v2

    const-class v3, Ljava/util/EnumMap;

    invoke-virtual {v2, v3, v0, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructMapType(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/type/MapType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/type/MapType;->toCanonical()Ljava/lang/String;

    move-result-object v0

    goto :goto_36

    :cond_52
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".Arrays$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_68

    const-string v2, ".Collections$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    :cond_68
    const-string v1, "List"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_36

    const-string v0, "java.util.ArrayList"

    goto :goto_36

    :cond_73
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_36

    invoke-static {p2}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_36

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_36
.end method

.method public getMechanism()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;
    .registers 2

    sget-object v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->CLASS:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    return-object v0
.end method

.method public idFromValue(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_idFrom(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSubtype(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public typeFromId(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 6

    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructFromCanonical(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/jsontype/impl/ClassNameIdResolver;->_baseType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
    :try_end_1a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_1a} :catch_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1a} :catch_38

    move-result-object v0

    goto :goto_e

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid type id \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' (for id type \'Id.class\'): no such class found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_38
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid type id \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' (for id type \'Id.class\'): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
