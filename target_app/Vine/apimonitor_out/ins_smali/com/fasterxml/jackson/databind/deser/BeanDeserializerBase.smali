.class public abstract Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.super Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
.source "BeanDeserializerBase.java"
.implements Lcom/fasterxml/jackson/databind/deser/ContextualDeserializer;
.implements Lcom/fasterxml/jackson/databind/deser/ResolvableDeserializer;
.implements Ljava/io/Serializable;
.field protected static final TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName; = null
.field private static final serialVersionUID:J = 0x291476536acb2fd2L
.field protected _anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
.field protected final _backRefs:Ljava/util/Map;
.field protected final _beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
.field protected final _beanType:Lcom/fasterxml/jackson/databind/JavaType;
.field private final transient _classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
.field protected _delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
.field protected _externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
.field protected final _ignorableProps:Ljava/util/HashSet;
.field protected final _ignoreAllUnknown:Z
.field protected final _injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
.field protected final _needViewProcesing:Z
.field protected _nonStandardCreation:Z
.field protected final _objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.field protected _propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
.field protected final _serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.field protected transient _subDeserializers:Ljava/util/HashMap;
.field protected _unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
.field protected final _valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.field protected _vanillaProcessing:Z
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/fasterxml/jackson/databind/PropertyName;
const-string v1, "#temporary-name"
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/PropertyName;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V
.registers 3
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)V
.registers 5
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-nez p2, :cond_4a
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
:goto_49
return-void
:cond_4a
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;
sget-object v1, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_REQUIRED:Lcom/fasterxml/jackson/databind/PropertyMetadata;
invoke-direct {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdValueProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
iget-object v1, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->withProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
goto :goto_49
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
.registers 6
const/4 v1, 0x0
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
if-nez p2, :cond_28
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
if-eqz v0, :cond_5a
:cond_28
const/4 v0, 0x1
:goto_29
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz p2, :cond_5c
if-eqz v0, :cond_45
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
move-result-object v0
:cond_45
iget-object v2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v2, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->renameAll(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
move-result-object v2
iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
:goto_4d
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-boolean v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
return-void
:cond_5a
move v0, v1
goto :goto_29
:cond_5c
iget-object v2, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iput-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
goto :goto_4d
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Ljava/util/HashSet;)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Z)V
.registers 4
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iput-boolean p2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iget-object v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iget-boolean v0, p1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;Ljava/util/Map;Ljava/util/HashSet;ZZ)V
.registers 13
const/4 v3, 0x1
const/4 v2, 0x0
const/4 v1, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-direct {p0, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;->getAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
iput-object p5, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
iput-boolean p6, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getAnySetter()Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getInjectables()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_3a
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v4
if-eqz v4, :cond_7f
:cond_3a
move-object v0, v1
:goto_3b
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBuilder;->getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-nez v0, :cond_5f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z
move-result v0
if-nez v0, :cond_5f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z
move-result v0
if-nez v0, :cond_5f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z
move-result v0
if-nez v0, :cond_8c
:cond_5f
move v0, v3
:goto_60
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->findExpectedFormat(Lcom/fasterxml/jackson/annotation/JsonFormat$Value;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-nez v0, :cond_8e
:goto_68
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
iput-boolean p7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
if-nez v0, :cond_93
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-nez v0, :cond_93
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
if-nez v0, :cond_93
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-nez v0, :cond_93
:goto_7c
iput-boolean v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
return-void
:cond_7f
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v4
new-array v4, v4, [Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
goto :goto_3b
:cond_8c
move v0, v2
goto :goto_60
:cond_8e
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v1
goto :goto_68
:cond_93
move v3, v2
goto :goto_7c
.end method
.method private throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;
.registers 6
move-object v0, p1
:goto_1
instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_1
:cond_10
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_17
check-cast v0, Ljava/lang/Error;
throw v0
:cond_17
if-eqz p2, :cond_21
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-eqz v1, :cond_2f
:cond_21
const/4 v1, 0x1
:goto_22
instance-of v2, v0, Ljava/io/IOException;
if-eqz v2, :cond_31
if-eqz v1, :cond_2c
instance-of v1, v0, Lcom/fasterxml/jackson/core/JsonProcessingException;
if-nez v1, :cond_3a
:cond_2c
check-cast v0, Ljava/io/IOException;
throw v0
:cond_2f
const/4 v1, 0x0
goto :goto_22
:cond_31
if-nez v1, :cond_3a
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_3a
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_3a
return-object v0
.end method
.method protected _convertObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
.registers 8
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
instance-of v1, p3, Ljava/lang/String;
if-eqz v1, :cond_1a
check-cast p3, Ljava/lang/String;
invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeString(Ljava/lang/String;)V
:goto_e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p4, v0, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
return-object v0
:cond_1a
instance-of v1, p3, Ljava/lang/Long;
if-eqz v1, :cond_28
check-cast p3, Ljava/lang/Long;
invoke-virtual {p3}, Ljava/lang/Long;->longValue()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(J)V
goto :goto_e
:cond_28
instance-of v1, p3, Ljava/lang/Integer;
if-eqz v1, :cond_36
check-cast p3, Ljava/lang/Integer;
invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeNumber(I)V
goto :goto_e
:cond_36
invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeObject(Ljava/lang/Object;)V
goto :goto_e
.end method
.method protected abstract _deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method protected _findSubclassDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 8
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_6
monitor-exit p0
if-eqz v0, :cond_1f
:goto_9
:cond_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;
new-instance v1, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JsonDeserializer;
goto :goto_6
:catchall_1c
move-exception v0
monitor-exit p0
:try_end_1e
.catchall {:try_start_1 .. :try_end_1e} :catchall_1c
throw v0
:cond_1f
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_9
monitor-enter p0
:try_start_2e
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;
if-nez v1, :cond_39
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iput-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;
:cond_39
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_subDeserializers:Ljava/util/HashMap;
new-instance v2, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-direct {v2, v3}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
monitor-exit p0
goto :goto_9
:catchall_49
move-exception v0
monitor-exit p0
:try_end_4b
.catchall {:try_start_2e .. :try_end_4b} :catchall_49
throw v0
.end method
.method protected _handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->getDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->handledType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-ne v1, v2, :cond_26
:goto_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p2, p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->bindItem(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->idProperty:Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
if-eqz v0, :cond_25
invoke-virtual {v0, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->setAndReturn(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p3
:cond_25
return-object p3
:cond_26
invoke-virtual {p0, p1, p2, p4, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_convertObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Ljava/lang/Object;
move-result-object p4
goto :goto_10
.end method
.method protected _resolveInnerClassValuedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 12
const/4 v1, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
instance-of v2, v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
if-eqz v2, :cond_54
check-cast v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z
move-result v0
if-nez v0, :cond_54
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->getOuterClass(Ljava/lang/Class;)Ljava/lang/Class;
move-result-object v2
if-eqz v2, :cond_54
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
if-ne v2, v3, :cond_54
invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;
move-result-object v3
array-length v4, v3
move v0, v1
:goto_31
if-ge v0, v4, :cond_54
aget-object v5, v3, v0
invoke-virtual {v5}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;
move-result-object v6
array-length v7, v6
const/4 v8, 0x1
if-ne v7, v8, :cond_55
aget-object v6, v6, v1
if-ne v6, v2, :cond_55
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
if-eqz v0, :cond_4e
invoke-static {v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_4e
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;
invoke-direct {v0, p2, v5}, Lcom/fasterxml/jackson/databind/deser/impl/InnerClassProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/reflect/Constructor;)V
move-object p2, v0
:cond_54
return-object p2
:cond_55
add-int/lit8 v0, v0, 0x1
goto :goto_31
.end method
.method protected _resolveManagedReferenceProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 10
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getManagedReferenceName()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_7
:goto_6
return-object p2
:cond_7
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->findBackReference(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v3
if-nez v3, :cond_38
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Can not handle managed/back reference \'"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\': no back reference property found from type "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_38
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v4
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v5
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v4, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v4
if-nez v4, :cond_97
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can not handle managed/back reference \'"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "\': back reference type ("
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") not compatible with managed type ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
:cond_97
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/ManagedReferenceProperty;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
move-object v1, p2
invoke-direct/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/impl/ManagedReferenceProperty;-><init>(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Ljava/lang/String;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/util/Annotations;Z)V
move-object p2, v0
goto/16 :goto_6
.end method
.method protected _resolveUnwrappedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 5
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findUnwrappingNameTransformer(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/util/NameTransformer;
move-result-object v0
if-eqz v0, :cond_21
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eq v0, v1, :cond_21
if-eqz v0, :cond_21
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
:goto_20
return-object v0
:cond_21
const/4 v0, 0x0
goto :goto_20
.end method
.method protected abstract asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.end method
.method public createContextual(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 12
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v6
if-eqz p2, :cond_b
if-nez v6, :cond_61
:cond_b
move-object v5, v2
:goto_c
if-eqz p2, :cond_d6
if-eqz v6, :cond_d6
invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
move-result-object v4
invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectIdInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v1
if-eqz v1, :cond_d3
invoke-virtual {v6, v5, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findObjectReferenceInfo(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;
move-result-object v7
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getGeneratorType()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/fasterxml/jackson/annotation/ObjectIdGenerators$PropertyGenerator;
if-ne v0, v1, :cond_b5
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
if-nez v1, :cond_67
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Invalid Object Id definition for "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handledType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ": can not find property with name \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "\'"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_61
invoke-interface {p2}, Lcom/fasterxml/jackson/databind/BeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
move-object v5, v1
goto :goto_c
:cond_67
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getScope()Ljava/lang/Class;
move-result-object v8
invoke-direct {v0, v8}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedObjectIdGenerator;-><init>(Ljava/lang/Class;)V
:goto_74
invoke-virtual {p1, v3}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findRootValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v8
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;->getPropertyName()Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v7
invoke-static {v3, v7, v0, v8, v1}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->construct(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
move-result-object v0
move-object v1, v0
move-object v0, v4
:goto_82
if-eqz v1, :cond_d1
iget-object v3, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eq v1, v3, :cond_d1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
move-result-object v1
:goto_8c
if-eqz v0, :cond_9b
array-length v3, v0
if-eqz v3, :cond_9b
iget-object v3, v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
invoke-static {v3, v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->setAndArray(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/HashSet;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
move-result-object v1
:cond_9b
if-eqz v5, :cond_cf
invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findFormat(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/annotation/JsonFormat$Value;
move-result-object v0
if-eqz v0, :cond_cf
invoke-virtual {v0}, Lcom/fasterxml/jackson/annotation/JsonFormat$Value;->getShape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
move-result-object v2
move-object v0, v2
:goto_a8
if-nez v0, :cond_ac
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_serializationShape:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
:cond_ac
sget-object v2, Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->ARRAY:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
if-ne v0, v2, :cond_cd
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->asArrayDeserializer()Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
move-result-object v0
:goto_b4
return-object v0
:cond_b5
invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v1
const-class v3, Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {v1, v0, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
const/4 v1, 0x0
aget-object v1, v0, v1
invoke-virtual {p1, v5, v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->objectIdGeneratorInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/introspect/ObjectIdInfo;)Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
move-result-object v0
move-object v3, v1
move-object v1, v2
goto :goto_74
:cond_cd
move-object v0, v1
goto :goto_b4
:cond_cf
move-object v0, v2
goto :goto_a8
:cond_d1
move-object v1, p0
goto :goto_8c
:cond_d3
move-object v1, v0
move-object v0, v4
goto :goto_82
:cond_d6
move-object v1, v0
move-object v0, v2
goto :goto_82
.end method
.method public creatorProperties()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-nez v0, :cond_d
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->properties()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
goto :goto_c
.end method
.method public deserializeFromArray(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_1c
:try_start_4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_17
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18
return-object v0
:catch_18
move-exception v0
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
:cond_1c
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getBeanClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeFromBoolean(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromBoolean()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_1f
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
:cond_1f
:goto_1f
return-object v0
:cond_20
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_TRUE:Lcom/fasterxml/jackson/core/JsonToken;
if-ne v0, v1, :cond_30
const/4 v0, 0x1
:goto_29
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromBoolean(Lcom/fasterxml/jackson/databind/DeserializationContext;Z)Ljava/lang/Object;
move-result-object v0
goto :goto_1f
:cond_30
const/4 v0, 0x0
goto :goto_29
.end method
.method public deserializeFromDouble(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_56
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_4b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:cond_1f
:goto_1f
return-object v0
:pswitch_20
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromDouble()Z
move-result v0
if-nez v0, :cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_1f
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_1f
:cond_40
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getDoubleValue()D
move-result-wide v1
invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromDouble(Lcom/fasterxml/jackson/databind/DeserializationContext;D)Ljava/lang/Object;
move-result-object v0
goto :goto_1f
:cond_4b
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getBeanClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "no suitable creator method found to deserialize from JSON floating-point number"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:pswitch_data_56
.packed-switch 0x3
:pswitch_20
:pswitch_20
.end packed-switch
.end method
.method public deserializeFromNumber(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
:cond_8
return-object v0
:cond_9
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase$1;->$SwitchMap$com$fasterxml$jackson$core$JsonParser$NumberType:[I
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getNumberType()Lcom/fasterxml/jackson/core/JsonParser$NumberType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonParser$NumberType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_92
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_86
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:pswitch_30
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z
move-result v0
if-nez v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getIntValue()I
move-result v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromInt(Lcom/fasterxml/jackson/databind/DeserializationContext;I)Ljava/lang/Object;
move-result-object v0
goto :goto_8
:pswitch_5b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromInt()Z
move-result v0
if-nez v0, :cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_7b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J
move-result-wide v1
invoke-virtual {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromLong(Lcom/fasterxml/jackson/databind/DeserializationContext;J)Ljava/lang/Object;
move-result-object v0
goto :goto_8
:cond_86
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getBeanClass()Ljava/lang/Class;
move-result-object v0
const-string v1, "no suitable creator method found to deserialize from JSON integer number"
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
nop
:pswitch_data_92
.packed-switch 0x1
:pswitch_30
:pswitch_5b
.end packed-switch
.end method
.method public abstract deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.end method
.method protected deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->readObjectReference(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->generator:Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;
invoke-virtual {p2, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findObjectId(Ljava/lang/Object;Lcom/fasterxml/jackson/annotation/ObjectIdGenerator;)Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;
move-result-object v1
iget-object v1, v1, Lcom/fasterxml/jackson/databind/deser/impl/ReadableObjectId;->item:Ljava/lang/Object;
if-nez v1, :cond_3d
new-instance v1, Ljava/lang/IllegalStateException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Could not resolve Object Id ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "] (for "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ") -- unresolved forward-reference?"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3d
return-object v1
.end method
.method protected deserializeFromObjectUsingNonDefault(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v0, :cond_1a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_10
:cond_1a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "Can not instantiate abstract type "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " (need to add/enable type information?)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
:cond_42
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "No suitable constructor found for type "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ": can not instantiate from JSON object (need to add/enable type information?)"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public deserializeFromString(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_9
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
if-eqz v1, :cond_8
invoke-virtual {p0, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
goto :goto_8
:cond_29
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getText()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
goto :goto_8
.end method
.method protected deserializeWithObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
iget-object v0, v0, Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;->propertyName:Lcom/fasterxml/jackson/databind/PropertyName;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z
move-result v0
if-eqz v0, :cond_1e
:cond_19
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
:goto_1d
return-object v0
:cond_1e
new-instance v1, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
move-object v0, v2
:goto_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v4
sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v4, v5, :cond_62
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v4
if-nez v0, :cond_58
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_4e
new-instance v0, Lcom/fasterxml/jackson/databind/util/TokenBuffer;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;-><init>(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->append(Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/util/TokenBuffer;
move-object v1, v2
:goto_4a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
goto :goto_24
:cond_4e
invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_4a
:cond_58
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeFieldName(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->copyCurrentStructure(Lcom/fasterxml/jackson/core/JsonParser;)V
goto :goto_4a
:cond_62
if-nez v0, :cond_73
:goto_64
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_1d
:cond_73
move-object v1, v0
goto :goto_64
.end method
.method public deserializeWithType(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)Ljava/lang/Object;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
if-eqz v0, :cond_2a
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->canReadObjectId()Z
move-result v0
if-eqz v0, :cond_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getObjectId()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0, p1, p2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_handleTypedObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_18
return-object v0
:cond_19
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonToken;->isScalarValue()Z
move-result v0
if-eqz v0, :cond_2a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserializeFromObjectId(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
:cond_2a
invoke-virtual {p3, p1, p2}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->deserializeTypedFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
move-result-object v0
goto :goto_18
.end method
.method public findBackReference(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_backRefs:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
goto :goto_5
.end method
.method protected findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationConverter(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getMember()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->converterInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/util/Converter;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-interface {v1, v0}, Lcom/fasterxml/jackson/databind/util/Converter;->getInputType(Lcom/fasterxml/jackson/databind/type/TypeFactory;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {p1, v2, p2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->findContextualValueDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v3
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;
invoke-direct {v0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/std/StdDelegatingDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/Converter;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
:goto_29
return-object v0
:cond_2a
const/4 v0, 0x0
goto :goto_29
.end method
.method public findProperty(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_5
if-nez v0, :cond_11
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v1, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
:cond_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(I)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
goto :goto_5
.end method
.method public findProperty(Lcom/fasterxml/jackson/databind/PropertyName;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 3
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
return-object v0
.end method
.method public findProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
if-nez v0, :cond_12
const/4 v0, 0x0
:goto_5
if-nez v0, :cond_11
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
if-eqz v1, :cond_11
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->findCreatorProperty(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
:cond_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
goto :goto_5
.end method
.method public final getBeanClass()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public getKnownPropertyNames()Ljava/util/Collection;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_1f
return-object v1
.end method
.method public getObjectIdReader()Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_objectIdReader:Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;
return-object v0
.end method
.method public getPropertyCount()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->size()I
move-result v0
return v0
.end method
.method public getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
return-object v0
.end method
.method public getValueType()Lcom/fasterxml/jackson/databind/JavaType;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
return-object v0
.end method
.method protected handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->FAIL_ON_IGNORED_PROPERTIES:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->getKnownPropertyNames()Ljava/util/Collection;
move-result-object v0
invoke-static {p1, p3, p4, v0}, Lcom/fasterxml/jackson/databind/exc/IgnoredPropertyException;->from(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/exc/IgnoredPropertyException;
move-result-object v0
throw v0
:cond_11
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
return-void
.end method
.method protected handlePolymorphic(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 7
invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_findSubclassDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
if-eqz v1, :cond_1d
if-eqz p4, :cond_2c
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {v1, v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_16
if-eqz p1, :cond_1c
invoke-virtual {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_1c
:cond_1c
return-object v0
:cond_1d
if-eqz p4, :cond_2a
invoke-virtual {p0, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
move-result-object v0
:goto_23
if-eqz p1, :cond_1c
invoke-virtual {p0, p1, p2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_1c
:cond_2a
move-object v0, p3
goto :goto_23
:cond_2c
move-object v0, p3
goto :goto_16
.end method
.method protected handleUnknownProperties(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Lcom/fasterxml/jackson/databind/util/TokenBuffer;)Ljava/lang/Object;
.registers 7
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->writeEndObject()V
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/util/TokenBuffer;->asParser()Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v0
:goto_7
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;
if-eq v1, v2, :cond_1a
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-virtual {p0, v0, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_7
:cond_1a
return-object p2
.end method
.method protected handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignoreAllUnknown:Z
if-eqz v0, :cond_8
invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;
:goto_7
return-void
:cond_8
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:cond_17
invoke-super {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_7
.end method
.method protected handleUnknownVanilla(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_ignorableProps:Ljava/util/HashSet;
invoke-virtual {v0, p4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleIgnoredProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_1f
:try_start_14
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
:try_end_19
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_19} :catch_1a
goto :goto_f
:catch_1a
move-exception v0
invoke-virtual {p0, v0, p3, p4, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
goto :goto_f
:cond_1f
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V
goto :goto_f
.end method
.method public handledType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
return-object v0
.end method
.method public hasProperty(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public hasViews()Z
.registers 2
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_needViewProcesing:Z
return v0
.end method
.method protected injectValues(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
.registers 7
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_injectables:[Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;
array-length v2, v1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_e
aget-object v3, v1, v0
invoke-virtual {v3, p1, p2}, Lcom/fasterxml/jackson/databind/deser/impl/ValueInjector;->inject(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_e
return-void
.end method
.method public isCachable()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public properties()Ljava/util/Iterator;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Can only call after BeanDeserializer has been resolved"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public replaceProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
return-void
.end method
.method public resolve(Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 12
const/4 v3, 0x0
const/4 v9, 0x1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromObjectWith()Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getFromObjectArguments(Lcom/fasterxml/jackson/databind/DeserializationConfig;)[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-static {p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->construct(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;[Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;->properties()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
move-object v1, v3
:goto_27
:cond_27
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_51
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z
move-result v4
if-eqz v4, :cond_27
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueTypeDeserializer()Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v4
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
move-result-object v5
sget-object v6, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
if-ne v5, v6, :cond_27
if-nez v1, :cond_4c
new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;-><init>()V
:cond_4c
invoke-virtual {v1, v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
goto :goto_27
:cond_50
move-object v1, v3
:cond_51
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->iterator()Ljava/util/Iterator;
move-result-object v2
move-object v7, v3
move-object v8, v1
:cond_59
:goto_59
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_d0
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueDeserializer()Z
move-result v1
if-nez v1, :cond_93
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findConvertingDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
if-nez v1, :cond_79
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {p0, p1, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
:cond_79
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
:goto_7d
invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveManagedReferenceProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveUnwrappedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v4
if-eqz v4, :cond_a2
if-nez v7, :cond_175
new-instance v0, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;-><init>()V
:goto_8e
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;->addProperty(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
move-object v7, v0
goto :goto_59
:cond_93
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueDeserializer()Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
invoke-virtual {p1, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handlePrimaryContextualization(Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v4
if-eq v4, v1, :cond_178
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v1
goto :goto_7d
:cond_a2
invoke-virtual {p0, p1, v1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_resolveInnerClassValuedProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
move-result-object v4
if-eq v4, v0, :cond_ad
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->replace(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
:cond_ad
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->hasValueTypeDeserializer()Z
move-result v0
if-eqz v0, :cond_59
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->getValueTypeDeserializer()Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;->getTypeInclusion()Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
move-result-object v1
sget-object v5, Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/fasterxml/jackson/annotation/JsonTypeInfo$As;
if-ne v1, v5, :cond_59
if-nez v8, :cond_172
new-instance v1, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;
invoke-direct {v1}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;-><init>()V
:goto_c6
invoke-virtual {v1, v4, v0}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->addExternal(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->remove(Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;)V
move-object v8, v1
goto :goto_59
:cond_d0
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
if-eqz v0, :cond_f4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->hasValueDeserializer()Z
move-result v0
if-nez v0, :cond_f4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->getProperty()Lcom/fasterxml/jackson/databind/BeanProperty;
move-result-object v2
invoke-virtual {p0, p1, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;
:cond_f4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDelegate()Z
move-result v0
if-eqz v0, :cond_154
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateType(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-nez v2, :cond_13d
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Invalid delegate-creator definition for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ": value instantiator ("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") returned true for \'canCreateUsingDelegate()\', but null for \'getDelegateType()\'"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13d
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->getDelegateCreator()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;
move-result-object v5
new-instance v0, Lcom/fasterxml/jackson/databind/BeanProperty$Std;
sget-object v1, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->TEMP_PROPERTY_NAME:Lcom/fasterxml/jackson/databind/PropertyName;
iget-object v4, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_classAnnotations:Lcom/fasterxml/jackson/databind/util/Annotations;
sget-object v6, Lcom/fasterxml/jackson/databind/PropertyMetadata;->STD_OPTIONAL:Lcom/fasterxml/jackson/databind/PropertyMetadata;
invoke-direct/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/PropertyName;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/PropertyMetadata;)V
invoke-virtual {p0, p1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->findDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanProperty;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;
:cond_154
if-eqz v8, :cond_15e
invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler$Builder;->build()Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_externalTypeIdHandler:Lcom/fasterxml/jackson/databind/deser/impl/ExternalTypeHandler;
iput-boolean v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
:cond_15e
iput-object v7, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_unwrappedPropertyHandler:Lcom/fasterxml/jackson/databind/deser/impl/UnwrappedPropertyHandler;
if-eqz v7, :cond_164
iput-boolean v9, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
:cond_164
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
if-eqz v0, :cond_170
iget-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_nonStandardCreation:Z
if-nez v0, :cond_170
move v0, v9
:goto_16d
iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_vanillaProcessing:Z
return-void
:cond_170
const/4 v0, 0x0
goto :goto_16d
:cond_172
move-object v1, v8
goto/16 :goto_c6
:cond_175
move-object v0, v7
goto/16 :goto_8e
:cond_178
move-object v1, v0
goto/16 :goto_7d
.end method
.method public abstract unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.end method
.method public abstract withIgnorableProperties(Ljava/util/HashSet;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.end method
.method public abstract withObjectIdReader(Lcom/fasterxml/jackson/databind/deser/impl/ObjectIdReader;)Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;
.end method
.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;ILcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 6
invoke-direct {p0, p1, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;I)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method public wrapAndThrow(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 6
invoke-direct {p0, p1, p4}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->throwOrReturnThrowable(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Throwable;
move-result-object v0
invoke-static {v0, p2, p3}, Lcom/fasterxml/jackson/databind/JsonMappingException;->wrapWithPath(Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method
.method protected wrapInstantiationProblem(Ljava/lang/Throwable;Lcom/fasterxml/jackson/databind/DeserializationContext;)V
.registers 6
move-object v0, p1
:goto_1
instance-of v1, v0, Ljava/lang/reflect/InvocationTargetException;
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_10
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_1
:cond_10
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_17
check-cast v0, Ljava/lang/Error;
throw v0
:cond_17
if-eqz p2, :cond_21
sget-object v1, Lcom/fasterxml/jackson/databind/DeserializationFeature;->WRAP_EXCEPTIONS:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v1
if-eqz v1, :cond_29
:cond_21
const/4 v1, 0x1
:goto_22
instance-of v2, v0, Ljava/io/IOException;
if-eqz v2, :cond_2b
check-cast v0, Ljava/io/IOException;
throw v0
:cond_29
const/4 v1, 0x0
goto :goto_22
:cond_2b
if-nez v1, :cond_34
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_34
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_34
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p2, v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->instantiationException(Ljava/lang/Class;Ljava/lang/Throwable;)Lcom/fasterxml/jackson/databind/JsonMappingException;
move-result-object v0
throw v0
.end method