.class public Lcom/millennialmedia/a/a/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/reflect/Type;

.field final c:I


# direct methods
.method protected constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/c/a;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/a/a/c/a;->c:I

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/millennialmedia/a/a/b/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/c/a;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/millennialmedia/a/a/c/a;->c:I

    return-void
.end method

.method private static varargs a(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;
    .registers 7

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected type. Expected one of: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v2, :cond_1d

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    const-string v0, "but got: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", for type token: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->d(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 9

    const/4 v1, 0x0

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    move v0, v1

    :goto_18
    array-length v4, v2

    if-ge v0, v4, :cond_29

    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5, p2}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z

    move-result v4

    if-nez v4, :cond_26

    :cond_25
    :goto_25
    return v1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    const/4 v1, 0x1

    goto :goto_25
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z
    .registers 4

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_2f

    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v1, :cond_1e

    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    :cond_12
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v0, v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    :goto_1d
    return v0

    :cond_1e
    instance-of v1, p0, Ljava/lang/Class;

    if-eqz v1, :cond_12

    check-cast p0, Ljava/lang/Class;

    :goto_24
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_24

    :cond_2f
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z
    .registers 12

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_5

    :goto_4
    return v2

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v2, v3

    goto :goto_4

    :cond_d
    invoke-static {p0}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    const/4 v0, 0x0

    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_75

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    :goto_18
    if-eqz p0, :cond_4e

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v6

    move v1, v2

    :goto_23
    array-length v0, v5

    if-ge v1, v0, :cond_46

    aget-object v0, v5, v1

    aget-object v7, v6, v1

    :goto_2a
    instance-of v8, v0, Ljava/lang/reflect/TypeVariable;

    if-eqz v8, :cond_3b

    check-cast v0, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    goto :goto_2a

    :cond_3b
    invoke-interface {v7}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_46
    invoke-static {p0, p1, p2}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/ParameterizedType;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_4e

    move v2, v3

    goto :goto_4

    :cond_4e
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    array-length v1, v0

    :goto_53
    if-ge v2, v1, :cond_67

    aget-object v5, v0, v2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v5, p1, v6}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v5

    if-eqz v5, :cond_64

    move v2, v3

    goto :goto_4

    :cond_64
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    :cond_67
    invoke-virtual {v4}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0, p1, v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v2

    goto :goto_4

    :cond_75
    move-object p0, v0

    goto :goto_18
.end method

.method private static a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Map;)Z
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

.method public static b(Ljava/lang/reflect/Type;)Lcom/millennialmedia/a/a/c/a;
    .registers 2

    new-instance v0, Lcom/millennialmedia/a/a/c/a;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Class;)Lcom/millennialmedia/a/a/c/a;
    .registers 2

    new-instance v0, Lcom/millennialmedia/a/a/c/a;

    invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/c/a;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public a(Lcom/millennialmedia/a/a/c/a;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/reflect/Type;)Z
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_5

    :goto_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v2, v1

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->a:Ljava/lang/Class;

    invoke-static {p1}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    goto :goto_4

    :cond_20
    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/ParameterizedType;Ljava/util/Map;)Z

    move-result v2

    goto :goto_4

    :cond_34
    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->a:Ljava/lang/Class;

    invoke-static {p1}, Lcom/millennialmedia/a/a/b/b;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-static {p1, v0}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/GenericArrayType;)Z

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
    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Class;

    aput-object v4, v3, v2

    const-class v2, Ljava/lang/reflect/ParameterizedType;

    aput-object v2, v3, v1

    const/4 v1, 0x2

    const-class v2, Ljava/lang/reflect/GenericArrayType;

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;[Ljava/lang/Class;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method

.method public final b()Ljava/lang/reflect/Type;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/c/a;->a(Ljava/lang/reflect/Type;)Z

    move-result v0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/millennialmedia/a/a/c/a;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    check-cast p1, Lcom/millennialmedia/a/a/c/a;

    iget-object v1, p1, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0, v1}, Lcom/millennialmedia/a/a/b/b;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/millennialmedia/a/a/c/a;->c:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/millennialmedia/a/a/c/a;->b:Ljava/lang/reflect/Type;

    invoke-static {v0}, Lcom/millennialmedia/a/a/b/b;->f(Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
