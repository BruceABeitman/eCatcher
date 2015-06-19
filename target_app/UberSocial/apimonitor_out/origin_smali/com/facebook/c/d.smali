.class public final Lcom/facebook/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/HashSet;

.field private static final b:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/c/d;->a:Ljava/util/HashSet;

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

    sput-object v0, Lcom/facebook/c/d;->b:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/c/c;
    .registers 1

    const-class v0, Lcom/facebook/c/c;

    invoke-static {v0}, Lcom/facebook/c/d;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/Class;)Lcom/facebook/c/c;
    .registers 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/c/d;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;
    .registers 3

    invoke-static {p0, p1}, Lcom/facebook/c/d;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/c/c;
    .registers 2

    const-class v0, Lcom/facebook/c/c;

    invoke-static {p0, v0}, Lcom/facebook/c/d;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/c/c;
    .registers 3

    invoke-static {p1, p0}, Lcom/facebook/c/d;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/h;
    .registers 3

    new-instance v0, Lcom/facebook/c/e;

    invoke-direct {v0, p0, p1}, Lcom/facebook/c/e;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/facebook/c/d;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .registers 10

    const/4 v5, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_6

    const/4 p0, 0x0

    :cond_5
    :goto_5
    return-object p0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_5

    const-class v2, Lcom/facebook/c/c;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_59

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2d

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p1, p0}, Lcom/facebook/c/d;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;

    move-result-object p0

    goto :goto_5

    :cond_2d
    const-class v1, Lcom/facebook/c/c;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    check-cast p0, Lcom/facebook/c/c;

    invoke-interface {p0, p1}, Lcom/facebook/c/c;->a(Ljava/lang/Class;)Lcom/facebook/c/c;

    move-result-object p0

    goto :goto_5

    :cond_3c
    new-instance v1, Lcom/facebook/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create GraphObject from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_59
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-class v2, Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_79

    const-class v2, Lcom/facebook/c/h;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e0

    :cond_79
    if-nez p2, :cond_98

    new-instance v1, Lcom/facebook/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t infer generic type of: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_98
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_a7

    array-length v4, v2

    if-ne v4, v5, :cond_a7

    aget-object v4, v2, v1

    instance-of v4, v4, Ljava/lang/Class;

    if-nez v4, :cond_af

    :cond_a7
    new-instance v1, Lcom/facebook/u;

    const-string v2, "Expect collection properties to be of a type with exactly one generic parameter."

    invoke-direct {v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_af
    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_c3

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0, v1}, Lcom/facebook/c/d;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/h;

    move-result-object p0

    goto/16 :goto_5

    :cond_c3
    new-instance v1, Lcom/facebook/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t create Collection from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e0
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_118

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_f8

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_104

    :cond_f8
    const-string v2, "%f"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_104
    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_142

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_118
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_142

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_142

    sget-object v4, Lcom/facebook/c/d;->b:[Ljava/text/SimpleDateFormat;

    array-length v5, v4

    move v2, v1

    :goto_12c
    if-ge v2, v5, :cond_142

    aget-object v6, v4, v2

    :try_start_130
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_137
    .catch Ljava/text/ParseException; {:try_start_130 .. :try_end_137} :catch_13d

    move-result-object v1

    if-eqz v1, :cond_13e

    move-object p0, v1

    goto/16 :goto_5

    :catch_13d
    move-exception v1

    :cond_13e
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_12c

    :cond_142
    new-instance v1, Lcom/facebook/u;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert type"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "([a-z])([A-Z])"

    const-string v1, "$1_$2"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/c/c;Lcom/facebook/c/c;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    if-eqz p1, :cond_1d

    invoke-interface {p0}, Lcom/facebook/c/c;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p1}, Lcom/facebook/c/c;->h()Ljava/util/Map;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    :cond_1d
    :goto_1d
    return v0

    :cond_1e
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v0, 0x1

    goto :goto_1d

    :cond_26
    const-string v1, "id"

    invoke-interface {p0, v1}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {p1, v2}, Lcom/facebook/c/c;->f(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v1, :cond_1d

    if-eqz v2, :cond_1d

    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_1d

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1d

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1d
.end method

.method private static b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/c/c;
    .registers 5

    invoke-static {p0}, Lcom/facebook/c/d;->e(Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Lcom/facebook/c/f;

    invoke-direct {v1, p1, p0}, Lcom/facebook/c/f;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v2, Lcom/facebook/c/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/c;

    return-object v0
.end method

.method public static b(Ljava/lang/Class;)Lcom/facebook/c/h;
    .registers 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-static {v0, p0}, Lcom/facebook/c/d;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/c/h;

    move-result-object v0

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/c/c;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    check-cast p0, Lcom/facebook/c/c;

    invoke-interface {p0}, Lcom/facebook/c/c;->i()Lorg/json/JSONObject;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0

    :cond_13
    const-class v1, Lcom/facebook/c/h;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    check-cast p0, Lcom/facebook/c/h;

    invoke-interface {p0}, Lcom/facebook/c/h;->a()Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_12
.end method

.method static synthetic b(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/facebook/c/d;->c(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static c(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    aput-object v2, v0, v1

    new-instance v1, Lcom/facebook/c/f;

    const-class v2, Ljava/util/Map;

    invoke-direct {v1, p0, v2}, Lcom/facebook/c/f;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v2, Lcom/facebook/c/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized c(Ljava/lang/Class;)Z
    .registers 3

    const-class v1, Lcom/facebook/c/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/c/d;->a:Ljava/util/HashSet;

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

.method private static declared-synchronized d(Ljava/lang/Class;)V
    .registers 3

    const-class v1, Lcom/facebook/c/d;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/c/d;->a:Ljava/util/HashSet;

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

.method private static e(Ljava/lang/Class;)V
    .registers 12

    const/4 v10, 0x3

    invoke-static {p0}, Lcom/facebook/c/d;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2b

    new-instance v0, Lcom/facebook/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory can only wrap interfaces, not class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_32
    if-ge v1, v3, :cond_ca

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/facebook/c/n;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/facebook/c/c;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_59

    :cond_55
    :goto_55
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_32

    :cond_59
    const/4 v8, 0x1

    if-ne v5, v8, :cond_a0

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v8, :cond_a0

    if-eqz v7, :cond_91

    const-class v0, Lcom/facebook/c/n;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/n;

    invoke-interface {v0}, Lcom/facebook/c/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_74
    new-instance v0, Lcom/facebook/u;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Factory can\'t proxy method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/u;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_91
    const-string v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_74

    goto :goto_55

    :cond_a0
    if-nez v5, :cond_74

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_74

    if-eqz v7, :cond_bb

    const-class v0, Lcom/facebook/c/n;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/c/n;

    invoke-interface {v0}, Lcom/facebook/c/n;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_74

    goto :goto_55

    :cond_bb
    const-string v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v10, :cond_74

    goto :goto_55

    :cond_ca
    invoke-static {p0}, Lcom/facebook/c/d;->d(Ljava/lang/Class;)V

    goto/16 :goto_7
.end method
