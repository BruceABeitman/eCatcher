.class public Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;
.super Lorg/codehaus/jackson/map/AnnotationIntrospector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codehaus/jackson/map/AnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pair"
.end annotation


# instance fields
.field final _primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

.field final _secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/map/AnnotationIntrospector;Lorg/codehaus/jackson/map/AnnotationIntrospector;)V
    .registers 3

    invoke-direct {p0}, Lorg/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    iput-object p1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    iput-object p2, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    return-void
.end method


# virtual methods
.method public findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCachability(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findCreatorAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCreatorAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findCreatorAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_e
.end method

.method public findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationContentType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationKeyType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findDeserializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findFieldAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFieldAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findFieldAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_e
.end method

.method public findGetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findGetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_e
.end method

.method public findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    .registers 6

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v0

    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1, p2}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationInclusion(Lorg/codehaus/jackson/map/introspect/Annotated;Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;)Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-gez v2, :cond_13

    move-object v0, v1

    :cond_13
    return-object v0
.end method

.method public findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lorg/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v0

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSettablePropertyName(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v0, v1

    goto :goto_e
.end method

.method public findSetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->findSetterAutoDetection(Lorg/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;

    move-result-object v0

    :cond_e
    return-object v0
.end method

.method public hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAnySetterAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasAsValueAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->hasCreatorAnnotation(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isHandled(Ljava/lang/annotation/Annotation;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableField(Lorg/codehaus/jackson/map/introspect/AnnotatedField;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .registers 3

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_primary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lorg/codehaus/jackson/map/AnnotationIntrospector$Pair;->_secondary:Lorg/codehaus/jackson/map/AnnotationIntrospector;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/map/AnnotationIntrospector;->isIgnorableMethod(Lorg/codehaus/jackson/map/introspect/AnnotatedMethod;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
