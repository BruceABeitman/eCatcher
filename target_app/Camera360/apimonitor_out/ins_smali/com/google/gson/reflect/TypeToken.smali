.class public Lcom/google/gson/reflect/TypeToken;
.super Ljava/lang/Object;
.source "TypeToken.java"
.field final hashCode:I
.field final rawType:Ljava/lang/Class;
.field final type:Ljava/lang/reflect/Type;
.method protected constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0}, Lcom/google/gson/reflect/TypeToken;->getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v0
iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iput v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I
return-void
.end method
.method constructor <init>(Ljava/lang/reflect/Type;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/gson/internal/$Gson$Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/reflect/Type;
invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v0
iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v0
iput-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
iput v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I
return-void
.end method
.method private static varargs buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
.registers 9
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v5, "Unexpected type. Expected one of: "
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object v0, p1
array-length v4, v0
const/4 v3, 0x0
:goto_b
if-ge v3, v4, :cond_20
aget-object v1, v0, v3
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v3, v3, 0x1
goto :goto_b
:cond_20
const-string/jumbo v5, "but got: "
invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, ", for type token: "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const/16 v6, 0x2e
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
new-instance v5, Ljava/lang/AssertionError;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
return-object v5
.end method
.method public static get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;
.registers 2
new-instance v0, Lcom/google/gson/reflect/TypeToken;
invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public static get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;
.registers 2
new-instance v0, Lcom/google/gson/reflect/TypeToken;
invoke-direct {v0, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method static getSuperclassTypeParameter(Ljava/lang/Class;)Ljava/lang/reflect/Type;
.registers 5
invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object v1
instance-of v2, v1, Ljava/lang/Class;
if-eqz v2, :cond_11
new-instance v2, Ljava/lang/RuntimeException;
const-string/jumbo v3, "Missing type parameter."
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:cond_11
move-object v0, v1
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v2
const/4 v3, 0x0
aget-object v2, v2, v3
invoke-static {v2}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v2
return-object v2
.end method
.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
.registers 6
invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v2
instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;
if-eqz v3, :cond_33
move-object v1, p0
instance-of v3, p0, Ljava/lang/reflect/GenericArrayType;
if-eqz v3, :cond_1f
check-cast p0, Ljava/lang/reflect/GenericArrayType;
invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v1
:cond_13
:goto_13
check-cast v2, Ljava/lang/reflect/ParameterizedType;
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
invoke-static {v1, v2, v3}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
move-result v3
:goto_1e
return v3
:cond_1f
instance-of v3, p0, Ljava/lang/Class;
if-eqz v3, :cond_13
move-object v0, p0
check-cast v0, Ljava/lang/Class;
:goto_26
invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z
move-result v3
if-eqz v3, :cond_31
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
goto :goto_26
:cond_31
move-object v1, v0
goto :goto_13
:cond_33
const/4 v3, 0x1
goto :goto_1e
.end method
.method private static isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
.registers 19
if-nez p0, :cond_4
const/4 v15, 0x0
:goto_3
return v15
:cond_4
move-object/from16 v0, p1
move-object/from16 v1, p0
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v15
if-eqz v15, :cond_10
const/4 v15, 0x1
goto :goto_3
:cond_10
invoke-static/range {p0 .. p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v4
const/4 v9, 0x0
move-object/from16 v0, p0
instance-of v15, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v15, :cond_1f
move-object/from16 v9, p0
check-cast v9, Ljava/lang/reflect/ParameterizedType;
:cond_1f
if-eqz v9, :cond_5d
invoke-interface {v9}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v11
invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;
move-result-object v12
const/4 v5, 0x0
:goto_2a
array-length v15, v11
if-ge v5, v15, :cond_51
aget-object v2, v11, v5
aget-object v14, v12, v5
:goto_31
instance-of v15, v2, Ljava/lang/reflect/TypeVariable;
if-eqz v15, :cond_45
move-object v13, v2
check-cast v13, Ljava/lang/reflect/TypeVariable;
invoke-interface {v13}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p2
invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/reflect/Type;
goto :goto_31
:cond_45
invoke-interface {v14}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v15
move-object/from16 v0, p2
invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v5, v5, 0x1
goto :goto_2a
:cond_51
move-object/from16 v0, p1
move-object/from16 v1, p2
invoke-static {v9, v0, v1}, Lcom/google/gson/reflect/TypeToken;->typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
move-result v15
if-eqz v15, :cond_5d
const/4 v15, 0x1
goto :goto_3
:cond_5d
invoke-virtual {v4}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;
move-result-object v3
array-length v8, v3
const/4 v6, 0x0
:goto_63
if-ge v6, v8, :cond_7b
aget-object v7, v3, v6
new-instance v15, Ljava/util/HashMap;
move-object/from16 v0, p2
invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
move-object/from16 v0, p1
invoke-static {v7, v0, v15}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
move-result v15
if-eqz v15, :cond_78
const/4 v15, 0x1
goto :goto_3
:cond_78
add-int/lit8 v6, v6, 0x1
goto :goto_63
:cond_7b
invoke-virtual {v4}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object v10
new-instance v15, Ljava/util/HashMap;
move-object/from16 v0, p2
invoke-direct {v15, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
move-object/from16 v0, p1
invoke-static {v10, v0, v15}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
move-result v15
goto/16 :goto_3
.end method
.method private static matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
.registers 4
invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
instance-of v0, p0, Ljava/lang/reflect/TypeVariable;
if-eqz v0, :cond_1c
check-cast p0, Ljava/lang/reflect/TypeVariable;
invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v0
invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
:cond_1a
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method private static typeEquals(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
.registers 9
const/4 v3, 0x0
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v4
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_25
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v2
const/4 v1, 0x0
:goto_18
array-length v4, v0
if-ge v1, v4, :cond_29
aget-object v4, v0, v1
aget-object v5, v2, v1
invoke-static {v4, v5, p2}, Lcom/google/gson/reflect/TypeToken;->matches(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
move-result v4
if-nez v4, :cond_26
:goto_25
:cond_25
return v3
:cond_26
add-int/lit8 v1, v1, 0x1
goto :goto_18
:cond_29
const/4 v3, 0x1
goto :goto_25
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/google/gson/reflect/TypeToken;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
check-cast p1, Lcom/google/gson/reflect/TypeToken;
iget-object v1, p1, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-static {v0, v1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final getRawType()Ljava/lang/Class;
.registers 2
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;
return-object v0
.end method
.method public final getType()Ljava/lang/reflect/Type;
.registers 2
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
return-object v0
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/google/gson/reflect/TypeToken;->hashCode:I
return v0
.end method
.method public isAssignableFrom(Lcom/google/gson/reflect/TypeToken;)Z
.registers 3
invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z
move-result v0
return v0
.end method
.method public isAssignableFrom(Ljava/lang/Class;)Z
.registers 3
invoke-virtual {p0, p1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;)Z
move-result v0
return v0
.end method
.method public isAssignableFrom(Ljava/lang/reflect/Type;)Z
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_5
:goto_4
return v2
:cond_5
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_f
move v2, v1
goto :goto_4
:cond_f
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
instance-of v0, v0, Ljava/lang/Class;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;
invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
goto :goto_4
:cond_20
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
check-cast v0, Ljava/lang/reflect/ParameterizedType;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-static {p1, v0, v1}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
move-result v2
goto :goto_4
:cond_34
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;
invoke-static {p1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
check-cast v0, Ljava/lang/reflect/GenericArrayType;
invoke-static {p1, v0}, Lcom/google/gson/reflect/TypeToken;->isAssignableFrom(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
move-result v0
if-eqz v0, :cond_53
move v0, v1
:goto_51
move v2, v0
goto :goto_4
:cond_53
move v0, v2
goto :goto_51
:cond_55
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Class;
const-class v4, Ljava/lang/Class;
aput-object v4, v3, v2
const-class v2, Ljava/lang/reflect/ParameterizedType;
aput-object v2, v3, v1
const/4 v1, 0x2
const-class v2, Ljava/lang/reflect/GenericArrayType;
aput-object v2, v3, v1
invoke-static {v0, v3}, Lcom/google/gson/reflect/TypeToken;->buildUnexpectedTypeError(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
move-result-object v0
throw v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;
invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method