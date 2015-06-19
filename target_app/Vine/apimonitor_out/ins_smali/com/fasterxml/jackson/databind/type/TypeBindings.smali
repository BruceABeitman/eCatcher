.class public Lcom/fasterxml/jackson/databind/type/TypeBindings;
.super Ljava/lang/Object;
.source "TypeBindings.java"
.field private static final NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;
.field public static final UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;
.field protected _bindings:Ljava/util/Map;
.field protected final _contextClass:Ljava/lang/Class;
.field protected final _contextType:Lcom/fasterxml/jackson/databind/JavaType;
.field private final _parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
.field protected _placeholders:Ljava/util/HashSet;
.field protected final _typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
.method static constructor <clinit>()V
.registers 2
const/4 v0, 0x0
new-array v0, v0, [Lcom/fasterxml/jackson/databind/JavaType;
sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;
new-instance v0, Lcom/fasterxml/jackson/databind/type/SimpleType;
const-class v1, Ljava/lang/Object;
invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/type/SimpleType;-><init>(Ljava/lang/Class;)V
sput-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-direct {p0, p1, v0, v1, p2}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V
return-void
.end method
.method private constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iput-object p2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
iput-object p3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
iput-object p4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
return-void
.end method
.method public constructor <init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Ljava/lang/Class;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V
return-void
.end method
.method public _addPlaceholder(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;
if-nez v0, :cond_b
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;
:cond_b
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
return-void
.end method
.method protected _resolve()V
.registers 5
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeCount()I
move-result v1
if-lez v1, :cond_26
const/4 v0, 0x0
:goto_12
if-ge v0, v1, :cond_26
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedTypeName(I)Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v3, v0}, Lcom/fasterxml/jackson/databind/JavaType;->containedType(I)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v3
invoke-virtual {p0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
add-int/lit8 v0, v0, 0x1
goto :goto_12
:cond_26
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v0, :cond_30
invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;
move-result-object v0
iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
:cond_30
return-void
.end method
.method protected _resolveBindings(Ljava/lang/reflect/Type;)V
.registers 11
const/4 v2, 0x0
if-nez p1, :cond_4
:cond_3
return-void
:cond_4
instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_a7
check-cast p1, Ljava/lang/reflect/ParameterizedType;
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v1
if-eqz v1, :cond_8b
array-length v0, v1
if-lez v0, :cond_8b
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v0
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;
move-result-object v3
array-length v4, v3
array-length v5, v1
if-eq v4, v5, :cond_5a
new-instance v2, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Strange parametrized type (in class "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v4, "): number of type arguments != number of type parameters ("
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
array-length v1, v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " vs "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
array-length v1, v3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ")"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:cond_5a
array-length v4, v1
move v0, v2
:goto_5c
if-ge v0, v4, :cond_8b
aget-object v5, v3, v0
invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v5
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v6, :cond_82
new-instance v6, Ljava/util/LinkedHashMap;
invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
:cond_6f
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
aget-object v8, v1, v0
invoke-virtual {v7, v8, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v7
invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_7f
add-int/lit8 v0, v0, 0x1
goto :goto_5c
:cond_82
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_6f
goto :goto_7f
:cond_8b
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v0
check-cast v0, Ljava/lang/Class;
:goto_91
invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V
invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;
move-result-object v0
array-length v1, v0
:goto_9d
if-ge v2, v1, :cond_3
aget-object v3, v0, v2
invoke-virtual {p0, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V
add-int/lit8 v2, v2, 0x1
goto :goto_9d
:cond_a7
instance-of v0, p1, Ljava/lang/Class;
if-eqz v0, :cond_3
check-cast p1, Ljava/lang/Class;
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_c0
invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_c0
invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolveBindings(Ljava/lang/reflect/Type;)V
:cond_c0
invoke-virtual {p1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;
move-result-object v3
if-eqz v3, :cond_123
array-length v0, v3
if-lez v0, :cond_123
const/4 v0, 0x0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v1, :cond_e2
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->getRawClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_e2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0, v1, p1}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->findTypeParameters(Lcom/fasterxml/jackson/databind/JavaType;Ljava/lang/Class;)[Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
:cond_e2
move v1, v2
:goto_e3
array-length v4, v3
if-ge v1, v4, :cond_123
aget-object v4, v3, v1
invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v5
invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;
move-result-object v4
aget-object v4, v4, v2
if-eqz v4, :cond_10b
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v6, :cond_10e
new-instance v6, Ljava/util/LinkedHashMap;
invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
:cond_ff
invoke-virtual {p0, v5}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_addPlaceholder(Ljava/lang/String;)V
if-eqz v0, :cond_117
iget-object v4, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
aget-object v6, v0, v1
invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_10b
:goto_10b
add-int/lit8 v1, v1, 0x1
goto :goto_e3
:cond_10e
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_ff
goto :goto_10b
:cond_117
iget-object v6, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
iget-object v7, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
invoke-virtual {v7, v4, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v4
invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_10b
:cond_123
move-object v0, p1
goto/16 :goto_91
.end method
.method public addBinding(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)V
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_13
:cond_c
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
iput-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
:cond_13
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public childInstance()Lcom/fasterxml/jackson/databind/type/TypeBindings;
.registers 5
new-instance v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
iget-object v3, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-direct {v0, v1, p0, v2, v3}, Lcom/fasterxml/jackson/databind/type/TypeBindings;-><init>(Lcom/fasterxml/jackson/databind/type/TypeFactory;Lcom/fasterxml/jackson/databind/type/TypeBindings;Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JavaType;)V
return-object v0
.end method
.method public findType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 6
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_12
:goto_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_placeholders:Ljava/util/HashSet;
invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_21
sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_11
:cond_21
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_parentBindings:Lcom/fasterxml/jackson/databind/type/TypeBindings;
invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->findType(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
goto :goto_11
:cond_2c
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_47
sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->UNBOUND:Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_11
:cond_47
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
if-eqz v0, :cond_7a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
:goto_51
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Type variable \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "\' can not be resolved (with context of class "
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
:cond_7a
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v0, :cond_85
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_51
:cond_85
const-string v0, "UNKNOWN"
goto :goto_51
.end method
.method public getBindingCount()I
.registers 2
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
return v0
.end method
.method public resolveType(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public resolveType(Ljava/lang/reflect/Type;)Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_typeFactory:Lcom/fasterxml/jackson/databind/type/TypeFactory;
invoke-virtual {v0, p1, p0}, Lcom/fasterxml/jackson/databind/type/TypeFactory;->_constructType(Ljava/lang/reflect/Type;Lcom/fasterxml/jackson/databind/type/TypeBindings;)Lcom/fasterxml/jackson/databind/JavaType;
move-result-object v0
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 4
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V
:cond_7
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[TypeBindings for "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextType:Lcom/fasterxml/jackson/databind/JavaType;
invoke-virtual {v1}, Lcom/fasterxml/jackson/databind/JavaType;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:goto_1b
const-string v1, ": "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "]"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_31
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_contextClass:Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
.end method
.method public typesAsArray()[Lcom/fasterxml/jackson/databind/JavaType;
.registers 3
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
if-nez v0, :cond_7
invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_resolve()V
:cond_7
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->NO_TYPES:[Lcom/fasterxml/jackson/databind/JavaType;
:goto_11
return-object v0
:cond_12
iget-object v0, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v0
iget-object v1, p0, Lcom/fasterxml/jackson/databind/type/TypeBindings;->_bindings:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->size()I
move-result v1
new-array v1, v1, [Lcom/fasterxml/jackson/databind/JavaType;
invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/fasterxml/jackson/databind/JavaType;
goto :goto_11
.end method