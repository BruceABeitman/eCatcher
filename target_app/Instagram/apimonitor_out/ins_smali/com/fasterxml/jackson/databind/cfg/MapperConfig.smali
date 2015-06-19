.class public abstract Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.super Ljava/lang/Object;
.source "MapperConfig.java"
.implements Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector$MixInResolver;
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x7b656637b7cdf9a9L
.field protected final _base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
.field protected final _mapperFeatures:I
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/BaseSettings;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iput p2, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I
return-void
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
iget v0, p1, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I
iput v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I
return-void
.end method
.method public static collectFeatureDefaults(Ljava/lang/Class;)I
.registers 7
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Enum;
array-length v5, v0
move v4, v1
move v3, v1
:goto_a
if-ge v4, v5, :cond_23
aget-object v2, v0, v4
move-object v1, v2
check-cast v1, Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;
invoke-interface {v1}, Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;->enabledByDefault()Z
move-result v1
if-eqz v1, :cond_24
check-cast v2, Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;
invoke-interface {v2}, Lcom/fasterxml/jackson/databind/cfg/ConfigFeature;->getMask()I
move-result v1
or-int/2addr v1, v3
:goto_1e
add-int/lit8 v2, v4, 0x1
move v4, v2
move v3, v1
goto :goto_a
:cond_23
return v3
:cond_24
move v1, v3
goto :goto_1e
.end method
.method public final canOverrideAccessModifiers()Z
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
return v0
.end method
.method public constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final constructType(Lcom/fasterxml/jackson/a/f/b;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 5
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-virtual {p1}, Lcom/fasterxml/jackson/a/f/b;->a()Ljava/lang/reflect/Type;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public final constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public abstract getActiveView()Ljava/lang/Class;
.end method
.method public getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
return-object v0
.end method
.method public getBase64Variant()Lcom/fasterxml/jackson/a/a;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getBase64Variant()Lcom/fasterxml/jackson/a/a;
move-result-object v0
return-object v0
.end method
.method public getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getClassIntrospector()Lcom/fasterxml/jackson/databind/introspect/ClassIntrospector;
move-result-object v0
return-object v0
.end method
.method public final getDateFormat()Ljava/text/DateFormat;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getDateFormat()Ljava/text/DateFormat;
move-result-object v0
return-object v0
.end method
.method public final getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeResolverBuilder()Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v0
return-object v0
.end method
.method public getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
return-object v0
.end method
.method public final getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
return-object v0
.end method
.method public final getLocale()Ljava/util/Locale;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getLocale()Ljava/util/Locale;
move-result-object v0
return-object v0
.end method
.method public final getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getPropertyNamingStrategy()Lcom/fasterxml/jackson/databind/PropertyNamingStrategy;
move-result-object v0
return-object v0
.end method
.method public abstract getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
.end method
.method public final getTimeZone()Ljava/util/TimeZone;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTimeZone()Ljava/util/TimeZone;
move-result-object v0
return-object v0
.end method
.method public final getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_base:Lcom/fasterxml/jackson/databind/cfg/BaseSettings;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/BaseSettings;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
return-object v0
.end method
.method public abstract introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.end method
.method public introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public abstract introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
.end method
.method public introspectDirectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
.registers 3
invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->constructType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->introspectDirectClassAnnotations(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
return-object v0
.end method
.method public final isAnnotationProcessingEnabled()Z
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->USE_ANNOTATIONS:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
return v0
.end method
.method public final isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
.registers 4
iget v0, p0, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->_mapperFeatures:I
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/MapperFeature;->getMask()I
move-result v1
and-int/2addr v0, v1
if-eqz v0, :cond_b
const/4 v0, 0x1
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final shouldSortPropertiesAlphabetically()Z
.registers 2
sget-object v0, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->isEnabled(Lcom/fasterxml/jackson/databind/MapperFeature;)Z
move-result v0
return v0
.end method
.method public typeIdResolverInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->typeIdResolverInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
move-result-object v0
if-eqz v0, :cond_d
:goto_c
return-object v0
:cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeIdResolver;
goto :goto_c
.end method
.method public typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
.registers 4
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0, p0, p1, p2}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->typeResolverBuilderInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v0
if-eqz v0, :cond_d
:goto_c
return-object v0
:cond_d
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/cfg/MapperConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p2, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
goto :goto_c
.end method
.method public abstract useRootWrapping()Z
.end method
.method public varargs abstract with([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.end method
.method public varargs abstract without([Lcom/fasterxml/jackson/databind/MapperFeature;)Lcom/fasterxml/jackson/databind/cfg/MapperConfig;
.end method