.class public Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.super Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method protected _constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .registers 2

    invoke-static {}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;->noTypeInfoBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected _constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;
    .registers 2

    new-instance v0, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;-><init>()V

    return-object v0
.end method

.method protected _findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    const/4 v3, 0x0

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;

    if-eqz v1, :cond_66

    if-nez v0, :cond_17

    move-object v0, v3

    :goto_16
    return-object v0

    :cond_17
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeResolver;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    move-object v2, v1

    :goto_20
    const-class v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;

    if-nez v1, :cond_7d

    :goto_2a
    if-eqz v3, :cond_2f

    invoke-interface {v3, p3}, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;->init(Lcom/fasterxml/jackson/databind/JavaType;)V

    :cond_2f
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v1

    invoke-interface {v2, v1, v3}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->init(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->include()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    move-result-object v1

    sget-object v3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    if-ne v1, v3, :cond_45

    instance-of v3, p2, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    if-eqz v3, :cond_45

    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;

    :cond_45
    invoke-interface {v2, v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->inclusion(Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->property()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->defaultImpl()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$None;

    if-eq v2, v3, :cond_5d

    invoke-interface {v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v1

    :cond_5d
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->visible()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->typeIdVisibility(Z)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_16

    :cond_66
    if-nez v0, :cond_6a

    move-object v0, v3

    goto :goto_16

    :cond_6a
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeInfo;->use()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;->NONE:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$Id;

    if-ne v1, v2, :cond_77

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructNoTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v0

    goto :goto_16

    :cond_77
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_constructStdTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/impl/StdTypeResolverBuilder;

    move-result-object v1

    move-object v2, v1

    goto :goto_20

    :cond_7d
    invoke-interface {v1}, Lcom/fasterxml/jackson/databind/annotation/JsonTypeIdResolver;->value()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;

    move-result-object v3

    goto :goto_2a
.end method

.method protected _isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnore;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnore;->value()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonAutoDetect;

    if-nez v0, :cond_b

    :goto_a
    return-object p2

    :cond_b
    invoke-interface {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->with(Lcom/fasterxml/jackson/annotation/JsonAutoDetect;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;

    move-result-object p2

    goto :goto_a
.end method

.method public findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findContentSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyAs()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_32

    :cond_2f
    const-string v0, ""

    goto :goto_e

    :cond_32
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSetter;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSetter;->value()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_41

    :cond_3e
    const-string v0, ""

    goto :goto_e

    :cond_41
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;
    .registers 3

    if-eqz p1, :cond_11

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    :goto_10
    return-object v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->as()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->using()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonDeserializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findFilterId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFilter;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonFilter;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_15

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonFormat;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;-><init>(Lcom/fasterxml/jackson/annotation/JsonFormat;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public findFormat(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;

    move-result-object v0

    return-object v0
.end method

.method public findIgnoreUnknownProperties(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->ignoreUnknown()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JacksonInject;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :cond_b
    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JacksonInject;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_b

    instance-of v0, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-nez v0, :cond_23

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_23
    move-object v0, p1

    check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I

    move-result v1

    if-nez v1, :cond_35

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_35
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/KeyDeserializer;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->keyUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/KeyDeserializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyUsing()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public bridge synthetic findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findKeySerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_21

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_21
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    if-eqz v1, :cond_2c

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findDeserializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_2c
    move-object v1, v0

    goto :goto_b

    :cond_2e
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
    .registers 4

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/fasterxml/jackson/databind/PropertyName;->USE_DEFAULT:Lcom/fasterxml/jackson/databind/PropertyName;

    :cond_15
    :goto_15
    return-object v0

    :cond_16
    instance-of v1, p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    if-eqz v1, :cond_21

    check-cast p1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_21
    move-object v1, v0

    goto :goto_b

    :cond_23
    new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    goto :goto_15
.end method

.method public findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonNaming;->value()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method public findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .registers 6

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$None;

    if-ne v1, v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    new-instance v1, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->property()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->scope()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityInfo;->generator()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    move-object v0, v1

    goto :goto_13
.end method

.method public findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIdentityReference;->alwaysAsId()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->withAlwaysAsId(Z)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;

    move-result-object p2

    :cond_12
    return-object p2
.end method

.method public findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-ne v1, v2, :cond_14

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return-object v0

    :cond_14
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonDeserialize;->builder()Ljava/lang/Class;

    move-result-object v0

    goto :goto_13
.end method

.method public findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;-><init>(Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;->value()[Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-nez v0, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Must call method with a container type (got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    goto :goto_7
.end method

.method public findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonManagedReference;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonManagedReference;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->managed(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonBackReference;

    if-eqz v0, :cond_26

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonBackReference;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->back(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;

    move-result-object v0

    goto :goto_12

    :cond_26
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findRootName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/PropertyName;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonRootName;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Lcom/fasterxml/jackson/databind/PropertyName;

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRootName;->value()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method public findSerializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->contentAs()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
    .registers 5

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonInclude;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonInclude;->value()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object p2

    :cond_e
    :goto_e
    return-object p2

    :cond_f
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->include()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$1;->$SwitchMap$com$fasterxml$jackson$databind$annotation$JsonSerialize$Inclusion:[I

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Inclusion;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_36

    goto :goto_e

    :pswitch_29
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ALWAYS:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_e

    :pswitch_2c
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_NULL:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_e

    :pswitch_2f
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_DEFAULT:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_e

    :pswitch_32
    sget-object p2, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    goto :goto_e

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
    .end packed-switch
.end method

.method public findSerializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->keyAs()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1f

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_1f
    const-string v0, ""

    goto :goto_e

    :cond_22
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findSerializationName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonGetter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonGetter;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonGetter;->value()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonProperty;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonProperty;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_1e
    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_31

    :cond_2e
    const-string v0, ""

    goto :goto_e

    :cond_31
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->value()[Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonPropertyOrder;->alphabetic()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->as()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->typing()Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v0

    goto :goto_b
.end method

.method public findSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize;->using()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/JsonSerializer$None;

    if-eq v0, v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    const-class v0, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonRawValue;

    if-eqz v0, :cond_2d

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonRawValue;->value()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getRawType()Ljava/lang/Class;

    move-result-object v1

    new-instance v0, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ser/std/RawSerializer;-><init>(Ljava/lang/Class;)V

    goto :goto_12

    :cond_2d
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public findSubtypes(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/fasterxml/jackson/databind/jsontype/NamedType;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonSubTypes;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :cond_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonSubTypes;->value()[Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v3, v2

    const/4 v1, 0x0

    :goto_18
    if-ge v1, v3, :cond_b

    aget-object v4, v2, v1

    new-instance v5, Lcom/fasterxml/jackson/databind/jsontype/NamedType;

    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->value()Ljava/lang/Class;

    move-result-object v6

    invoke-interface {v4}, Lcom/fasterxml/jackson/annotation/JsonSubTypes$Type;->name()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/fasterxml/jackson/databind/jsontype/NamedType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public findTypeName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/String;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonTypeName;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonTypeName;->value()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/cfg/MapperConfig",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            ")",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;

    move-result-object v0

    return-object v0
.end method

.method public findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .registers 4

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;

    if-eqz v0, :cond_10

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->enabled()Z

    move-result v1

    if-nez v1, :cond_12

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return-object v0

    :cond_12
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->prefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonUnwrapped;->suffix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fasterxml/jackson/databind/util/NameTransformer;->simpleTransformer(Ljava/lang/String;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v0

    goto :goto_11
.end method

.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/databind/annotation/JsonValueInstantiator;->value()Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method public findViews(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonView;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonView;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonView;->value()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_b
.end method

.method public hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnyGetter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonAnySetter;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonValue;

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonValue;->value()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonCreator;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;->_isIgnorable(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z

    move-result v0

    return v0
.end method

.method public isAnnotationBundle(Ljava/lang/annotation/Annotation;)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/annotation/JacksonAnnotationsInside;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isIgnorableType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return-object v0

    :cond_c
    invoke-interface {v0}, Lcom/fasterxml/jackson/annotation/JsonIgnoreType;->value()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_b
.end method

.method public isTypeId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Boolean;
    .registers 3

    const-class v0, Lcom/fasterxml/jackson/annotation/JsonTypeId;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->hasAnnotation(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
