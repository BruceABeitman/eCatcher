.class public final Lcom/google/gson/internal/ConstructorConstructor;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"
.field private final instanceCreators:Ljava/util/Map;
.method public constructor <init>(Ljava/util/Map;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;
return-void
.end method
.method private newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.registers 5
const/4 v2, 0x0
:try_start_1
new-array v2, v2, [Ljava/lang/Class;
invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->isAccessible()Z
move-result v2
if-nez v2, :cond_11
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
:cond_11
new-instance v2, Lcom/google/gson/internal/ConstructorConstructor$3;
invoke-direct {v2, p0, v0}, Lcom/google/gson/internal/ConstructorConstructor$3;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
:goto_16
:try_end_16
.catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_16} :catch_17
return-object v2
:catch_17
move-exception v1
const/4 v2, 0x0
goto :goto_16
.end method
.method private newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.registers 6
const-class v0, Ljava/util/Collection;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_46
const-class v0, Ljava/util/SortedSet;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$4;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$4;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
:goto_15
return-object v0
:cond_16
const-class v0, Ljava/util/EnumSet;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_24
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$5;
invoke-direct {v0, p0, p1}, Lcom/google/gson/internal/ConstructorConstructor$5;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
goto :goto_15
:cond_24
const-class v0, Ljava/util/Set;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_32
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$6;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$6;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_32
const-class v0, Ljava/util/Queue;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_40
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$7;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$7;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_40
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$8;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$8;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_46
const-class v0, Ljava/util/Map;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_85
const-class v0, Ljava/util/SortedMap;
invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_5c
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$9;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$9;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_5c
instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_7f
const-class v0, Ljava/lang/String;
check-cast p1, Ljava/lang/reflect/ParameterizedType;
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v1
const/4 v2, 0x0
aget-object v1, v1, v2
invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
move-result-object v1
invoke-virtual {v1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-nez v0, :cond_7f
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$10;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$10;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_7f
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$11;
invoke-direct {v0, p0}, Lcom/google/gson/internal/ConstructorConstructor$11;-><init>(Lcom/google/gson/internal/ConstructorConstructor;)V
goto :goto_15
:cond_85
const/4 v0, 0x0
goto :goto_15
.end method
.method private newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
.registers 4
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$12;
invoke-direct {v0, p0, p2, p1}, Lcom/google/gson/internal/ConstructorConstructor$12;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/Class;Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
.registers 9
invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v4
invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v2
iget-object v6, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;
invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/google/gson/InstanceCreator;
if-eqz v5, :cond_18
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$1;
invoke-direct {v0, p0, v5, v4}, Lcom/google/gson/internal/ConstructorConstructor$1;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
:cond_17
:goto_17
return-object v0
:cond_18
iget-object v6, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;
invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/gson/InstanceCreator;
if-eqz v3, :cond_28
new-instance v0, Lcom/google/gson/internal/ConstructorConstructor$2;
invoke-direct {v0, p0, v3, v4}, Lcom/google/gson/internal/ConstructorConstructor$2;-><init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
goto :goto_17
:cond_28
invoke-direct {p0, v2}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultConstructor(Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
move-result-object v0
if-nez v0, :cond_17
invoke-direct {p0, v4, v2}, Lcom/google/gson/internal/ConstructorConstructor;->newDefaultImplementationConstructor(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
move-result-object v1
if-eqz v1, :cond_36
move-object v0, v1
goto :goto_17
:cond_36
invoke-direct {p0, v4, v2}, Lcom/google/gson/internal/ConstructorConstructor;->newUnsafeAllocator(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/google/gson/internal/ObjectConstructor;
move-result-object v0
goto :goto_17
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor;->instanceCreators:Ljava/util/Map;
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method