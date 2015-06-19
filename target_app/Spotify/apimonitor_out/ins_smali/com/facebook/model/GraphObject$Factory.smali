.class public final Lcom/facebook/model/GraphObject$Factory;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final dateFormats:[Ljava/text/SimpleDateFormat;
.field private static final verifiedGraphObjectClasses:Ljava/util/HashSet;
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
.registers 10
const/4 v5, 0x1
const/4 v1, 0x0
if-nez p0, :cond_2b
sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_11
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object p0
:cond_10
:goto_10
return-object p0
:cond_11
sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1e
invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;
move-result-object p0
goto :goto_10
:cond_1e
invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z
move-result v2
if-eqz v2, :cond_29
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object p0
goto :goto_10
:cond_29
const/4 p0, 0x0
goto :goto_10
:cond_2b
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_10
invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z
move-result v2
if-nez v2, :cond_10
const-class v2, Lcom/facebook/model/GraphObject;
invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_7a
const-class v1, Lorg/json/JSONObject;
invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_52
check-cast p0, Lorg/json/JSONObject;
invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
move-result-object p0
goto :goto_10
:cond_52
const-class v1, Lcom/facebook/model/GraphObject;
invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_61
check-cast p0, Lcom/facebook/model/GraphObject;
invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->cast(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object p0
goto :goto_10
:cond_61
new-instance v1, Lcom/facebook/FacebookGraphObjectException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Can\'t create GraphObject from "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v1
:cond_7a
const-class v2, Ljava/lang/Iterable;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9a
const-class v2, Ljava/util/Collection;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9a
const-class v2, Ljava/util/List;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_9a
const-class v2, Lcom/facebook/model/GraphObjectList;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_f9
:cond_9a
if-nez p2, :cond_b5
new-instance v1, Lcom/facebook/FacebookGraphObjectException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "can\'t infer generic type of: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v1
:cond_b5
invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v2
if-eqz v2, :cond_c4
array-length v4, v2
if-ne v4, v5, :cond_c4
aget-object v4, v2, v1
instance-of v4, v4, Ljava/lang/Class;
if-nez v4, :cond_cc
:cond_c4
new-instance v1, Lcom/facebook/FacebookGraphObjectException;
const-string v2, "Expect collection properties to be of a type with exactly one generic parameter."
invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v1
:cond_cc
aget-object v1, v2, v1
check-cast v1, Ljava/lang/Class;
const-class v2, Lorg/json/JSONArray;
invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_e0
check-cast p0, Lorg/json/JSONArray;
invoke-static {p0, v1}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object p0
goto/16 :goto_10
:cond_e0
new-instance v1, Lcom/facebook/FacebookGraphObjectException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v4, "Can\'t create Collection from "
invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v1
:cond_f9
const-class v2, Ljava/lang/String;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_131
const-class v2, Ljava/lang/Double;
invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-nez v2, :cond_111
const-class v2, Ljava/lang/Float;
invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_11d
:cond_111
const-string v2, "%f"
new-array v3, v5, [Ljava/lang/Object;
aput-object p0, v3, v1
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
goto/16 :goto_10
:cond_11d
const-class v2, Ljava/lang/Number;
invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_15b
const-string v2, "%d"
new-array v3, v5, [Ljava/lang/Object;
aput-object p0, v3, v1
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
goto/16 :goto_10
:cond_131
const-class v2, Ljava/util/Date;
invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_15b
const-class v2, Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_15b
sget-object v4, Lcom/facebook/model/GraphObject$Factory;->dateFormats:[Ljava/text/SimpleDateFormat;
array-length v5, v4
move v2, v1
:goto_145
if-ge v2, v5, :cond_15b
aget-object v6, v4, v2
:try_start_149
move-object v0, p0
check-cast v0, Ljava/lang/String;
move-object v1, v0
invoke-virtual {v6, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
:try_end_150
.catch Ljava/text/ParseException; {:try_start_149 .. :try_end_150} :catch_156
move-result-object v1
if-eqz v1, :cond_157
move-object p0, v1
goto/16 :goto_10
:catch_156
move-exception v1
:cond_157
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_145
:cond_15b
new-instance v1, Lcom/facebook/FacebookGraphObjectException;
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
invoke-direct {v1, v2}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method static convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
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
.method public static create()Lcom/facebook/model/GraphObject;
.registers 1
const-class v0, Lcom/facebook/model/GraphObject;
invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
move-result-object v0
return-object v0
.end method
.method public static create(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;
.registers 2
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
invoke-static {p1, p0}, Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
move-result-object v0
return-object v0
.end method
.method private static createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
.registers 5
invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->verifyCanProxyClass(Ljava/lang/Class;)V
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
aput-object p0, v0, v1
new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
invoke-direct {v1, p1, p0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
const-class v2, Lcom/facebook/model/GraphObject;
invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/model/GraphObject;
return-object v0
.end method
.method private static createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/Class;
const/4 v1, 0x0
const-class v2, Ljava/util/Map;
aput-object v2, v0, v1
new-instance v1, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
const-class v2, Ljava/util/Map;
invoke-direct {v1, p0, v2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;-><init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
const-class v2, Lcom/facebook/model/GraphObject;
invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v2
invoke-static {v2, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
return-object v0
.end method
.method public static createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
.registers 2
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
invoke-static {v0, p0}, Lcom/facebook/model/GraphObject$Factory;->createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
move-result-object v0
return-object v0
.end method
.method public static createList(Lorg/json/JSONArray;Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;
.registers 3
new-instance v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;
invoke-direct {v0, p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectListImpl;-><init>(Lorg/json/JSONArray;Ljava/lang/Class;)V
return-object v0
.end method
.method private static getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
if-nez p0, :cond_4
const/4 p0, 0x0
:goto_3
:cond_3
return-object p0
:cond_4
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Lcom/facebook/model/GraphObject;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_17
check-cast p0, Lcom/facebook/model/GraphObject;
invoke-interface {p0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object p0
goto :goto_3
:cond_17
const-class v1, Lcom/facebook/model/GraphObjectList;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_26
check-cast p0, Lcom/facebook/model/GraphObjectList;
invoke-interface {p0}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;
move-result-object p0
goto :goto_3
:cond_26
const-class v1, Ljava/lang/Iterable;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_3
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
check-cast p0, Ljava/lang/Iterable;
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_39
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
const-class v3, Lcom/facebook/model/GraphObject;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v3
if-eqz v3, :cond_59
check-cast v0, Lcom/facebook/model/GraphObject;
invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_39
:cond_59
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_39
:cond_5d
move-object p0, v1
goto :goto_3
.end method
.method private static declared-synchronized hasClassBeenVerified(Ljava/lang/Class;)Z
.registers 3
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
.registers 6
const/4 v0, 0x0
if-eqz p0, :cond_1d
if-eqz p1, :cond_1d
invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v1
const-string v2, "id"
invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1d
invoke-interface {p1}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v1
const-string v2, "id"
invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_1e
:goto_1d
:cond_1d
return v0
:cond_1e
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_26
const/4 v0, 0x1
goto :goto_1d
:cond_26
const-string v1, "id"
invoke-interface {p0, v1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
const-string v2, "id"
invoke-interface {p1, v2}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
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
.method private static declared-synchronized recordClassHasBeenVerified(Ljava/lang/Class;)V
.registers 3
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
.registers 12
const/4 v10, 0x3
invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->hasClassBeenVerified(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_8
:goto_7
return-void
:cond_8
invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z
move-result v0
if-nez v0, :cond_27
new-instance v0, Lcom/facebook/FacebookGraphObjectException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Factory can only wrap interfaces, not class: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
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
const-class v7, Lcom/facebook/model/PropertyName;
invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z
move-result v7
invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v8
const-class v9, Lcom/facebook/model/GraphObject;
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-nez v8, :cond_6c
const/4 v8, 0x1
if-ne v5, v8, :cond_97
sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-ne v6, v8, :cond_97
if-eqz v7, :cond_70
const-class v0, Lcom/facebook/model/PropertyName;
invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/facebook/model/PropertyName;
invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_7e
:goto_6c
:cond_6c
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
:goto_7e
:cond_7e
new-instance v0, Lcom/facebook/FacebookGraphObjectException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Factory can\'t proxy method: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/FacebookGraphObjectException;-><init>(Ljava/lang/String;)V
throw v0
:cond_97
if-nez v5, :cond_7e
sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
if-eq v6, v5, :cond_7e
if-eqz v7, :cond_b2
const-class v0, Lcom/facebook/model/PropertyName;
invoke-virtual {v4, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/facebook/model/PropertyName;
invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
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
invoke-static {p0}, Lcom/facebook/model/GraphObject$Factory;->recordClassHasBeenVerified(Ljava/lang/Class;)V
goto/16 :goto_7
.end method