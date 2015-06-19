.class public Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;
.super Ljava/lang/Object;
.source "PropertyBuilder.java"
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
.field protected final _config:Lcom/fasterxml/jackson/databind/SerializationConfig;
.field protected _defaultBean:Ljava/lang/Object;
.field protected final _outputProps:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
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
.method protected _throwWrapped(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
move-object v0, p1
:goto_1
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_c
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_1
:cond_c
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_13
check-cast v0, Ljava/lang/Error;
throw v0
:cond_13
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_1a
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to get property \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
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
.method protected buildWriter(Lcom/fasterxml/jackson/databind/SerializerProvider;Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.registers 21
move-object/from16 v0, p7
move/from16 v1, p8
invoke-virtual {p0, v0, v1, p3}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-eqz p6, :cond_e1
if-nez v2, :cond_d
move-object v2, p3
:cond_d
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
if-nez v3, :cond_50
new-instance v3, Ljava/lang/IllegalStateException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Problem trying to create BeanPropertyWriter for property \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;
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
:cond_50
move-object/from16 v0, p6
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v9
invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
:goto_59
const/4 v11, 0x0
const/4 v2, 0x0
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_outputProps:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
move-object/from16 v0, p7
invoke-virtual {v3, v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
move-result-object v3
if-eqz v3, :cond_72
sget-object v4, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder$1;->$SwitchMap$com$fasterxml$jackson$annotation$JsonInclude$Include:[I
invoke-virtual {v3}, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->ordinal()I
move-result v3
aget v3, v4, v3
packed-switch v3, :pswitch_data_e4
:cond_72
move v10, v2
:goto_73
new-instance v2, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
move-result-object v5
move-object v3, p2
move-object/from16 v4, p7
move-object v6, p3
move-object/from16 v7, p4
move-object/from16 v8, p5
invoke-direct/range {v2 .. v11}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;-><init>(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/JavaType;ZLjava/lang/Object;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-object/from16 v0, p7
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNullSerializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_99
move-object/from16 v0, p7
invoke-virtual {p1, v0, v3}, Lcom/fasterxml/jackson/databind/SerializerProvider;->serializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonSerializer;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->assignNullSerializer(Lcom/fasterxml/jackson/databind/JsonSerializer;)V
:cond_99
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-object/from16 v0, p7
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
move-result-object v3
if-eqz v3, :cond_a7
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->unwrappingWriter(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
move-result-object v2
:cond_a7
return-object v2
:pswitch_a8
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;
move-result-object v3
move-object/from16 v0, p7
invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->getDefaultValue(Ljava/lang/String;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v11
if-nez v11, :cond_b7
const/4 v2, 0x1
move v10, v2
goto :goto_73
:cond_b7
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z
move-result v3
if-eqz v3, :cond_72
invoke-static {v11}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v11
move v10, v2
goto :goto_73
:pswitch_c7
const/4 v2, 0x1
sget-object v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;
move v10, v2
goto :goto_73
:pswitch_cc
const/4 v2, 0x1
:pswitch_cd
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v3
if-eqz v3, :cond_72
iget-object v3, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
sget-object v4, Lcom/fasterxml/jackson/databind/SerializationFeature;->WRITE_EMPTY_JSON_ARRAYS:Lcom/fasterxml/jackson/databind/SerializationFeature;
invoke-virtual {v3, v4}, Lcom/fasterxml/jackson/databind/SerializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/SerializationFeature;)Z
move-result v3
if-nez v3, :cond_72
sget-object v11, Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;->MARKER_FOR_EMPTY:Ljava/lang/Object;
move v10, v2
goto :goto_73
:cond_e1
move-object v9, v2
goto/16 :goto_59
:pswitch_data_e4
.packed-switch 0x1
:pswitch_a8
:pswitch_c7
:pswitch_cc
:pswitch_cd
.end packed-switch
.end method
.method protected final buildWriter(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/jsontype/TypeSerializer;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Z)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
.registers 9
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method protected findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;ZLcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 9
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_80
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_36
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->widenBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:goto_17
move p2, v1
:goto_18
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-static {v2, p1, v0}, Lcom/fasterxml/jackson/databind/ser/BeanSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/fasterxml/jackson/databind/SerializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-eq v2, v0, :cond_22
move-object v0, v2
move p2, v1
:cond_22
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationTyping(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
move-result-object v2
if-eqz v2, :cond_33
sget-object v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->DEFAULT_TYPING:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
if-eq v2, v3, :cond_33
sget-object v3, Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;->STATIC:Lcom/fasterxml/jackson/databind/annotation/JsonSerialize$Typing;
if-ne v2, v3, :cond_7c
:goto_32
move p2, v1
:cond_33
if-eqz p2, :cond_7e
:goto_35
return-object v0
:cond_36
invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-nez v3, :cond_75
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Illegal concrete-type annotation for method \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "\': class "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, " not a super-type of (declared) class "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_75
iget-object v2, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v2, p3, v0}, Lcom/fasterxml/jackson/databind/SerializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_17
:cond_7c
const/4 v1, 0x0
goto :goto_32
:cond_7e
const/4 v0, 0x0
goto :goto_35
:cond_80
move-object v0, p3
goto :goto_18
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
if-nez v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_config:Lcom/fasterxml/jackson/databind/SerializationConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/SerializationConfig;->canOverrideAccessModifiers()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->instantiateBean(Z)Ljava/lang/Object;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_defaultBean:Ljava/lang/Object;
if-nez v0, :cond_43
iget-object v0, p0, Lcom/fasterxml/jackson/databind/ser/PropertyBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;
move-result-object v0
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Class "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
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
:cond_43
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