.class public Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;
.super Ljava/lang/Object;
.source "BeanDeserializerBuilder.java"
.field protected _anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.field protected _backRefProperties:Ljava/util/HashMap;
.field protected final _beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
.field protected _buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.field protected _builderConfig:Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.field protected final _defaultViewInclusion:Z
.field protected _ignorableProps:Ljava/util/HashSet;
.field protected _ignoreAllUnknown:Z
.field protected _injectables:Ljava/util/List;
.field protected _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.field protected final _properties:Ljava/util/Map;
.field protected _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.method public constructor <init>(Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/DeserializationConfig;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->DEFAULT_VIEW_INCLUSION:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_defaultViewInclusion:Z
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_defaultViewInclusion:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_defaultViewInclusion:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
invoke-static {v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_copy(Ljava/util/HashMap;)Ljava/util/HashMap;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_builderConfig:Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_builderConfig:Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
return-void
.end method
.method private static _copy(Ljava/util/HashMap;)Ljava/util/HashMap;
.registers 2
if-nez p0, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
goto :goto_3
.end method
.method public addBackReferenceProperty(Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
if-nez v0, :cond_c
new-instance v0, Ljava/util/HashMap;
const/4 v1, 0x4
invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:cond_1e
return-void
.end method
.method public addCreatorProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-void
.end method
.method public addCreatorProperty(Lcom/fasterxml/jackson/databind/introspect/BeanPropertyDefinition;)V
.registers 2
return-void
.end method
.method public addIgnorable(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addInjectable(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V
.registers 13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;
if-nez v0, :cond_b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;
:cond_b
iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Ljava/lang/Object;)V
invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addOrReplaceProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Z)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
if-eqz v0, :cond_39
if-eq v0, p1, :cond_39
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Duplicate property \'"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\' for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_39
return-void
.end method
.method public build()Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 9
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
new-instance v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_defaultViewInclusion:Z
if-nez v2, :cond_4b
move v7, v1
:goto_14
if-nez v7, :cond_2d
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_1a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z
move-result v0
if-eqz v0, :cond_1a
move v7, v1
:cond_2d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_3c
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
move-result-object v3
:cond_3c
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z
move-object v1, p0
invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
return-object v0
:cond_4b
const/4 v7, 0x0
goto :goto_14
.end method
.method public buildAbstract()Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
invoke-direct {v0, p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/AbstractDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/util/Map;)V
return-object v0
.end method
.method public buildBuilderBased(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
const/4 v1, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
if-nez v0, :cond_34
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Builder class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getBeanClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " does not have build method \'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_34
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_85
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Build method \'"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getFullName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has bad return type ("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "), not compatible with POJO type ("
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ")"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_85
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
new-instance v3, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-direct {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;-><init>(Ljava/util/Collection;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->assignIndexes()Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_defaultViewInclusion:Z
if-nez v2, :cond_cf
move v7, v1
:goto_98
if-nez v7, :cond_b1
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b1
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasViews()Z
move-result v0
if-eqz v0, :cond_9e
move v7, v1
:cond_b1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_c0
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-direct {v0, v2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Z)V
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
move-result-object v3
:cond_c0
new-instance v0, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_beanDesc:Lcom/fasterxml/jackson/databind/BeanDescription;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_backRefProperties:Ljava/util/HashMap;
iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignorableProps:Ljava/util/HashSet;
iget-boolean v6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z
move-object v1, p0
invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/BuilderBasedDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
return-object v0
:cond_cf
const/4 v7, 0x0
goto :goto_98
.end method
.method public findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-object v0
.end method
.method public getAnySetter()Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
return-object v0
.end method
.method public getBuildMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
return-object v0
.end method
.method public getBuilderConfig()Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_builderConfig:Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
return-object v0
.end method
.method public getInjectables()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_injectables:Ljava/util/List;
return-object v0
.end method
.method public getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
return-object v0
.end method
.method public getProperties()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
return-object v0
.end method
.method public hasProperty(Ljava/lang/String;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public removeProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_properties:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
return-object v0
.end method
.method public setAnySetter(Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_e
if-eqz p1, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "_anySetter already set to non-null"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
return-void
.end method
.method public setIgnoreUnknownProperties(Z)V
.registers 2
iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_ignoreAllUnknown:Z
return-void
.end method
.method public setObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
return-void
.end method
.method public setPOJOBuilder(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;)V
.registers 3
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_buildMethod:Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_builderConfig:Lcom/fasterxml/jackson/databind/annotation/JsonPOJOBuilder$Value;
return-void
.end method
.method public setValueInstantiator(Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
.registers 2
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
return-void
.end method