.class public final Lcom/facebook/model/GraphObject$Factory;
.super Ljava/lang/Object;
.source "GraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/model/GraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;,
        Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;,
        Lcom/facebook/model/GraphObject$Factory$ProxyBase;
    }
.end annotation


# static fields
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;

.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    const/4 v1, 0x0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd\'T\'HH:mm:ss"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 3

    invoke-static {p0, p1}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/reflect/ParameterizedType;",
            ")TU;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 v10, 0x0

    :goto_3
    return-object v10

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object v10, p0

    goto :goto_3

    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v12

    if-eqz v12, :cond_1a

    move-object v10, p0

    goto :goto_3

    :cond_1a
    const-class v12, Lcom/facebook/model/GraphObject;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_61

    move-object/from16 v6, p1

    const-class v12, Lorg/json/JSONObject;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_35

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {v6, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v10

    goto :goto_3

    :cond_35
    const-class v12, Lcom/facebook/model/GraphObject;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_44

    check-cast p0, Lcom/facebook/model/GraphObject;

    invoke-interface {p0, v6}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v10

    goto :goto_3

    :cond_44
    new-instance v12, Lcom/facebook/FacebookGraphObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t create GraphObject from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_61
    const-class v12, Ljava/lang/Iterable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    const-class v12, Ljava/util/Collection;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    const-class v12, Ljava/util/List;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_89

    const-class v12, Lcom/facebook/model/GraphObjectList;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f4

    :cond_89
    if-nez p2, :cond_a8

    new-instance v12, Lcom/facebook/FacebookGraphObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "can\'t infer generic type of: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a8
    invoke-interface/range {p2 .. p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    if-eqz v1, :cond_b9

    array-length v12, v1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b9

    const/4 v12, 0x0

    aget-object v12, v1, v12

    instance-of v12, v12, Ljava/lang/Class;

    if-nez v12, :cond_c1

    :cond_b9
    new-instance v12, Lcom/facebook/FacebookGraphObjectException;

    const-string v13, "Expect collection properties to be of a type with exactly one generic parameter."

    invoke-direct {v12, v13}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_c1
    const/4 v12, 0x0

    aget-object v3, v1, v12

    check-cast v3, Ljava/lang/Class;

    const-class v12, Lorg/json/JSONArray;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_d7

    move-object v8, p0

    check-cast v8, Lorg/json/JSONArray;

    invoke-static {v8, v3}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v10

    goto/16 :goto_3

    :cond_d7
    new-instance v12, Lcom/facebook/FacebookGraphObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t create Collection from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_f4
    const-class v12, Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_132

    const-class v12, Ljava/lang/Double;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_10e

    const-class v12, Ljava/lang/Float;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_11c

    :cond_10e
    const-string v12, "%f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_11c
    const-class v12, Ljava/lang/Number;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_15d

    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p0, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    :cond_132
    const-class v12, Ljava/util/Date;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_15d

    const-class v12, Ljava/lang/String;

    invoke-virtual {v12, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_15d

    sget-object v2, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;

    array-length v9, v2

    const/4 v7, 0x0

    :goto_148
    if-ge v7, v9, :cond_15d

    aget-object v5, v2, v7

    :try_start_14c
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v5, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_153
    .catch Ljava/text/ParseException; {:try_start_14c .. :try_end_153} :catch_159

    move-result-object v4

    if-eqz v4, :cond_15a

    move-object v10, v4

    goto/16 :goto_3

    :catch_159
    move-exception v12

    :cond_15a
    add-int/lit8 v7, v7, 0x1

    goto :goto_148

    :cond_15d
    new-instance v12, Lcom/facebook/FacebookGraphObjectException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Can\'t convert type"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static create()Lcom/facebook/model/GraphObject;
    .registers 1

    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 2

    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {p0, v0}, Lcom/facebook/model/GraphObject$Factory;->create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object v0

    return-object v0
.end method

.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    const-class v3, Ljava/util/Map;

    invoke-direct {v1, p0, v3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3, v2, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    return-object v0
.end method

.method public static createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/model/GraphObjectList",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;

    invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/facebook/model/GraphObject;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v0, p0

    check-cast v0, Lcom/facebook/model/GraphObject;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    :cond_13
    :goto_13
    return-object p0

    :cond_14
    const-class v3, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v1, p0

    check-cast v1, Lcom/facebook/model/GraphObjectList;

    invoke-interface {v1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_13
.end method

.method private static declared-synchronized hasClassBeenVerified(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_b

    move-result v0

    monitor-exit v1

    return v0

    :catchall_b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static hasSameId(Lcom/facebook/model/GraphObject;Lcom/facebook/model/GraphObject;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v4

    const-string v5, "id"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    :cond_1e
    move v2, v3

    :cond_1f
    :goto_1f
    return v2

    :cond_20
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "id"

    invoke-interface {p0, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v4, "id"

    invoke-interface {p1, v4}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_44

    if-eqz v1, :cond_44

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_44

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_44

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    :cond_44
    move v2, v3

    goto :goto_1f
.end method

.method private static declared-synchronized recordClassHasBeenVerified(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const-class v1, Lcom/facebook/model/GraphObject$Factory;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/model/GraphObject$Factory;->verifiedGraphObjectClasses:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static verifyCanProxyClass(Ljava/lang/Class;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v11, 0x3

    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v9

    if-nez v9, :cond_2b

    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Factory can only wrap interfaces, not class: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v0, v6

    array-length v3, v0

    const/4 v2, 0x0

    :goto_32
    if-ge v2, v3, :cond_c9

    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v9

    array-length v7, v9

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v9

    const-class v10, Lcom/facebook/model/GraphObject;

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_58

    :cond_55
    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_58
    const/4 v9, 0x1

    if-ne v7, v9, :cond_9f

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v8, v9, :cond_9f

    if-eqz v1, :cond_90

    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/facebook/model/PropertyName;

    invoke-interface {v9}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_55

    :cond_73
    new-instance v9, Lcom/facebook/FacebookGraphObjectException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Factory can\'t proxy method: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_90
    const-string v9, "set"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_73

    goto :goto_55

    :cond_9f
    if-nez v7, :cond_73

    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v8, v9, :cond_73

    if-eqz v1, :cond_ba

    const-class v9, Lcom/facebook/model/PropertyName;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v9

    check-cast v9, Lcom/facebook/model/PropertyName;

    invoke-interface {v9}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_73

    goto :goto_55

    :cond_ba
    const-string v9, "get"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_73

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_73

    goto :goto_55

    :cond_c9
    invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V

    goto/16 :goto_7
.end method
