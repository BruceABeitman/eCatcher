.class public Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
.super Ljava/lang/Object;
.source "POJOPropertiesCollector.java"
.field protected final _annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.field protected _anyGetters:Ljava/util/LinkedList;
.field protected _anySetters:Ljava/util/LinkedList;
.field protected final _classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.field protected final _config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.field protected _creatorProperties:Ljava/util/LinkedList;
.field protected final _forSerialization:Z
.field protected _ignoredPropertyNames:Ljava/util/HashSet;
.field protected _injectables:Ljava/util/LinkedHashMap;
.field protected _jsonValueGetters:Ljava/util/LinkedList;
.field protected final _mutatorPrefix:Ljava/lang/String;
.field protected final _properties:Ljava/util/LinkedHashMap;
.field protected final _type:Lcom/fasterxml/jackson/databind/JavaType;
.field protected final _visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;ZLcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Ljava/lang/String;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v1, Ljava/util/LinkedHashMap;
invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
iput-object p3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_type:Lcom/fasterxml/jackson/databind/JavaType;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
if-nez p5, :cond_1f
const-string p5, "set"
:cond_1f
iput-object p5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isAnnotationProcessingEnabled()Z
move-result v1
if-eqz v1, :cond_2d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
:cond_2d
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
:goto_3b
return-void
:cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v1
invoke-virtual {v0, p4, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
goto :goto_3b
.end method
.method private _addIgnored(Ljava/lang/String;)V
.registers 3
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
if-nez v0, :cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;
if-nez v0, :cond_f
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;
:cond_f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
:cond_14
return-void
.end method
.method private _findNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_e
const/4 v0, 0x0
:goto_5
if-nez v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
move-result-object v0
:goto_d
return-object v0
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNamingStrategy(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
move-result-object v0
goto :goto_5
:cond_17
instance-of v1, v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
if-eqz v1, :cond_1e
check-cast v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
goto :goto_d
:cond_1e
instance-of v1, v0, Ljava/lang/Class;
if-nez v1, :cond_45
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "AnnotationIntrospector returned PropertyNamingStrategy definition of type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "; expected type PropertyNamingStrategy or Class<PropertyNamingStrategy> instead"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_45
check-cast v0, Ljava/lang/Class;
const-class v1, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_6e
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "AnnotationIntrospector returned Class "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "; expected Class<PropertyNamingStrategy>"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_6e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v1
if-eqz v1, :cond_82
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v1, v2, v3, v0}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->namingStrategyInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
move-result-object v1
if-eqz v1, :cond_82
move-object v0, v1
goto :goto_d
:cond_82
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
goto/16 :goto_d
.end method
.method protected _addCreators()V
.registers 12
const/4 v2, 0x0
const/4 v10, 0x1
const/4 v4, 0x0
iget-object v5, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v5, :cond_8
:cond_7
return-void
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getConstructors()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_12
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
if-nez v1, :cond_29
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
:cond_29
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I
move-result v7
move v3, v4
:goto_2e
if-ge v3, v7, :cond_12
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v8
invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v1
if-nez v1, :cond_4d
move-object v1, v2
:goto_3b
if-eqz v1, :cond_49
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v9
invoke-virtual {v9, v8, v1, v10, v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addCtor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_49
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_2e
:cond_4d
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v1
goto :goto_3b
:cond_52
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getStaticMethods()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_5c
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
if-nez v1, :cond_73
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
:cond_73
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v7
move v3, v4
:goto_78
if-ge v3, v7, :cond_5c
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v8
invoke-virtual {v5, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v1
if-nez v1, :cond_97
move-object v1, v2
:goto_85
if-eqz v1, :cond_93
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v9
invoke-virtual {v9, v8, v1, v10, v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addCtor(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;ZZ)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v1, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_93
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_78
:cond_97
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v1
goto :goto_85
.end method
.method protected _addFields()V
.registers 13
const/4 v5, 0x0
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v9, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
if-nez v0, :cond_67
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->ALLOW_FINAL_FIELDS_AS_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-nez v0, :cond_67
move v1, v2
:goto_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v10
:goto_1e
:cond_1e
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8b
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getName()Ljava/lang/String;
move-result-object v8
if-nez v9, :cond_69
move-object v4, v5
:goto_31
const-string v6, ""
invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_8e
move-object v7, v8
:goto_3a
if-eqz v7, :cond_87
move v4, v2
:goto_3d
if-nez v4, :cond_8c
iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
invoke-interface {v4, v0}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isFieldVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;)Z
move-result v4
move v6, v4
:goto_46
if-eqz v9, :cond_89
invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v4
if-eqz v4, :cond_89
move v4, v2
:goto_4f
if-eqz v1, :cond_5f
if-nez v7, :cond_5f
if-nez v4, :cond_5f
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;->getModifiers()I
move-result v11
invoke-static {v11}, Ljava/lang/reflect/Modifier;->isFinal(I)Z
move-result v11
if-nez v11, :cond_1e
:cond_5f
invoke-virtual {p0, v8}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v8
invoke-virtual {v8, v0, v7, v6, v4}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addField(Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;ZZ)V
goto :goto_1e
:cond_67
move v1, v3
goto :goto_14
:cond_69
iget-boolean v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
if-eqz v4, :cond_7a
invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v4
if-nez v4, :cond_75
move-object v4, v5
goto :goto_31
:cond_75
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v4
goto :goto_31
:cond_7a
invoke-virtual {v9, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v4
if-nez v4, :cond_82
move-object v4, v5
goto :goto_31
:cond_82
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v4
goto :goto_31
:cond_87
move v4, v3
goto :goto_3d
:cond_89
move v4, v3
goto :goto_4f
:cond_8b
return-void
:cond_8c
move v6, v4
goto :goto_46
:cond_8e
move-object v7, v4
goto :goto_3a
.end method
.method protected _addGetterMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
.registers 7
const/4 v1, 0x0
if-eqz p2, :cond_31
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnyGetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
if-nez v0, :cond_14
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
:cond_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
:cond_19
:goto_19
return-void
:cond_1a
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAsValueAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
if-nez v0, :cond_2b
new-instance v0, Ljava/util/LinkedList;
invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
:cond_2b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_19
:cond_31
if-nez p2, :cond_5f
move-object v0, v1
:goto_34
if-nez v0, :cond_64
:goto_36
if-nez v1, :cond_72
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForRegularGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_69
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForIsGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_19
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isIsGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v0
move-object v3, v2
move v2, v0
:goto_54
if-nez p2, :cond_86
const/4 v0, 0x0
:goto_57
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v3
invoke-virtual {v3, p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
goto :goto_19
:cond_5f
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForSerialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
goto :goto_34
:cond_64
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v1
goto :goto_36
:cond_69
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isGetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v0
move-object v3, v2
move v2, v0
goto :goto_54
:cond_72
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForGetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7c
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v0
:cond_7c
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_83
move-object v1, v0
:cond_83
const/4 v2, 0x1
move-object v3, v0
goto :goto_54
:cond_86
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v0
goto :goto_57
.end method
.method protected _addInjectables()V
.registers 6
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v1, :cond_5
:cond_4
return-void
:cond_5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->fields()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
goto :goto_f
:cond_23
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2d
:cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_2d
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v3, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
goto :goto_2d
.end method
.method protected _addMethods()V
.registers 6
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->memberMethods()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_c
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_45
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v3
if-nez v3, :cond_22
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addGetterMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
goto :goto_c
:cond_22
const/4 v4, 0x1
if-ne v3, v4, :cond_29
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addSetterMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
goto :goto_c
:cond_29
const/4 v4, 0x2
if-ne v3, v4, :cond_c
if-eqz v1, :cond_c
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasAnySetterAnnotation(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v3
if-eqz v3, :cond_c
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
if-nez v3, :cond_3f
new-instance v3, Ljava/util/LinkedList;
invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V
iput-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
:cond_3f
iget-object v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
goto :goto_c
:cond_45
return-void
.end method
.method protected _addSetterMethod(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)V
.registers 7
const/4 v1, 0x0
if-nez p2, :cond_11
move-object v0, v1
:goto_4
if-nez v0, :cond_16
:goto_6
if-nez v1, :cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_1b
:goto_10
return-void
:cond_11
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
goto :goto_4
:cond_16
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v1
goto :goto_6
:cond_1b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_visibilityChecker:Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
invoke-interface {v0, p1}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isSetterVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Z
move-result v0
move-object v3, v2
move v2, v0
:goto_23
if-nez p2, :cond_44
const/4 v0, 0x0
:goto_26
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v3
invoke-virtual {v3, p1, v1, v2, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addSetter(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;ZZ)V
goto :goto_10
:cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_mutatorPrefix:Ljava/lang/String;
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/BeanUtil;->okNameForMutator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_3a
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getName()Ljava/lang/String;
move-result-object v0
:cond_3a
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_41
move-object v1, v0
:cond_41
const/4 v2, 0x1
move-object v3, v0
goto :goto_23
:cond_44
invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasIgnoreMarker(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v0
goto :goto_26
.end method
.method protected _doAddInjectable(Ljava/lang/Object;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
.registers 7
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;
if-nez v0, :cond_e
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;
:cond_e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-eqz v0, :cond_2
if-nez p1, :cond_45
const-string v0, "[null]"
:goto_1c
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Duplicate injectable value with id \'"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' (of type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_45
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_1c
.end method
.method protected _property(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
if-nez v0, :cond_18
new-instance v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
invoke-direct {v0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Z)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_18
return-object v0
.end method
.method protected _removeUnwantedProperties()V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->INFER_PROPERTY_MUTATORS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-nez v0, :cond_32
const/4 v0, 0x1
move v1, v0
:goto_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_64
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->anyVisible()Z
move-result v3
if-nez v3, :cond_35
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_16
:cond_32
const/4 v0, 0x0
move v1, v0
goto :goto_16
:cond_35
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->anyIgnorals()Z
move-result v3
if-eqz v3, :cond_60
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->isExplicitlyIncluded()Z
move-result v3
if-nez v3, :cond_4c
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addIgnored(Ljava/lang/String;)V
goto :goto_16
:cond_4c
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeIgnored()V
iget-boolean v3, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
if-nez v3, :cond_60
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->couldDeserialize()Z
move-result v3
if-nez v3, :cond_60
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v3
invoke-direct {p0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addIgnored(Ljava/lang/String;)V
:cond_60
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->removeNonVisible(Z)V
goto :goto_16
:cond_64
return-void
.end method
.method protected _renameProperties()V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
const/4 v1, 0x0
:goto_b
:cond_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->findNewName()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_b
if-nez v1, :cond_2a
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:cond_2a
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_b
:cond_35
if-eqz v1, :cond_89
invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_3b
:cond_3b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_89
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
if-nez v0, :cond_81
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
if-eqz v0, :cond_3b
const/4 v0, 0x0
move v2, v0
:goto_61
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
if-ge v2, v0, :cond_3b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;
move-result-object v4
if-ne v0, v4, :cond_85
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v0, v2, v1}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;
goto :goto_3b
:cond_81
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
goto :goto_5b
:cond_85
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_61
:cond_89
return-void
.end method
.method protected _renameUsing(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
.registers 9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I
move-result v1
new-array v1, v1, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
array-length v5, v0
const/4 v1, 0x0
move v4, v1
:goto_1c
if-ge v4, v5, :cond_b9
aget-object v3, v0, v4
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v1
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
if-eqz v2, :cond_6d
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasGetter()Z
move-result v2
if-eqz v2, :cond_5b
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
:goto_39
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_48
invoke-virtual {v3, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v1
move-object v3, v1
:cond_48
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
if-nez v1, :cond_b5
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_57
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_1c
:cond_5b
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasField()Z
move-result v2
if-eqz v2, :cond_ba
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_39
:cond_6d
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasSetter()Z
move-result v2
if-eqz v2, :cond_7f
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getSetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForSetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_39
:cond_7f
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasConstructorParameter()Z
move-result v2
if-eqz v2, :cond_91
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getConstructorParameter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForConstructorParameter(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_39
:cond_91
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasField()Z
move-result v2
if-eqz v2, :cond_a3
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getField()Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForField(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedField;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_39
:cond_a3
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->hasGetter()Z
move-result v2
if-eqz v2, :cond_ba
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v6
invoke-virtual {p1, v2, v6, v1}, Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;->nameForGetterMethod(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
move-object v2, v1
goto :goto_39
:cond_b5
invoke-virtual {v1, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
goto :goto_57
:cond_b9
return-void
:cond_ba
move-object v2, v1
goto/16 :goto_39
.end method
.method protected _renameWithWrappers()V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
const/4 v1, 0x0
:cond_b
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getPrimaryMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v3
if-eqz v3, :cond_b
iget-object v4, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
invoke-virtual {v4, v3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findWrapperName(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v3
if-eqz v3, :cond_b
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->hasSimpleName()Z
move-result v4
if-eqz v4, :cond_b
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_b
if-nez v1, :cond_46
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
:cond_46
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->withName(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_b
:cond_51
if-eqz v1, :cond_7b
invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_57
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_7b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v3
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
if-nez v1, :cond_77
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_57
:cond_77
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->addAll(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;)V
goto :goto_57
:cond_7b
return-void
.end method
.method protected _sortProperties()V
.registers 12
const/4 v0, 0x0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v2, :cond_1a
move-object v1, v0
:goto_6
if-nez v1, :cond_21
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->shouldSortPropertiesAlphabetically()Z
move-result v1
:goto_e
if-nez v2, :cond_26
move-object v5, v0
:goto_11
if-nez v1, :cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
if-nez v0, :cond_2e
if-nez v5, :cond_2e
:goto_19
return-void
:cond_1a
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationSortAlphabetically(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Boolean;
move-result-object v1
goto :goto_6
:cond_21
invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
goto :goto_e
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findSerializationPropertyOrder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)[Ljava/lang/String;
move-result-object v0
move-object v5, v0
goto :goto_11
:cond_2e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I
move-result v3
if-eqz v1, :cond_5a
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
move-object v2, v0
:goto_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_46
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v4
invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_46
:cond_5a
new-instance v0, Ljava/util/LinkedHashMap;
add-int v1, v3, v3
invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V
move-object v2, v0
goto :goto_3c
:cond_63
new-instance v6, Ljava/util/LinkedHashMap;
add-int v0, v3, v3
invoke-direct {v6, v0}, Ljava/util/LinkedHashMap;-><init>(I)V
if-eqz v5, :cond_ab
array-length v7, v5
const/4 v0, 0x0
move v4, v0
:goto_6f
if-ge v4, v7, :cond_ab
aget-object v3, v5, v4
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
if-nez v0, :cond_d8
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_85
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_d8
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getInternalName()Ljava/lang/String;
move-result-object v9
invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_85
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v0
move-object v10, v1
move-object v1, v0
move-object v0, v10
:goto_a2
if-eqz v0, :cond_a7
invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_a7
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_6f
:cond_ab
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
if-eqz v0, :cond_c9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_creatorProperties:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b5
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_c9
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->getName()Ljava/lang/String;
move-result-object v3
invoke-interface {v6, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_b5
:cond_c9
invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0, v6}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V
goto/16 :goto_19
:cond_d8
move-object v1, v3
goto :goto_a2
.end method
.method public collect()Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addFields()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addMethods()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addCreators()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_addInjectables()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_removeUnwantedProperties()V
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameProperties()V
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_findNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
move-result-object v0
if-eqz v0, :cond_20
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameUsing(Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;)V
:cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->trimByVisibility()V
goto :goto_2a
:cond_3a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_44
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_56
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_forSerialization:Z
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;->mergeAnnotations(Z)V
goto :goto_44
:cond_56
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
sget-object v1, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_WRAPPER_NAME_AS_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
if-eqz v0, :cond_63
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_renameWithWrappers()V
:cond_63
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_sortProperties()V
return-object p0
.end method
.method public findPOJOBuilderClass()Ljava/lang/Class;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
return-object v0
.end method
.method public getAnyGetter()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
if-le v0, v3, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Multiple \'any-getters\' defined ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " vs "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V
:cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anyGetters:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
:goto_44
return-object v0
:cond_45
const/4 v0, 0x0
goto :goto_44
.end method
.method public getAnySetterMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 5
const/4 v3, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
if-le v0, v3, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Multiple \'any-setters\' defined ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " vs "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V
:cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_anySetters:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
:goto_44
return-object v0
:cond_45
const/4 v0, 0x0
goto :goto_44
.end method
.method public getClassDef()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
return-object v0
.end method
.method public getConfig()Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_config:Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
return-object v0
.end method
.method public getIgnoredPropertyNames()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_ignoredPropertyNames:Ljava/util/HashSet;
return-object v0
.end method
.method public getInjectables()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_injectables:Ljava/util/LinkedHashMap;
return-object v0
.end method
.method public getJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 5
const/4 v3, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
if-eqz v0, :cond_45
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
move-result v0
if-le v0, v3, :cond_3c
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Multiple value properties defined ("
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " vs "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
invoke-virtual {v1, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->reportProblem(Ljava/lang/String;)V
:cond_3c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_jsonValueGetters:Ljava/util/LinkedList;
invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
:goto_44
return-object v0
:cond_45
const/4 v0, 0x0
goto :goto_44
.end method
.method public getObjectIdInfo()Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
if-nez v0, :cond_6
const/4 v0, 0x0
:cond_5
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v0
if-eqz v0, :cond_5
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_annotationIntrospector:Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v1, v2, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v0
goto :goto_5
.end method
.method public getProperties()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method protected getPropertyMap()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_properties:Ljava/util/LinkedHashMap;
return-object v0
.end method
.method public getType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_type:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method protected reportProblem(Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Problem with definition of "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertiesCollector;->_classDef:Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method