.class public Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
.super Lcom/fasterxml/jackson/databind/BeanDescription;
.source "BasicBeanDescription.java"
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.field protected _anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.field protected _anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.field protected _bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
.field protected final _classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.field protected _ignoredPropertyNames:Ljava/util/Set;
.field protected _injectables:Ljava/util/Map;
.field protected _jsonValueMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.field protected _objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.field protected final _properties:Ljava/util/List;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
.registers 6
invoke-direct {p0, p2}, Lcom/fasterxml/jackson/databind/BeanDescription;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
if-nez p1, :cond_f
const/4 v0, 0x0
:goto_8
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;
return-void
:cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
goto :goto_8
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)V
.registers 6
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getClassDef()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getProperties()Ljava/util/List;
move-result-object v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
return-void
.end method
.method public static forDeserialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getAnySetterMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getIgnoredPropertyNames()Ljava/util/Set;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getInjectables()Ljava/util/Map;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-object v0
.end method
.method public static forOtherUse(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
invoke-direct {v0, p0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;-><init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/util/List;)V
return-object v0
.end method
.method public static forSerialization(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
.registers 3
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;
invoke-direct {v0, p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;-><init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;)V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->getAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
iput-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public _createConverter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
.registers 5
const/4 v0, 0x0
if-nez p1, :cond_5
move-object p1, v0
:goto_4
return-object p1
:cond_5
instance-of v1, p1, Lcom/fasterxml/jackson/databind/util/Converter;
if-eqz v1, :cond_c
check-cast p1, Lcom/fasterxml/jackson/databind/util/Converter;
goto :goto_4
:cond_c
instance-of v1, p1, Ljava/lang/Class;
if-nez v1, :cond_33
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Converter definition of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type Converter or Class<Converter> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
check-cast p1, Ljava/lang/Class;
const-class v1, Lcom/fasterxml/jackson/databind/util/Converter$None;
if-eq p1, v1, :cond_3d
const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-ne p1, v1, :cond_3f
:cond_3d
move-object p1, v0
goto :goto_4
:cond_3f
const-class v1, Lcom/fasterxml/jackson/databind/util/Converter;
invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_66
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<Converter>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_66
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v1
if-nez v1, :cond_7e
:goto_6e
if-nez v0, :cond_7c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/util/Converter;
:cond_7c
move-object p1, v0
goto :goto_4
:cond_7e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v1, v0, v2, p1}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->converterInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v0
goto :goto_6e
.end method
.method public _findPropertyFields(Ljava/util/Collection;Z)Ljava/util/LinkedHashMap;
.registers 8
new-instance v1, Ljava/util/LinkedHashMap;
invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v3
if-eqz v3, :cond_b
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;
move-result-object v0
if-eqz p1, :cond_29
invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_b
:cond_29
invoke-virtual {v1, v0, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_b
:cond_2d
return-object v1
.end method
.method public bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
if-nez v0, :cond_13
new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_type:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_bindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
return-object v0
.end method
.method public findAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-eqz v0, :cond_33
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getRawType()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/util/Map;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_33
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Invalid \'any-getter\' annotation on method "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "(): return type is not instance of java.util.Map"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anyGetter:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
return-object v0
.end method
.method public findAnySetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/String;
if-eq v0, v1, :cond_3c
const-class v1, Ljava/lang/Object;
if-eq v0, v1, :cond_3c
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid \'any-setter\' annotation on method "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "(): first argument not of type String or Object, but "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_anySetterMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-object v0
.end method
.method public findBackReferenceProperties()Ljava/util/Map;
.registers 6
const/4 v1, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_7
:cond_7
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getMutator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v3
if-eqz v3, :cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findReferenceType(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;
move-result-object v4
if-eqz v4, :cond_7
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->isBackReference()Z
move-result v0
if-eqz v0, :cond_7
if-nez v1, :cond_54
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
:goto_2e
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector$ReferenceProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_56
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Multiple back-reference properties with name \'"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_53
return-object v1
:cond_54
move-object v0, v1
goto :goto_2e
:cond_56
move-object v1, v0
goto :goto_7
.end method
.method public findCreatorPropertyNames()Ljava/util/List;
.registers 11
const/4 v3, 0x0
const/4 v5, 0x0
move v4, v5
move-object v1, v3
:goto_4
const/4 v0, 0x2
if-ge v4, v0, :cond_63
if-nez v4, :cond_55
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->getConstructors()Ljava/util/List;
move-result-object v0
:goto_d
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_11
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameterCount()I
move-result v8
if-lez v8, :cond_11
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v2
if-eqz v2, :cond_11
if-nez v1, :cond_36
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
:cond_36
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v2, 0x1
move v6, v2
:goto_3f
if-ge v6, v8, :cond_11
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v0, v6}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v9
invoke-virtual {v2, v9}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v2
if-nez v2, :cond_5a
move-object v2, v3
:goto_4e
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v2, v6, 0x1
move v6, v2
goto :goto_3f
:cond_55
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->getFactoryMethods()Ljava/util/List;
move-result-object v0
goto :goto_d
:cond_5a
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v2
goto :goto_4e
:cond_5f
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_4
:cond_63
if-nez v1, :cond_69
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v1
:cond_69
return-object v1
.end method
.method public findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
move-result-object v0
return-object v0
.end method
.method public findDeserializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_createConverter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v0
goto :goto_5
.end method
.method public findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_f
move-object p1, v0
:cond_f
return-object p1
.end method
.method public varargs findFactoryMethod([Ljava/lang/Class;)Ljava/lang/reflect/Method;
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v1
if-eqz v1, :cond_b
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;
move-result-object v4
array-length v5, p1
move v1, v2
:goto_23
if-ge v1, v5, :cond_b
aget-object v6, p1, v1
invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v6
if-eqz v6, :cond_32
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
:goto_31
return-object v0
:cond_32
add-int/lit8 v1, v1, 0x1
goto :goto_23
:cond_35
const/4 v0, 0x0
goto :goto_31
.end method
.method public findInjectables()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_injectables:Ljava/util/Map;
return-object v0
.end method
.method public findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_jsonValueMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-object v0
.end method
.method public findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->findMethod(Ljava/lang/String;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v0
return-object v0
.end method
.method public findPOJOBuilder()Ljava/lang/Class;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
move-result-object v0
goto :goto_5
.end method
.method public findPOJOBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilderConfig(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
move-result-object v0
goto :goto_5
.end method
.method public findProperties()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;
return-object v0
.end method
.method public findSerializationConverter()Lcom/fasterxml/jackson/databind/util/Converter;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_createConverter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v0
goto :goto_5
.end method
.method public findSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_5
:goto_4
return-object p1
:cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationInclusion(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/annotation/JsonInclude$Include;
move-result-object p1
goto :goto_4
.end method
.method public varargs findSingleArgConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_32
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I
move-result v1
const/4 v4, 0x1
if-ne v1, v4, :cond_b
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;
move-result-object v4
array-length v5, p1
move v1, v2
:goto_24
if-ge v1, v5, :cond_b
aget-object v6, p1, v1
if-ne v6, v4, :cond_2f
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;
move-result-object v0
:goto_2e
return-object v0
:cond_2f
add-int/lit8 v1, v1, 0x1
goto :goto_24
:cond_32
const/4 v0, 0x0
goto :goto_2e
.end method
.method public getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
move-result-object v0
return-object v0
.end method
.method public getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
return-object v0
.end method
.method public getConstructors()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method public getFactoryMethods()Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v1
if-eqz v1, :cond_d
:goto_c
return-object v0
:cond_d
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_16
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->isFactoryMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v3
if-eqz v3, :cond_16
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_16
:cond_2c
move-object v0, v1
goto :goto_c
.end method
.method public getIgnoredPropertyNames()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;
if-nez v0, :cond_9
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v0
:goto_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_ignoredPropertyNames:Ljava/util/Set;
goto :goto_8
.end method
.method public getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_objectIdInfo:Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
return-object v0
.end method
.method public hasKnownClassAnnotations()Z
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->hasAnnotations()Z
move-result v0
return v0
.end method
.method public instantiateBean(Z)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
move-result-object v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
if-eqz p1, :cond_f
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->fixAccess()V
:cond_f
:try_start_f
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getAnnotated()Ljava/lang/reflect/Constructor;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_19
.catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_73
move-result-object v0
goto :goto_9
:goto_1b
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_26
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_1b
:cond_26
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_2d
check-cast v0, Ljava/lang/Error;
throw v0
:cond_2d
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_34
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_34
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Failed to instantiate bean of type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_classInfo:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotated()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ") "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_73
move-exception v0
goto :goto_1b
.end method
.method protected isFactoryMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->getBeanClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_11
:goto_10
:cond_10
return v0
:cond_11
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v2
if-eqz v2, :cond_1b
move v0, v1
goto :goto_10
:cond_1b
const-string v2, "valueOf"
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_10
move v0, v1
goto :goto_10
.end method
.method public removeProperty(Ljava/lang/String;)Z
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->_properties:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
const/4 v0, 0x1
:goto_20
return v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method public resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/BasicBeanDescription;->bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_3
.end method