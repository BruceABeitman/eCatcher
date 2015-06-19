.class public final Lcom/facebook/h/c;
.super Ljava/lang/Object;
.source "GraphObject.java"


# static fields
.field private static final a:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/h/c;->a:Ljava/util/HashSet;

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

    sput-object v0, Lcom/facebook/h/c;->b:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a()Lcom/facebook/h/b;
    .registers 1

    const-class v0, Lcom/facebook/h/b;

    invoke-static {v0}, Lcom/facebook/h/c;->a(Ljava/lang/Class;)Lcom/facebook/h/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/Class;)Lcom/facebook/h/b;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v0}, Lcom/facebook/h/c;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;
    .registers 3

    invoke-static {p0, p1}, Lcom/facebook/h/c;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/facebook/h/b;
    .registers 2

    const-class v0, Lcom/facebook/h/b;

    invoke-static {p0, v0}, Lcom/facebook/h/c;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/h/b;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/facebook/h/b;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {p1, p0}, Lcom/facebook/h/c;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/h/g;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/facebook/h/g",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/facebook/h/d;

    invoke-direct {v0, p0, p1}, Lcom/facebook/h/d;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-static {p0}, Lcom/facebook/h/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
    .registers 10
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

    const-class v2, Lcom/facebook/h/b;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_55

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2d

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p1, p0}, Lcom/facebook/h/c;->b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;

    move-result-object p0

    goto :goto_5

    :cond_2d
    const-class v1, Lcom/facebook/h/b;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3c

    check-cast p0, Lcom/facebook/h/b;

    invoke-interface {p0}, Lcom/facebook/h/b;->b()Lcom/facebook/h/b;

    move-result-object p0

    goto :goto_5

    :cond_3c
    new-instance v1, Lcom/facebook/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t create GraphObject from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_55
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-class v2, Ljava/util/List;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_75

    const-class v2, Lcom/facebook/h/g;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d4

    :cond_75
    if-nez p2, :cond_90

    new-instance v1, Lcom/facebook/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "can\'t infer generic type of: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_90
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    if-eqz v2, :cond_9f

    array-length v4, v2

    if-ne v4, v5, :cond_9f

    aget-object v4, v2, v1

    instance-of v4, v4, Ljava/lang/Class;

    if-nez v4, :cond_a7

    :cond_9f
    new-instance v1, Lcom/facebook/aa;

    const-string v2, "Expect collection properties to be of a type with exactly one generic parameter."

    invoke-direct {v1, v2}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a7
    aget-object v1, v2, v1

    check-cast v1, Ljava/lang/Class;

    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_bb

    check-cast p0, Lorg/json/JSONArray;

    invoke-static {p0, v1}, Lcom/facebook/h/c;->a(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/h/g;

    move-result-object p0

    goto/16 :goto_5

    :cond_bb
    new-instance v1, Lcom/facebook/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t create Collection from "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d4
    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10c

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_ec

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_f8

    :cond_ec
    const-string v2, "%f"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_f8
    const-class v2, Ljava/lang/Number;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_136

    const-string v2, "%d"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_5

    :cond_10c
    const-class v2, Ljava/util/Date;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_136

    const-class v2, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_136

    sget-object v4, Lcom/facebook/h/c;->b:[Ljava/text/SimpleDateFormat;

    array-length v5, v4

    move v2, v1

    :goto_120
    if-ge v2, v5, :cond_136

    aget-object v6, v4, v2

    :try_start_124
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_12b
    .catch Ljava/text/ParseException; {:try_start_124 .. :try_end_12b} :catch_131

    move-result-object v1

    if-eqz v1, :cond_132

    move-object p0, v1

    goto/16 :goto_5

    :catch_131
    move-exception v1

    :cond_132
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_120

    :cond_136
    new-instance v1, Lcom/facebook/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t convert type"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-direct {v1, v2}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

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

.method private static b(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/h/c;->d(Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Lcom/facebook/h/e;

    invoke-direct {v1, p1, p0}, Lcom/facebook/h/e;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v2, Lcom/facebook/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/b;

    return-object v0
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/facebook/h/b;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    check-cast p0, Lcom/facebook/h/b;

    invoke-interface {p0}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;

    move-result-object p0

    :cond_12
    :goto_12
    return-object p0

    :cond_13
    const-class v1, Lcom/facebook/h/g;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    check-cast p0, Lcom/facebook/h/g;

    invoke-interface {p0}, Lcom/facebook/h/g;->a()Lorg/json/JSONArray;

    move-result-object p0

    goto :goto_12
.end method

.method static synthetic b(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 2

    invoke-static {p0}, Lcom/facebook/h/c;->c(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized b(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)Z"
        }
    .end annotation

    const-class v1, Lcom/facebook/h/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/h/c;->a:Ljava/util/HashSet;

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

.method private static c(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 4
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

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    aput-object v2, v0, v1

    new-instance v1, Lcom/facebook/h/e;

    const-class v2, Ljava/util/Map;

    invoke-direct {v1, p0, v2}, Lcom/facebook/h/e;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V

    const-class v2, Lcom/facebook/h/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method private static declared-synchronized c(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const-class v1, Lcom/facebook/h/c;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/h/c;->a:Ljava/util/HashSet;

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

.method private static d(Ljava/lang/Class;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/h/b;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    const/4 v10, 0x3

    invoke-static {p0}, Lcom/facebook/h/c;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_27

    new-instance v0, Lcom/facebook/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Factory can only wrap interfaces, not class: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_2e
    if-ge v1, v3, :cond_c1

    aget-object v4, v2, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    const-class v7, Lcom/facebook/h/k;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    const-class v9, Lcom/facebook/h/b;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6c

    const/4 v8, 0x1

    if-ne v5, v8, :cond_97

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v6, v8, :cond_97

    if-eqz v7, :cond_70

    const-class v0, Lcom/facebook/h/k;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/k;

    invoke-interface {v0}, Lcom/facebook/h/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    :cond_6c
    :goto_6c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2e

    :cond_70
    const-string v5, "set"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v10, :cond_6c

    :cond_7e
    :goto_7e
    new-instance v0, Lcom/facebook/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Factory can\'t proxy method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_97
    if-nez v5, :cond_7e

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v6, v5, :cond_7e

    if-eqz v7, :cond_b2

    const-class v0, Lcom/facebook/h/k;

    invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/h/k;

    invoke-interface {v0}, Lcom/facebook/h/k;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_6c

    :cond_b2
    const-string v5, "get"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v10, :cond_6c

    goto :goto_7e

    :cond_c1
    invoke-static {p0}, Lcom/facebook/h/c;->c(Ljava/lang/Class;)V

    goto/16 :goto_7
.end method
