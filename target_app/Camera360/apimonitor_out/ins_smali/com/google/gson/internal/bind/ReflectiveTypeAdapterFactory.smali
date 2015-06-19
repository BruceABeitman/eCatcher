.class public final Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"
.implements Lcom/google/gson/TypeAdapterFactory;
.field private final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
.field private final excluder:Lcom/google/gson/internal/Excluder;
.field private final fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/FieldNamingStrategy;Lcom/google/gson/internal/Excluder;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
iput-object p2, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;
iput-object p3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;
return-void
.end method
.method private createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
.registers 16
invoke-virtual {p4}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/google/gson/internal/Primitives;->isPrimitive(Ljava/lang/reflect/Type;)Z
move-result v8
new-instance v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;
move-object v1, p0
move-object v2, p3
move v3, p5
move v4, p6
move-object v5, p1
move-object v6, p4
move-object v7, p2
invoke-direct/range {v0 .. v8}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;-><init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/reflect/Field;Z)V
return-object v0
.end method
.method private getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
.registers 21
new-instance v16, Ljava/util/LinkedHashMap;
invoke-direct/range {v16 .. v16}, Ljava/util/LinkedHashMap;-><init>()V
invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z
move-result v1
if-eqz v1, :cond_c
:cond_b
return-object v16
:cond_c
invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v10
:goto_10
const-class v1, Ljava/lang/Object;
move-object/from16 v0, p3
if-eq v0, v1, :cond_b
invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v12
move-object v8, v12
array-length v14, v8
const/4 v13, 0x0
:goto_1d
if-ge v13, v14, :cond_86
aget-object v3, v8, v13
const/4 v1, 0x1
move-object/from16 v0, p0
invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z
move-result v6
const/4 v1, 0x0
move-object/from16 v0, p0
invoke-virtual {v0, v3, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excludeField(Ljava/lang/reflect/Field;Z)Z
move-result v7
if-nez v6, :cond_36
if-nez v7, :cond_36
:cond_33
add-int/lit8 v13, v13, 0x1
goto :goto_1d
:cond_36
const/4 v1, 0x1
invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-virtual {v3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;
move-result-object v2
move-object/from16 v0, p3
invoke-static {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v11
move-object/from16 v0, p0
invoke-direct {v0, v3}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
move-result-object v4
invoke-static {v11}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
move-result-object v5
move-object/from16 v1, p0
move-object/from16 v2, p1
invoke-direct/range {v1 .. v7}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->createBoundField(Lcom/google/gson/Gson;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/google/gson/reflect/TypeToken;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
move-result-object v9
iget-object v1, v9, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;
move-object/from16 v0, v16
invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v15
check-cast v15, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;
if-eqz v15, :cond_33
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v4, " declares multiple JSON fields named "
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v4, v15, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_86
invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object v2
move-object/from16 v0, p3
invoke-static {v1, v0, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
move-result-object p2
invoke-virtual/range {p2 .. p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object p3
goto/16 :goto_10
.end method
.method private getFieldName(Ljava/lang/reflect/Field;)Ljava/lang/String;
.registers 4
const-class v1, Lcom/google/gson/annotations/SerializedName;
invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/google/gson/annotations/SerializedName;
if-nez v0, :cond_11
iget-object v1, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;
invoke-interface {v1, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;
move-result-object v1
:goto_10
return-object v1
:cond_11
invoke-interface {v0}, Lcom/google/gson/annotations/SerializedName;->value()Ljava/lang/String;
move-result-object v1
goto :goto_10
.end method
.method public create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
.registers 8
const/4 v2, 0x0
invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;
move-result-object v1
const-class v3, Ljava/lang/Object;
invoke-virtual {v3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-nez v3, :cond_e
:goto_d
return-object v2
:cond_e
iget-object v3, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;
invoke-virtual {v3, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;
move-result-object v0
new-instance v3, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
invoke-direct {p0, p1, p2, v1}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->getBoundFields(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;Ljava/lang/Class;)Ljava/util/Map;
move-result-object v4
invoke-direct {v3, v0, v4, v2}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
move-object v2, v3
goto :goto_d
.end method
.method public excludeField(Ljava/lang/reflect/Field;Z)Z
.registers 5
iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;
invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/google/gson/internal/Excluder;->excludeClass(Ljava/lang/Class;Z)Z
move-result v0
if-nez v0, :cond_16
iget-object v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->excluder:Lcom/google/gson/internal/Excluder;
invoke-virtual {v0, p1, p2}, Lcom/google/gson/internal/Excluder;->excludeField(Ljava/lang/reflect/Field;Z)Z
move-result v0
if-nez v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method