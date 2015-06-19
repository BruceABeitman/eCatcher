.class public abstract Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;
.super Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field protected static final _arrayDeserializers:Ljava/util/HashMap; = null
.field static final _collectionFallbacks:Ljava/util/HashMap; = null
.field protected static final _keyDeserializers:Ljava/util/HashMap; = null
.field static final _mapFallbacks:Ljava/util/HashMap; = null
.field protected static final _simpleDeserializers:Ljava/util/HashMap; = null
.field private static final serialVersionUID:J = 0x1L
.field protected final _factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
.field protected optionalHandlers:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/PrimitiveArrayDeserializers;->getAll()Ljava/util/HashMap;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructAll()Ljava/util/HashMap;
move-result-object v0
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
const-class v1, Ljava/lang/Object;
new-instance v2, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;
invoke-direct {v2}, Lcom/fasterxml/jackson/databind/deser/std/UntypedObjectDeserializer;-><init>()V
invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;
invoke-direct {v0}, Lcom/fasterxml/jackson/databind/deser/std/StringDeserializer;-><init>()V
sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
const-class v2, Ljava/lang/String;
invoke-static {v1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
const-class v2, Ljava/lang/CharSequence;
invoke-static {v1, v2, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/NumberDeserializers;->all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/DateDeserializers;->all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/JdkDeserializers;->all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_simpleDeserializers:Ljava/util/HashMap;
invoke-static {}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;->all()[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;
move-result-object v1
invoke-static {v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/Map;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/LinkedHashMap;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/concurrent/ConcurrentMap;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/SortedMap;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/TreeMap;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
const-string v1, "java.util.NavigableMap"
const-class v2, Ljava/util/TreeMap;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_start_8b
const-string v0, "java.util.concurrent.ConcurrentNavigableMap"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v1, "java.util.concurrent.ConcurrentSkipListMap"
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_a0
:try_end_a0
.catch Ljava/lang/ClassNotFoundException; {:try_start_8b .. :try_end_a0} :catch_fb
.catch Ljava/lang/SecurityException; {:try_start_8b .. :try_end_a0} :catch_f9
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/Collection;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/ArrayList;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/List;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/ArrayList;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/Set;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/HashSet;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/SortedSet;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/TreeSet;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-class v1, Ljava/util/Queue;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
const-class v2, Ljava/util/LinkedList;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-string v1, "java.util.Deque"
const-class v2, Ljava/util/LinkedList;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
const-string v1, "java.util.NavigableSet"
const-class v2, Ljava/util/TreeSet;
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
:catch_f9
move-exception v0
goto :goto_a0
:catch_fb
move-exception v0
goto :goto_a0
.end method
.method protected constructor <init>(Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;)V
.registers 3
invoke-direct {p0}, Lcom/fasterxml/jackson/databind/deser/DeserializerFactory;-><init>()V
sget-object v0, Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;->instance:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
iput-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->optionalHandlers:Lcom/fasterxml/jackson/databind/ext/OptionalHandlerFactory;
iput-object p1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
return-void
.end method
.method private static _add(Ljava/util/Map;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
.registers 4
new-instance v0, Lcom/fasterxml/jackson/databind/type/ClassKey;
invoke-direct {v0, p1}, Lcom/fasterxml/jackson/databind/type/ClassKey;-><init>(Ljava/lang/Class;)V
invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private static _add(Ljava/util/Map;[Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
.registers 6
array-length v1, p1
const/4 v0, 0x0
:goto_2
if-ge v0, v1, :cond_10
aget-object v2, p1, v0
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;
move-result-object v3
invoke-static {p0, v3, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_add(Ljava/util/Map;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/std/StdDeserializer;)V
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_10
return-void
.end method
.method private _createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 9
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspect(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
if-eqz v2, :cond_17
invoke-static {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
:goto_16
return-object v0
:cond_17
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p0, v3, v1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v4
if-eqz v4, :cond_26
invoke-static {v1, p2, v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructDelegatingKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto :goto_16
:cond_26
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v2
invoke-virtual {p0, v3, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
move-result-object v2
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_36
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_bc
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v5
invoke-virtual {v5, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v5
if-eqz v5, :cond_36
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v4
const/4 v5, 0x1
if-ne v4, v5, :cond_93
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v4
if-eqz v4, :cond_93
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getGenericParameterType(I)Ljava/lang/reflect/Type;
move-result-object v3
const-class v4, Ljava/lang/String;
if-eq v3, v4, :cond_81
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Parameter #0 type for factory method ("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ") not suitable, must be java.lang.String"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_81
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v1
if-eqz v1, :cond_8e
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Method;
move-result-object v1
invoke-static {v1}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_8e
invoke-static {v2, v0}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto :goto_16
:cond_93
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Unsuitable method ("
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ") decorated with @JsonCreator (for Enum type "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
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
:cond_bc
invoke-static {v2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/util/EnumResolver;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto/16 :goto_16
.end method
.method private _findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 4
invoke-static {p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/JacksonDeserializers;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
return-object v0
.end method
.method private _mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 7
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasAbstractTypeResolvers()Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->abstractTypeResolvers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_16
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;
invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/AbstractTypeResolver;->findTypeMapping(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
if-eq v3, v1, :cond_16
:goto_2e
return-object v0
:cond_2f
const/4 v0, 0x0
goto :goto_2e
.end method
.method protected _addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;)V
.registers 23
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->findDefaultConstructor()Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
move-result-object v1
if-eqz v1, :cond_19
invoke-virtual/range {p5 .. p5}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->hasDefaultCreator()Z
move-result v2
if-eqz v2, :cond_14
move-object/from16 v0, p4
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v2
if-eqz v2, :cond_19
:cond_14
move-object/from16 v0, p5
invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_19
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getConstructors()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v16
:cond_21
:goto_21
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_f0
invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;
invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameterCount()I
move-result v5
move-object/from16 v0, p4
invoke-virtual {v0, v7}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v8
move-object/from16 v0, p3
invoke-interface {v0, v7}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v9
const/4 v1, 0x1
if-ne v5, v1, :cond_50
move-object/from16 v1, p0
move-object/from16 v2, p1
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v6, p5
invoke-virtual/range {v1 .. v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;ZZ)Z
goto :goto_21
:cond_50
if-nez v8, :cond_54
if-eqz v9, :cond_21
:cond_54
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v1, 0x0
new-array v6, v5, [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
const/4 v13, 0x0
:goto_5a
if-ge v13, v5, :cond_a9
invoke-virtual {v7, v13}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v14
if-nez v14, :cond_87
const/4 v4, 0x0
:goto_63
if-nez v4, :cond_8e
const/4 v12, 0x0
:goto_66
move-object/from16 v0, p4
invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v15
if-eqz v12, :cond_93
invoke-virtual {v12}, Ljava/lang/String;->length()I
move-result v4
if-lez v4, :cond_93
add-int/lit8 v2, v2, 0x1
move-object/from16 v9, p0
move-object/from16 v10, p1
move-object/from16 v11, p2
invoke-virtual/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v4
aput-object v4, v6, v13
move-object v14, v3
:cond_83
:goto_83
add-int/lit8 v13, v13, 0x1
move-object v3, v14
goto :goto_5a
:cond_87
move-object/from16 v0, p4
invoke-virtual {v0, v14}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v4
goto :goto_63
:cond_8e
invoke-virtual {v4}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v12
goto :goto_66
:cond_93
if-eqz v15, :cond_a5
add-int/lit8 v1, v1, 0x1
move-object/from16 v9, p0
move-object/from16 v10, p1
move-object/from16 v11, p2
invoke-virtual/range {v9 .. v15}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v4
aput-object v4, v6, v13
move-object v14, v3
goto :goto_83
:cond_a5
if-eqz v3, :cond_83
move-object v14, v3
goto :goto_83
:cond_a9
if-nez v8, :cond_af
if-gtz v2, :cond_af
if-lez v1, :cond_21
:cond_af
add-int v4, v2, v1
if-ne v4, v5, :cond_ba
move-object/from16 v0, p5
invoke-virtual {v0, v7, v6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
goto/16 :goto_21
:cond_ba
if-nez v2, :cond_c7
add-int/lit8 v1, v1, 0x1
if-ne v1, v5, :cond_c7
move-object/from16 v0, p5
invoke-virtual {v0, v7, v6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
goto/16 :goto_21
:cond_c7
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Argument #"
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " of constructor "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f0
return-void
.end method
.method protected _addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;)V
.registers 25
invoke-virtual/range {p1 .. p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v17
:cond_c
:goto_c
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_10e
invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-object/from16 v0, p4
invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v9
invoke-virtual {v8}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v7
if-nez v7, :cond_2c
if-eqz v9, :cond_c
move-object/from16 v0, p5
invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->setDefaultCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
goto :goto_c
:cond_2c
const/4 v2, 0x1
if-ne v7, v2, :cond_64
const/4 v2, 0x0
invoke-virtual {v8, v2}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v4
if-nez v4, :cond_58
const/4 v2, 0x0
:goto_37
if-nez v2, :cond_5f
const/4 v2, 0x0
:goto_3a
move-object/from16 v0, p4
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v4
if-nez v4, :cond_6c
if-eqz v2, :cond_4a
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-nez v2, :cond_6c
:cond_4a
move-object/from16 v2, p0
move-object/from16 v4, p2
move-object/from16 v5, p3
move-object/from16 v6, p4
move-object/from16 v7, p5
invoke-virtual/range {v2 .. v9}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_handleSingleArgumentFactory(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Z
goto :goto_c
:cond_58
move-object/from16 v0, p4
invoke-virtual {v0, v4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v2
goto :goto_37
:cond_5f
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v2
goto :goto_3a
:cond_64
move-object/from16 v0, p4
invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v2
if-eqz v2, :cond_c
:cond_6c
const/4 v5, 0x0
new-array v0, v7, [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-object/from16 v18, v0
const/4 v4, 0x0
const/4 v2, 0x0
const/4 v14, 0x0
:goto_74
if-ge v14, v7, :cond_c3
invoke-virtual {v8, v14}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v15
if-nez v15, :cond_a1
const/4 v6, 0x0
:goto_7d
if-nez v6, :cond_a8
const/4 v13, 0x0
:goto_80
move-object/from16 v0, p4
invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v16
if-eqz v13, :cond_ad
invoke-virtual {v13}, Ljava/lang/String;->length()I
move-result v6
if-lez v6, :cond_ad
add-int/lit8 v4, v4, 0x1
move-object/from16 v10, p0
move-object/from16 v11, p1
move-object/from16 v12, p2
invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v6
aput-object v6, v18, v14
move-object v15, v5
:goto_9d
:cond_9d
add-int/lit8 v14, v14, 0x1
move-object v5, v15
goto :goto_74
:cond_a1
move-object/from16 v0, p4
invoke-virtual {v0, v15}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v6
goto :goto_7d
:cond_a8
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v13
goto :goto_80
:cond_ad
if-eqz v16, :cond_bf
add-int/lit8 v2, v2, 0x1
move-object/from16 v10, p0
move-object/from16 v11, p1
move-object/from16 v12, p2
invoke-virtual/range {v10 .. v16}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v6
aput-object v6, v18, v14
move-object v15, v5
goto :goto_9d
:cond_bf
if-eqz v5, :cond_9d
move-object v15, v5
goto :goto_9d
:cond_c3
if-nez v9, :cond_c9
if-gtz v4, :cond_c9
if-lez v2, :cond_c
:cond_c9
add-int v6, v4, v2
if-ne v6, v7, :cond_d6
move-object/from16 v0, p5
move-object/from16 v1, v18
invoke-virtual {v0, v8, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
goto/16 :goto_c
:cond_d6
if-nez v4, :cond_e5
add-int/lit8 v2, v2, 0x1
if-ne v2, v7, :cond_e5
move-object/from16 v0, p5
move-object/from16 v1, v18
invoke-virtual {v0, v8, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
goto/16 :goto_c
:cond_e5
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Argument #"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I
move-result v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " of factory method "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " has no property name annotation; must have name when multiple-paramater constructor annotated as Creator"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_10e
return-void
.end method
.method protected _constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 10
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->canOverrideAccessModifiers()Z
move-result v0
new-instance v5, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;
invoke-direct {v5, p2, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;-><init>(Lcom/fasterxml/jackson/databind/BeanDescription;Z)V
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultVisibilityChecker()Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
invoke-virtual {v4, v1, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findAutoDetectVisibility(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;)Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;
move-result-object v3
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerFactoryMethods(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;)V
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isConcrete()Z
move-result v0
if-eqz v0, :cond_33
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_addDeserializerConstructors(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;)V
:cond_33
invoke-virtual {v5, v6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->constructValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
return-object v0
.end method
.method protected _findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_a
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_21
return-object v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method protected _findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_a
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_21
return-object v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method protected _findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v6
:cond_a
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
invoke-interface/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_21
return-object v0
:cond_22
const/4 v0, 0x0
goto :goto_21
.end method
.method protected _findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method protected _findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_a
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-interface/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method protected _findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 15
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_a
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-interface/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_22
return-object v0
:cond_23
const/4 v0, 0x0
goto :goto_22
.end method
.method protected _findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->deserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/Deserializers;
invoke-interface {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/deser/Deserializers;->findTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_a
:goto_1c
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method
.method protected _handleSingleArgumentConstructor(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;ZZ)Z
.registers 18
const/4 v0, 0x0
invoke-virtual {p6, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getParameter(I)Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;
move-result-object v5
if-nez v5, :cond_2c
const/4 v0, 0x0
:goto_8
if-nez v0, :cond_31
const/4 v3, 0x0
:goto_b
invoke-virtual {p4, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findInjectableValueId(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Ljava/lang/Object;
move-result-object v6
if-nez v6, :cond_19
if-eqz v3, :cond_36
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_36
:cond_19
const/4 v0, 0x1
new-array v7, v0, [Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
const/4 v8, 0x0
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v0
aput-object v0, v7, v8
invoke-virtual {p5, p6, v7}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addPropertyCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
const/4 v0, 0x1
:goto_2b
return v0
:cond_2c
invoke-virtual {p4, v5}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findNameForDeserialization(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/PropertyName;
move-result-object v0
goto :goto_8
:cond_31
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/PropertyName;->getSimpleName()Ljava/lang/String;
move-result-object v3
goto :goto_b
:cond_36
const/4 v0, 0x0
invoke-virtual {p6, v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedConstructor;->getRawParameterType(I)Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/String;
if-ne v0, v1, :cond_48
if-nez p7, :cond_43
if-eqz p8, :cond_46
:cond_43
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_46
const/4 v0, 0x1
goto :goto_2b
:cond_48
sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq v0, v1, :cond_50
const-class v1, Ljava/lang/Integer;
if-ne v0, v1, :cond_59
:cond_50
if-nez p7, :cond_54
if-eqz p8, :cond_57
:cond_54
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_57
const/4 v0, 0x1
goto :goto_2b
:cond_59
sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-eq v0, v1, :cond_61
const-class v1, Ljava/lang/Long;
if-ne v0, v1, :cond_6a
:cond_61
if-nez p7, :cond_65
if-eqz p8, :cond_68
:cond_65
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_68
const/4 v0, 0x1
goto :goto_2b
:cond_6a
sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-eq v0, v1, :cond_72
const-class v1, Ljava/lang/Double;
if-ne v0, v1, :cond_7b
:cond_72
if-nez p7, :cond_76
if-eqz p8, :cond_79
:cond_76
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_79
const/4 v0, 0x1
goto :goto_2b
:cond_7b
if-eqz p7, :cond_83
const/4 v0, 0x0
invoke-virtual {p5, p6, v0}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
const/4 v0, 0x1
goto :goto_2b
:cond_83
const/4 v0, 0x0
goto :goto_2b
.end method
.method protected _handleSingleArgumentFactory(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;Z)Z
.registers 12
const/4 v1, 0x0
const/4 v0, 0x1
invoke-virtual {p6, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawParameterType(I)Ljava/lang/Class;
move-result-object v2
const-class v3, Ljava/lang/String;
if-ne v2, v3, :cond_16
if-nez p7, :cond_12
invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v1
if-eqz v1, :cond_15
:cond_12
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addStringCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
:cond_15
:goto_15
return v0
:cond_16
sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
if-eq v2, v3, :cond_1e
const-class v3, Ljava/lang/Integer;
if-ne v2, v3, :cond_2a
:cond_1e
if-nez p7, :cond_26
invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v1
if-eqz v1, :cond_15
:cond_26
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addIntCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
goto :goto_15
:cond_2a
sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
if-eq v2, v3, :cond_32
const-class v3, Ljava/lang/Long;
if-ne v2, v3, :cond_3e
:cond_32
if-nez p7, :cond_3a
invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v1
if-eqz v1, :cond_15
:cond_3a
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addLongCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
goto :goto_15
:cond_3e
sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;
if-eq v2, v3, :cond_46
const-class v3, Ljava/lang/Double;
if-ne v2, v3, :cond_52
:cond_46
if-nez p7, :cond_4e
invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v1
if-eqz v1, :cond_15
:cond_4e
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDoubleCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
goto :goto_15
:cond_52
sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
if-eq v2, v3, :cond_5a
const-class v3, Ljava/lang/Boolean;
if-ne v2, v3, :cond_66
:cond_5a
if-nez p7, :cond_62
invoke-interface {p3, p6}, Lcom/fasterxml/jackson/databind/introspect/VisibilityChecker;->isCreatorVisible(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Z
move-result v1
if-eqz v1, :cond_15
:cond_62
invoke-virtual {p5, p6}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addBooleanCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;)V
goto :goto_15
:cond_66
invoke-virtual {p4, p6}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v2
if-eqz v2, :cond_71
const/4 v1, 0x0
invoke-virtual {p5, p6, v1}, Lcom/fasterxml/jackson/databind/deser/impl/CreatorCollector;->addDelegatingCreator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;[Lcom/fasterxml/jackson/databind/deser/CreatorProperty;)V
goto :goto_15
:cond_71
move v0, v1
goto :goto_15
.end method
.method public _valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 7
const/4 v0, 0x0
if-nez p3, :cond_5
move-object p3, v0
:goto_4
return-object p3
:cond_5
instance-of v1, p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
if-eqz v1, :cond_c
check-cast p3, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
goto :goto_4
:cond_c
instance-of v1, p3, Ljava/lang/Class;
if-nez v1, :cond_33
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned key deserializer definition of type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_33
check-cast p3, Ljava/lang/Class;
const-class v1, Lcom/fasterxml/jackson/databind/annotation/NoClass;
if-ne p3, v1, :cond_3b
move-object p3, v0
goto :goto_4
:cond_3b
const-class v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_62
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "AnnotationIntrospector returned Class "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "; expected Class<ValueInstantiator>"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_62
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getHandlerInstantiator()Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;
move-result-object v0
if-eqz v0, :cond_70
invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/databind/cfg/HandlerInstantiator;->valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
if-eqz v0, :cond_70
move-object p3, v0
goto :goto_4
:cond_70
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v0
invoke-static {p3, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-object p3, v0
goto :goto_4
.end method
.method protected constructCreatorProperty(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Ljava/lang/String;ILcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
.registers 16
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getTypeFactory()Lcom/fasterxml/jackson/databind/type/TypeFactory;
move-result-object v0
invoke-virtual {p5}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getParameterType()Ljava/lang/reflect/Type;
move-result-object v2
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->bindingsForBeanType()Lcom/fasterxml/jackson/databind/type/TypeBindings;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
new-instance v2, Lcom/fasterxml/jackson/databind/BeanProperty$Std;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
move-result-object v3
invoke-direct {v2, p3, v0, v3, p5}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)V
invoke-virtual {p0, p1, p2, v0, p5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
if-eq v3, v0, :cond_26
invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/databind/BeanProperty$Std;->withType(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanProperty$Std;
:cond_26
invoke-virtual {p0, p1, p5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v8
invoke-virtual {p0, p1, p5, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_4e
invoke-virtual {p0, v1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v3
:goto_3a
new-instance v0, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassAnnotations()Lcom/fasterxml/jackson/databind/util/Annotations;
move-result-object v4
move-object v1, p3
move-object v5, p5
move v6, p4
move-object v7, p6
invoke-direct/range {v0 .. v7}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/util/Annotations;Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;ILjava/lang/Object;)V
if-eqz v8, :cond_4d
invoke-virtual {v0, v8}, Lcom/fasterxml/jackson/databind/deser/CreatorProperty;->withValueDeserializer(Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/deser/CreatorProperty;
move-result-object v0
:cond_4d
return-object v0
:cond_4e
move-object v3, v0
goto :goto_3a
.end method
.method protected constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
.registers 6
if-eqz p3, :cond_14
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->canOverrideAccessModifiers()Z
move-result v1
if-eqz v1, :cond_f
invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_f
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingMethod(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
move-result-object v0
:goto_13
return-object v0
:cond_14
sget-object v0, Lcom/fasterxml/jackson/databind/DeserializationFeature;->READ_ENUMS_USING_TO_STRING:Lcom/fasterxml/jackson/databind/DeserializationFeature;
invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->isEnabled(Lcom/fasterxml/jackson/databind/DeserializationFeature;)Z
move-result v0
if-eqz v0, :cond_21
invoke-static {p1}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafeUsingToString(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
move-result-object v0
goto :goto_13
:cond_21
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-static {p1, v0}, Lcom/fasterxml/jackson/databind/util/EnumResolver;->constructUnsafe(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
move-result-object v0
goto :goto_13
.end method
.method public createArrayDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/ArrayType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-nez v5, :cond_48
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_arrayDeserializers:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
move-object v6, v0
check-cast v6, Lcom/fasterxml/jackson/databind/JsonDeserializer;
if-eqz v6, :cond_27
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
const/4 v4, 0x0
move-object v0, p0
move-object v1, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_26
move-object v6, v0
:goto_26
:cond_26
return-object v6
:cond_27
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->isPrimitive()Z
move-result v0
if-eqz v0, :cond_48
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Internal error: primitive type ("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") passed, no array deserializer found"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_48
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_6b
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v4
:goto_58
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
move-object v0, p0
move-object v1, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomArrayDeserializer(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v6
if-nez v6, :cond_26
new-instance v6, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;
invoke-direct {v6, p2, v5, v4}, Lcom/fasterxml/jackson/databind/deser/std/ObjectArrayDeserializer;-><init>(Lcom/fasterxml/jackson/databind/type/ArrayType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
goto :goto_26
:cond_6b
move-object v4, v0
goto :goto_58
.end method
.method public createCollectionDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v6
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_97
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v4
:goto_1a
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
move-object v0, p0
move-object v1, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_28
:goto_27
return-object v0
:cond_28
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->getRawClass()Ljava/lang/Class;
move-result-object v0
if-nez v5, :cond_3d
const-class v1, Ljava/util/EnumSet;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_3d
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;
const/4 v1, 0x0
invoke-direct {v0, v6, v1}, Lcom/fasterxml/jackson/databind/deser/std/EnumSetDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;)V
goto :goto_27
:cond_3d
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isInterface()Z
move-result v1
if-nez v1, :cond_49
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionType;->isAbstract()Z
move-result v1
if-eqz v1, :cond_7f
:cond_49
sget-object v1, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_collectionFallbacks:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Class;
if-nez v0, :cond_6c
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Can not find a deserializer for non-concrete Collection type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_6c
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/type/CollectionType;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object p3
move-object p2, v0
:cond_7f
invoke-virtual {p0, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v1
invoke-virtual {v6}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v2, Ljava/lang/String;
if-ne v0, v2, :cond_91
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;
invoke-direct {v0, p2, v5, v1}, Lcom/fasterxml/jackson/databind/deser/std/StringCollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
goto :goto_27
:cond_91
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;
invoke-direct {v0, p2, v5, v4, v1}, Lcom/fasterxml/jackson/databind/deser/std/CollectionDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)V
goto :goto_27
:cond_97
move-object v4, v0
goto :goto_1a
.end method
.method public createCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 10
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/CollectionLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_26
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v4
:goto_1a
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
move-object v0, p0
move-object v1, p2
move-object v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomCollectionLikeDeserializer(Lcom/fasterxml/jackson/databind/type/CollectionLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
return-object v0
:cond_26
move-object v4, v0
goto :goto_1a
.end method
.method public createEnumDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 9
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v1, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomEnumDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_f
:goto_e
return-object v0
:cond_f
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getFactoryMethods()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_70
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Z
move-result v3
if-eqz v3, :cond_17
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getParameterCount()I
move-result v2
const/4 v3, 0x1
if-ne v2, v3, :cond_47
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;->getRawReturnType()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_47
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
invoke-static {v2, v1, v0}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;->deserializerForCreator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_e
:cond_47
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Unsuitable method ("
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, ") decorated with @JsonCreator (for Enum type "
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_70
new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->findJsonValueMethod()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;
move-result-object v3
invoke-virtual {p0, v1, v2, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->constructEnumResolver(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMethod;)Lcom/fasterxml/jackson/databind/util/EnumResolver;
move-result-object v1
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/deser/std/EnumDeserializer;-><init>(Lcom/fasterxml/jackson/databind/util/EnumResolver;)V
goto :goto_e
.end method
.method public createKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v1
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasKeyDeserializers()Z
move-result v0
if-eqz v0, :cond_31
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->keyDeserializers()Ljava/lang/Iterable;
move-result-object v0
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_1e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_31
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;
invoke-interface {v0, p2, v1, v2}, Lcom/fasterxml/jackson/databind/deser/KeyDeserializers;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
if-eqz v0, :cond_1e
:goto_30
:cond_30
return-object v0
:cond_31
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v0
const-class v2, Ljava/lang/String;
if-eq v0, v2, :cond_3d
const-class v2, Ljava/lang/Object;
if-ne v0, v2, :cond_42
:cond_3d
invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->constructStringKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto :goto_30
:cond_42
sget-object v0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_keyDeserializers:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/KeyDeserializer;
if-nez v0, :cond_30
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isEnumType()Z
move-result v0
if-eqz v0, :cond_57
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_createEnumKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto :goto_30
:cond_57
invoke-static {v1, p2}, Lcom/fasterxml/jackson/databind/deser/std/StdKeyDeserializers;->findStringBasedKeyDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v0
goto :goto_30
.end method
.method public createMapDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 18
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v3
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v9
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/fasterxml/jackson/databind/KeyDeserializer;
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v1, :cond_b9
invoke-virtual {p0, v3, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v6
:goto_24
move-object v1, p0
move-object/from16 v2, p2
move-object/from16 v4, p3
invoke-virtual/range {v1 .. v7}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapDeserializer(Lcom/fasterxml/jackson/databind/type/MapType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v8
if-eqz v8, :cond_30
:goto_2f
return-object v8
:cond_30
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->getRawClass()Ljava/lang/Class;
move-result-object v1
const-class v2, Ljava/util/EnumMap;
invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_59
invoke-virtual {v9}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_48
invoke-virtual {v1}, Ljava/lang/Class;->isEnum()Z
move-result v1
if-nez v1, :cond_50
:cond_48
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Can not construct EnumMap; generic (key) type not available"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_50
new-instance v8, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;
const/4 v1, 0x0
move-object/from16 v0, p2
invoke-direct {v8, v0, v1, v7, v6}, Lcom/fasterxml/jackson/databind/deser/std/EnumMapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
goto :goto_2f
:cond_59
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isInterface()Z
move-result v2
if-nez v2, :cond_65
invoke-virtual/range {p2 .. p2}, Lcom/fasterxml/jackson/databind/type/MapType;->isAbstract()Z
move-result v2
if-eqz v2, :cond_b6
:cond_65
sget-object v2, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapFallbacks:Ljava/util/HashMap;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Class;
if-nez v1, :cond_8a
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Can not find a deserializer for non-concrete Map type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_8a
move-object/from16 v0, p2
invoke-virtual {v3, v0, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->constructSpecializedType(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
check-cast v1, Lcom/fasterxml/jackson/databind/type/MapType;
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectForCreation(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object p3
move-object v9, v1
:goto_97
move-object/from16 v0, p3
invoke-virtual {p0, p1, v0}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v10
new-instance v8, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;
move-object v11, v5
move-object v12, v7
move-object v13, v6
invoke-direct/range {v8 .. v13}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;-><init>(Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;)V
invoke-virtual {v3}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v1
invoke-virtual/range {p3 .. p3}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/fasterxml/jackson/databind/introspect/Annotated;)[Ljava/lang/String;
move-result-object v1
invoke-virtual {v8, v1}, Lcom/fasterxml/jackson/databind/deser/std/MapDeserializer;->setIgnorableProperties([Ljava/lang/String;)V
goto/16 :goto_2f
:cond_b6
move-object/from16 v9, p2
goto :goto_97
:cond_b9
move-object v6, v1
goto/16 :goto_24
.end method
.method public createMapLikeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 11
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/fasterxml/jackson/databind/JsonDeserializer;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/fasterxml/jackson/databind/KeyDeserializer;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getTypeHandler()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
if-nez v0, :cond_30
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v5
:goto_24
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
move-object v0, p0
move-object v1, p2
move-object v3, p3
invoke-virtual/range {v0 .. v6}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomMapLikeDeserializer(Lcom/fasterxml/jackson/databind/type/MapLikeType;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/KeyDeserializer;Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
return-object v0
:cond_30
move-object v5, v0
goto :goto_24
.end method
.method public createTreeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 6
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p0, v1, p1, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findCustomTreeNodeDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_b
:goto_a
return-object v0
:cond_b
invoke-static {v1}, Lcom/fasterxml/jackson/databind/deser/std/JsonNodeDeserializer;->getDeserializer(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_a
.end method
.method protected findDeserializerFromAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
.registers 4
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {p1, p2, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
goto :goto_b
.end method
.method public findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 8
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyContentTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-nez v1, :cond_13
invoke-virtual {p0, p1, v2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
:goto_12
return-object v0
:cond_13
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
move-result-object v3
invoke-virtual {v3, p3, p1, v0, v2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
move-result-object v0
invoke-interface {v1, p1, v2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
goto :goto_12
.end method
.method public findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {v0, p1, p3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findPropertyTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
if-nez v1, :cond_f
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
:goto_e
return-object v0
:cond_f
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
move-result-object v2
invoke-virtual {v2, p3, p1, v0, p2}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/util/Collection;
move-result-object v0
invoke-interface {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
goto :goto_e
.end method
.method public findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
.registers 8
const/4 v0, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/BeanDescription;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v2
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, p1, v2, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findTypeResolver(Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
if-nez v1, :cond_1e
invoke-virtual {p1, p2}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getDefaultTyper(Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
if-nez v1, :cond_26
:goto_1d
return-object v0
:cond_1e
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationConfig;->getSubtypeResolver()Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;
move-result-object v0
invoke-virtual {v0, v2, p1, v3}, Lcom/fasterxml/jackson/databind/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;Lcom/fasterxml/jackson/databind/cfg/MapperConfig;Lcom/fasterxml/jackson/databind/AnnotationIntrospector;)Ljava/util/Collection;
move-result-object v0
:cond_26
invoke-interface {v1}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->getDefaultImpl()Ljava/lang/Class;
move-result-object v2
if-nez v2, :cond_4a
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z
move-result v2
if-eqz v2, :cond_4a
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-eqz v2, :cond_4a
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_4a
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
invoke-interface {v1, v2}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->defaultImpl(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;
move-result-object v1
:cond_4a
invoke-interface {v1, p1, p2, v0}, Lcom/fasterxml/jackson/databind/jsontype/TypeResolverBuilder;->buildTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Ljava/util/Collection;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
goto :goto_1d
.end method
.method public findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
.registers 7
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v2
const/4 v0, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/BeanDescription;->getClassInfo()Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;
move-result-object v1
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findValueInstantiator(Lcom/fasterxml/jackson/databind/introspect/AnnotatedClass;)Ljava/lang/Object;
move-result-object v3
if-eqz v3, :cond_17
invoke-virtual {p0, v2, v1, v3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_valueInstantiatorInstance(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
:cond_17
if-nez v0, :cond_23
invoke-direct {p0, v2, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_findStdValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
if-nez v0, :cond_23
invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_constructDefaultValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v0
:cond_23
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->hasValueInstantiators()Z
move-result v1
if-eqz v1, :cond_6b
iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_factoryConfig:Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/cfg/DeserializerFactoryConfig;->valueInstantiators()Ljava/lang/Iterable;
move-result-object v1
invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v3
move-object v1, v0
:cond_36
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;
invoke-interface {v0, v2, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiators;->findValueInstantiator(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;)Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;
move-result-object v1
if-nez v1, :cond_36
new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Broken registered ValueInstantiators (of type "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "): returned null ValueInstantiator"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v1
:cond_6b
move-object v1, v0
:cond_6c
return-object v1
.end method
.method public mapAbstractType(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 7
:goto_0
invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->_mapAbstractType2(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
if-nez v0, :cond_7
return-object p2
:cond_7
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v2
if-eq v1, v2, :cond_17
invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-nez v1, :cond_3c
:cond_17
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Invalid abstract type resolution from "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " to "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, ": latter is not a subtype of former"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
move-object p2, v0
goto :goto_0
.end method
.method protected modifyTypeByAnnotation(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 12
const/4 v7, 0x0
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v3
invoke-virtual {v3, p2, p3}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v1
if-eqz v1, :cond_135
:try_start_b
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/JavaType;->narrowBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_e
.catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_e} :catch_3e
move-result-object v2
:goto_f
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v1
if-eqz v1, :cond_133
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
invoke-virtual {v3, p2, v1}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationKeyType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v4
if-eqz v4, :cond_130
instance-of v1, v2, Lcom/fasterxml/jackson/databind/type/MapLikeType;
if-nez v1, :cond_7e
new-instance v1, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Illegal key-type annotation: type "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " is not a Map(-like) type"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;)V
throw v1
:catch_3e
move-exception v2
new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v4, Ljava/lang/StringBuilder;
const-string v5, "Failed to narrow type "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " with concrete-type annotation (value "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "), method \'"
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "\': "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1, v7, v2}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
throw v3
:cond_7e
:try_start_7e
move-object v0, v2
check-cast v0, Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-object v1, v0
invoke-virtual {v1, v4}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->narrowKey(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_85
.catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_85} :catch_cc
move-result-object v1
:goto_86
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
if-eqz v2, :cond_a5
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_a5
invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v2
if-eqz v2, :cond_a5
check-cast v1, Lcom/fasterxml/jackson/databind/type/MapLikeType;
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object v1
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
:cond_a5
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v3, p2, v2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findDeserializationContentType(Lcom/fasterxml/jackson/databind/introspect/Annotated;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Class;
move-result-object v2
if-eqz v2, :cond_b3
:try_start_af
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->narrowContentsBy(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
:try_end_b2
.catch Ljava/lang/IllegalArgumentException; {:try_start_af .. :try_end_b2} :catch_fe
move-result-object v1
:cond_b3
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getContentType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v2
invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JavaType;->getValueHandler()Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_cb
invoke-virtual {v3, p2}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, p2, v2}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v2
if-eqz v2, :cond_cb
invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
:goto_cb
:cond_cb
return-object v1
:catch_cc
move-exception v1
new-instance v3, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to narrow key type "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v5, " with key-type annotation ("
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "): "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2, v7, v1}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
throw v3
:catch_fe
move-exception v3
new-instance v4, Lcom/fasterxml/jackson/databind/JsonMappingException;
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "Failed to narrow content type "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v5, " with content-type annotation ("
invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v4, v1, v7, v3}, Lcom/fasterxml/jackson/databind/JsonMappingException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;Ljava/lang/Throwable;)V
throw v4
:cond_130
move-object v1, v2
goto/16 :goto_86
:cond_133
move-object v1, v2
goto :goto_cb
:cond_135
move-object v2, p3
goto/16 :goto_f
.end method
.method protected resolveType(Lcom/fasterxml/jackson/databind/DeserializationContext;Lcom/fasterxml/jackson/databind/BeanDescription;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 7
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->isContainerType()Z
move-result v0
if-eqz v0, :cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getAnnotationIntrospector()Lcom/fasterxml/jackson/databind/AnnotationIntrospector;
move-result-object v0
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findKeyDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p1, p4, v1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->keyDeserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/KeyDeserializer;
move-result-object v1
if-eqz v1, :cond_23
check-cast p3, Lcom/fasterxml/jackson/databind/type/MapLikeType;
invoke-virtual {p3, v1}, Lcom/fasterxml/jackson/databind/type/MapLikeType;->withKeyValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/type/MapLikeType;
move-result-object p3
invoke-virtual {p3}, Lcom/fasterxml/jackson/databind/JavaType;->getKeyType()Lcom/fasterxml/jackson/databind/JavaType;
:cond_23
invoke-virtual {v0, p4}, Lcom/fasterxml/jackson/databind/AnnotationIntrospector;->findContentDeserializer(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, p4, v0}, Lcom/fasterxml/jackson/databind/DeserializationContext;->deserializerInstance(Lcom/fasterxml/jackson/databind/introspect/Annotated;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
move-result-object v0
if-eqz v0, :cond_31
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentValueHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p3
:cond_31
instance-of v0, p4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-eqz v0, :cond_43
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyContentTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
if-eqz v0, :cond_43
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withContentTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p3
:cond_43
instance-of v0, p4, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
if-eqz v0, :cond_56
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, p3, p4}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findPropertyTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
:goto_4f
if-eqz v0, :cond_55
invoke-virtual {p3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->withTypeHandler(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object p3
:cond_55
return-object p3
:cond_56
invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/DeserializationContext;->getConfig()Lcom/fasterxml/jackson/databind/DeserializationConfig;
move-result-object v0
invoke-virtual {p0, v0, p3}, Lcom/fasterxml/jackson/databind/deser/BasicDeserializerFactory;->findTypeDeserializer(Lcom/fasterxml/jackson/databind/DeserializationConfig;Lcom/fasterxml/jackson/databind/JavaType;)Lcom/fasterxml/jackson/databind/jsontype/TypeDeserializer;
move-result-object v0
goto :goto_4f
.end method