.class public final Lcom/millennialmedia/a/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final a:[Ljava/lang/reflect/Type;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/reflect/Type;
sput-object v0, Lcom/millennialmedia/a/a/b/b;->a:[Ljava/lang/reflect/Type;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic a(Ljava/lang/Object;)I
.registers 2
invoke-static {p0}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method private static a([Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
const/4 v0, 0x0
:goto_1
array-length v1, p0
if-ge v0, v1, :cond_10
aget-object v1, p0, v0
invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_d
return v0
:cond_d
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_10
new-instance v0, Ljava/util/NoSuchElementException;
invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V
throw v0
.end method
.method private static a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
.registers 3
invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
move-result-object v0
instance-of v1, v0, Ljava/lang/Class;
if-eqz v1, :cond_b
check-cast v0, Ljava/lang/Class;
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public static a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
.registers 2
new-instance v0, Lcom/millennialmedia/a/a/b/c;
invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/c;-><init>(Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public static varargs a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
.registers 4
new-instance v0, Lcom/millennialmedia/a/a/b/d;
invoke-direct {v0, p0, p1, p2}, Lcom/millennialmedia/a/a/b/d;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.registers 5
const/4 v2, 0x0
const-class v0, Ljava/util/Collection;
invoke-static {p0, p1, v0}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v0
instance-of v1, v0, Ljava/lang/reflect/WildcardType;
if-eqz v1, :cond_13
check-cast v0, Ljava/lang/reflect/WildcardType;
invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v0
aget-object v0, v0, v2
:cond_13
instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v1, :cond_20
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
aget-object v0, v0, v2
:goto_1f
return-object v0
:cond_20
const-class v0, Ljava/lang/Object;
goto :goto_1f
.end method
.method static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.registers 7
if-ne p2, p1, :cond_3
:goto_2
return-object p0
:cond_3
invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-eqz v0, :cond_34
invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
move-result-object v1
const/4 v0, 0x0
array-length v2, v1
:goto_f
if-ge v0, v2, :cond_34
aget-object v3, v1, v0
if-ne v3, p2, :cond_1c
invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;
move-result-object v1
aget-object p0, v1, v0
goto :goto_2
:cond_1c
aget-object v3, v1, v0
invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_31
invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;
move-result-object v2
aget-object v2, v2, v0
aget-object v0, v1, v0
invoke-static {v2, v0, p2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object p0
goto :goto_2
:cond_31
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_34
invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-nez v0, :cond_5a
:goto_3a
const-class v0, Ljava/lang/Object;
if-eq p1, v0, :cond_5a
invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
if-ne v0, p2, :cond_49
invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object p0
goto :goto_2
:cond_49
invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_58
invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {v1, v0, p2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object p0
goto :goto_2
:cond_58
move-object p1, v0
goto :goto_3a
:cond_5a
move-object p0, p2
goto :goto_2
.end method
.method public static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.registers 13
const/4 v2, 0x1
const/4 v3, 0x0
move-object v0, p2
:goto_3
instance-of v1, v0, Ljava/lang/reflect/TypeVariable;
if-eqz v1, :cond_13
check-cast v0, Ljava/lang/reflect/TypeVariable;
invoke-static {p0, p1, v0}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
move-result-object p2
if-ne p2, v0, :cond_11
move-object v0, p2
:cond_10
:goto_10
return-object v0
:cond_11
move-object v0, p2
goto :goto_3
:cond_13
instance-of v1, v0, Ljava/lang/Class;
if-eqz v1, :cond_31
move-object v1, v0
check-cast v1, Ljava/lang/Class;
invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z
move-result v1
if-eqz v1, :cond_31
check-cast v0, Ljava/lang/Class;
invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v1
invoke-static {p0, p1, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v2
if-eq v1, v2, :cond_10
invoke-static {v2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
move-result-object v0
goto :goto_10
:cond_31
instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;
if-eqz v1, :cond_46
check-cast v0, Ljava/lang/reflect/GenericArrayType;
invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {p0, p1, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v2
if-eq v1, v2, :cond_10
invoke-static {v2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
move-result-object v0
goto :goto_10
:cond_46
instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v1, :cond_87
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {p0, p1, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v5
if-eq v5, v1, :cond_7a
move v1, v2
:goto_57
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v4
array-length v6, v4
move v9, v3
move v3, v1
move-object v1, v4
move v4, v9
:goto_60
if-ge v4, v6, :cond_7c
aget-object v7, v1, v4
invoke-static {p0, p1, v7}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v7
aget-object v8, v1, v4
if-eq v7, v8, :cond_77
if-nez v3, :cond_75
invoke-virtual {v1}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;
move-result-object v1
check-cast v1, [Ljava/lang/reflect/Type;
move v3, v2
:cond_75
aput-object v7, v1, v4
:cond_77
add-int/lit8 v4, v4, 0x1
goto :goto_60
:cond_7a
move v1, v3
goto :goto_57
:cond_7c
if-eqz v3, :cond_10
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-static {v5, v0, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
move-result-object v0
goto :goto_10
:cond_87
instance-of v1, v0, Ljava/lang/reflect/WildcardType;
if-eqz v1, :cond_10
check-cast v0, Ljava/lang/reflect/WildcardType;
invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;
move-result-object v1
invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v4
array-length v5, v1
if-ne v5, v2, :cond_a8
aget-object v2, v1, v3
invoke-static {p0, p1, v2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v2
aget-object v1, v1, v3
if-eq v2, v1, :cond_10
invoke-static {v2}, Lcom/millennialmedia/a/a/b/b;->c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
move-result-object v0
goto/16 :goto_10
:cond_a8
array-length v1, v4
if-ne v1, v2, :cond_10
aget-object v1, v4, v3
invoke-static {p0, p1, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v1
aget-object v2, v4, v3
if-eq v1, v2, :cond_10
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
move-result-object v0
goto/16 :goto_10
.end method
.method static a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
.registers 6
invoke-static {p2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
move-result-object v1
if-nez v1, :cond_7
:goto_6
:cond_6
return-object p2
:cond_7
invoke-static {p0, p1, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v0
instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v2, :cond_6
invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;
move-result-object v1
invoke-static {v1, p2}, Lcom/millennialmedia/a/a/b/b;->a([Ljava/lang/Object;Ljava/lang/Object;)I
move-result v1
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
aget-object p2, v0, v1
goto :goto_6
.end method
.method static a(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_a
if-eqz p0, :cond_c
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_6
move v1, v0
:goto_5
:cond_5
return v1
:cond_6
instance-of v2, p0, Ljava/lang/Class;
if-eqz v2, :cond_f
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
goto :goto_5
:cond_f
instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;
if-eqz v2, :cond_49
instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;
if-eqz v2, :cond_5
check-cast p0, Ljava/lang/reflect/ParameterizedType;
check-cast p1, Ljava/lang/reflect/ParameterizedType;
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-static {v2, v3}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_47
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_47
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v3
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_47
:goto_45
move v1, v0
goto :goto_5
:cond_47
move v0, v1
goto :goto_45
:cond_49
instance-of v2, p0, Ljava/lang/reflect/GenericArrayType;
if-eqz v2, :cond_62
instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;
if-eqz v0, :cond_5
check-cast p0, Ljava/lang/reflect/GenericArrayType;
check-cast p1, Ljava/lang/reflect/GenericArrayType;
invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
move-result v1
goto :goto_5
:cond_62
instance-of v2, p0, Ljava/lang/reflect/WildcardType;
if-eqz v2, :cond_8f
instance-of v2, p1, Ljava/lang/reflect/WildcardType;
if-eqz v2, :cond_5
check-cast p0, Ljava/lang/reflect/WildcardType;
check-cast p1, Ljava/lang/reflect/WildcardType;
invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v3
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8d
invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;
move-result-object v3
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8d
:goto_8a
move v1, v0
goto/16 :goto_5
:cond_8d
move v0, v1
goto :goto_8a
:cond_8f
instance-of v2, p0, Ljava/lang/reflect/TypeVariable;
if-eqz v2, :cond_5
instance-of v2, p1, Ljava/lang/reflect/TypeVariable;
if-eqz v2, :cond_5
check-cast p0, Ljava/lang/reflect/TypeVariable;
check-cast p1, Ljava/lang/reflect/TypeVariable;
invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;
move-result-object v3
if-ne v2, v3, :cond_b6
invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v2
invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_b6
:goto_b3
move v1, v0
goto/16 :goto_5
:cond_b6
move v0, v1
goto :goto_b3
.end method
.method private static b(Ljava/lang/Object;)I
.registers 2
if-eqz p0, :cond_7
invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I
move-result v0
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method static b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
.registers 4
invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
invoke-static {p0, p1, p2}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v0
invoke-static {p0, p1, v0}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
.registers 4
new-instance v0, Lcom/millennialmedia/a/a/b/e;
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/reflect/Type;
const/4 v2, 0x0
aput-object p0, v1, v2
sget-object v2, Lcom/millennialmedia/a/a/b/b;->a:[Ljava/lang/reflect/Type;
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/b/e;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public static b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
.registers 7
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
const-class v0, Ljava/util/Properties;
if-ne p0, v0, :cond_12
new-array v0, v4, [Ljava/lang/reflect/Type;
const-class v1, Ljava/lang/String;
aput-object v1, v0, v2
const-class v1, Ljava/lang/String;
aput-object v1, v0, v3
:goto_11
return-object v0
:cond_12
const-class v0, Ljava/util/Map;
invoke-static {p0, p1, v0}, Lcom/millennialmedia/a/a/b/b;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
move-result-object v0
instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v1, :cond_23
check-cast v0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v0
goto :goto_11
:cond_23
new-array v0, v4, [Ljava/lang/reflect/Type;
const-class v1, Ljava/lang/Object;
aput-object v1, v0, v2
const-class v1, Ljava/lang/Object;
aput-object v1, v0, v3
goto :goto_11
.end method
.method public static c(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
.registers 6
const/4 v4, 0x1
const/4 v3, 0x0
new-instance v0, Lcom/millennialmedia/a/a/b/e;
new-array v1, v4, [Ljava/lang/reflect/Type;
const-class v2, Ljava/lang/Object;
aput-object v2, v1, v3
new-array v2, v4, [Ljava/lang/reflect/Type;
aput-object p0, v2, v3
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/b/e;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
return-object v0
.end method
.method public static d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.registers 5
instance-of v0, p0, Ljava/lang/Class;
if-eqz v0, :cond_1e
check-cast p0, Ljava/lang/Class;
invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_1c
new-instance v0, Lcom/millennialmedia/a/a/b/c;
invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v1
invoke-static {v1}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/b/c;-><init>(Ljava/lang/reflect/Type;)V
:goto_19
check-cast v0, Ljava/lang/reflect/Type;
:goto_1b
return-object v0
:cond_1c
move-object v0, p0
goto :goto_19
:cond_1e
instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_36
check-cast p0, Ljava/lang/reflect/ParameterizedType;
new-instance v0, Lcom/millennialmedia/a/a/b/d;
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v2
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/a/a/b/d;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
goto :goto_1b
:cond_36
instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;
if-eqz v0, :cond_46
check-cast p0, Ljava/lang/reflect/GenericArrayType;
new-instance v0, Lcom/millennialmedia/a/a/b/c;
invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v1
invoke-direct {v0, v1}, Lcom/millennialmedia/a/a/b/c;-><init>(Ljava/lang/reflect/Type;)V
goto :goto_1b
:cond_46
instance-of v0, p0, Ljava/lang/reflect/WildcardType;
if-eqz v0, :cond_5a
check-cast p0, Ljava/lang/reflect/WildcardType;
new-instance v0, Lcom/millennialmedia/a/a/b/e;
invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v1
invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;
move-result-object v2
invoke-direct {v0, v1, v2}, Lcom/millennialmedia/a/a/b/e;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V
goto :goto_1b
:cond_5a
move-object v0, p0
goto :goto_1b
.end method
.method public static e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
.registers 5
const/4 v1, 0x0
instance-of v0, p0, Ljava/lang/Class;
if-eqz v0, :cond_8
check-cast p0, Ljava/lang/Class;
:goto_7
return-object p0
:cond_8
instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;
if-eqz v0, :cond_1b
check-cast p0, Ljava/lang/reflect/ParameterizedType;
invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;
move-result-object v0
instance-of v1, v0, Ljava/lang/Class;
invoke-static {v1}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
check-cast v0, Ljava/lang/Class;
move-object p0, v0
goto :goto_7
:cond_1b
instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;
if-eqz v0, :cond_32
check-cast p0, Ljava/lang/reflect/GenericArrayType;
invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v0
invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object v0
invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object p0
goto :goto_7
:cond_32
instance-of v0, p0, Ljava/lang/reflect/TypeVariable;
if-eqz v0, :cond_39
const-class p0, Ljava/lang/Object;
goto :goto_7
:cond_39
instance-of v0, p0, Ljava/lang/reflect/WildcardType;
if-eqz v0, :cond_4a
check-cast p0, Ljava/lang/reflect/WildcardType;
invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;
move-result-object v0
aget-object v0, v0, v1
invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;
move-result-object p0
goto :goto_7
:cond_4a
if-nez p0, :cond_71
const-string v0, "null"
:goto_4e
new-instance v1, Ljava/lang/IllegalArgumentException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "> is of type "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:cond_71
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_4e
.end method
.method public static f(Ljava/lang/reflect/Type;)Ljava/lang/String;
.registers 2
instance-of v0, p0, Ljava/lang/Class;
if-eqz v0, :cond_b
check-cast p0, Ljava/lang/Class;
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
:goto_a
return-object v0
:cond_b
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_a
.end method
.method public static g(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.registers 2
instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;
if-eqz v0, :cond_b
check-cast p0, Ljava/lang/reflect/GenericArrayType;
invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;
move-result-object v0
:goto_a
return-object v0
:cond_b
check-cast p0, Ljava/lang/Class;
invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;
move-result-object v0
goto :goto_a
.end method
.method static synthetic h(Ljava/lang/reflect/Type;)V
.registers 1
invoke-static {p0}, Lcom/millennialmedia/a/a/b/b;->i(Ljava/lang/reflect/Type;)V
return-void
.end method
.method private static i(Ljava/lang/reflect/Type;)V
.registers 2
instance-of v0, p0, Ljava/lang/Class;
if-eqz v0, :cond_c
check-cast p0, Ljava/lang/Class;
invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z
move-result v0
if-nez v0, :cond_11
:cond_c
const/4 v0, 0x1
:goto_d
invoke-static {v0}, Lcom/millennialmedia/a/a/b/a;->a(Z)V
return-void
:cond_11
const/4 v0, 0x0
goto :goto_d
.end method