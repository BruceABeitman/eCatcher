.class public Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"


# instance fields
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;

.field protected _defaultBean:Ljava/lang/Object;

.field protected final _outputProps:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getSerializationInclusion()Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_outputProps:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    return-void
.end method


# virtual methods
.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_b
    instance-of v0, p1, Ljava/lang/Error;

    if-eqz v0, :cond_12

    check-cast p1, Ljava/lang/Error;

    throw p1

    :cond_12
    instance-of v0, p1, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_19

    check-cast p1, Ljava/lang/RuntimeException;

    throw p1

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to get property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' of default "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected buildWriter(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;",
            "Lcom/fasterxml/jackson/databind/JavaType;",
            "Lcom/fasterxml/jackson/databind/JsonSerializer",
            "<*>;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;",
            "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
            "Z)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    move-object/from16 v0, p6

    move/from16 v1, p7

    invoke-virtual {p0, v0, v1, p2}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v2

    if-eqz p5, :cond_c9

    if-nez v2, :cond_d

    move-object v2, p2

    :cond_d
    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v3

    if-nez v3, :cond_4c

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Problem trying to create BeanPropertyWriter for property \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' (of type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "); serialization type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " has no content"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4c
    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;

    :goto_55
    const/4 v11, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_outputProps:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    move-result-object v3

    if-eqz v3, :cond_6e

    sget-object v4, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I

    invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_cc

    :cond_6e
    move v10, v2

    :goto_6f
    new-instance v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v5

    move-object v3, p1

    move-object/from16 v4, p6

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;

    move-result-object v3

    if-eqz v3, :cond_8f

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;

    move-result-object v2

    :cond_8f
    return-object v2

    :pswitch_90
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_9f

    const/4 v2, 0x1

    move v10, v2

    goto :goto_6f

    :cond_9f
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-static {v11}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move v10, v2

    goto :goto_6f

    :pswitch_af
    const/4 v2, 0x1

    sget-object v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move v10, v2

    goto :goto_6f

    :pswitch_b4
    const/4 v2, 0x1

    :pswitch_b5
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z

    move-result v3

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z

    move-result v3

    if-nez v3, :cond_6e

    sget-object v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;

    move v10, v2

    goto :goto_6f

    :cond_c9
    move-object v9, v2

    goto :goto_55

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_90
        :pswitch_af
        :pswitch_b4
        :pswitch_b5
    .end packed-switch
.end method

.method protected findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
    .registers 10

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    :goto_16
    const/4 p2, 0x1

    :cond_17
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-static {v1, p1, p3}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object v0

    if-eq v0, p3, :cond_21

    const/4 p2, 0x1

    move-object p3, v0

    :cond_21
    if-nez p2, :cond_30

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;

    invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    move-result-object v1

    if-eqz v1, :cond_30

    sget-object v2, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;

    if-ne v1, v2, :cond_75

    const/4 p2, 0x1

    :cond_30
    :goto_30
    if-eqz p2, :cond_77

    :goto_32
    return-object p3

    :cond_33
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6e

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Illegal concrete-type annotation for method \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\': class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " not a super-type of (declared) class "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6e
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v2, p3, v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    move-result-object p3

    goto :goto_16

    :cond_75
    const/4 p2, 0x0

    goto :goto_30

    :cond_77
    const/4 p3, 0x0

    goto :goto_32
.end method

.method public getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
    .registers 2

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultBean()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->instantiateBean(Z)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " has no default constructor; can not instantiate default bean value to support \'properties=JsonSerialize.Inclusion.NON_DEFAULT\' annotation"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;

    return-object v0
.end method

.method protected getDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultBean()Ljava/lang/Object;

    move-result-object v0

    :try_start_4
    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getValue(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_8
.end method
