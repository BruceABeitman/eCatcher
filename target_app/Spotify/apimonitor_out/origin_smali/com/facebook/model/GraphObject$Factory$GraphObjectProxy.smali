.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.super Lcom/facebook/model/GraphObject$Factory$ProxyBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/model/GraphObject$Factory$ProxyBase",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"

.field private static final CAST_METHOD:Ljava/lang/String; = "cast"

.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"

.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"

.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"

.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"

.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"

.field private static final GETPROPERTYASLIST_METHOD:Ljava/lang/String; = "getPropertyAsList"

.field private static final GETPROPERTYAS_METHOD:Ljava/lang/String; = "getPropertyAs"

.field private static final GETPROPERTY_METHOD:Ljava/lang/String; = "getProperty"

.field private static final GET_METHOD:Ljava/lang/String; = "get"

.field private static final ISEMPTY_METHOD:Ljava/lang/String; = "isEmpty"

.field private static final KEYSET_METHOD:Ljava/lang/String; = "keySet"

.field private static final PUTALL_METHOD:Ljava/lang/String; = "putAll"

.field private static final PUT_METHOD:Ljava/lang/String; = "put"

.field private static final REMOVEPROPERTY_METHOD:Ljava/lang/String; = "removeProperty"

.field private static final REMOVE_METHOD:Ljava/lang/String; = "remove"

.field private static final SETPROPERTY_METHOD:Ljava/lang/String; = "setProperty"

.field private static final SIZE_METHOD:Ljava/lang/String; = "size"

.field private static final VALUES_METHOD:Ljava/lang/String; = "values"


# instance fields
.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    return-void
.end method

.method private createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    if-eqz p1, :cond_3e

    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-interface {p1}, Lcom/facebook/model/CreateGraphObject;->value()Ljava/lang/String;

    move-result-object v1

    const-class v0, Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-class v0, Lcom/facebook/model/GraphObject;

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->createList(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v4}, Lcom/facebook/model/GraphObjectList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    :cond_3d
    move-object p2, v0

    :cond_3e
    :goto_3e
    return-object p2

    :cond_3f
    invoke-static {}, Lcom/facebook/model/GraphObject$Factory;->create()Lcom/facebook/model/GraphObject;

    move-result-object v0

    invoke-interface {v0, v1, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object p2, v0

    goto :goto_3e
.end method

.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v3, v0

    const-class v0, Lcom/facebook/model/PropertyName;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/PropertyName;

    if-eqz v0, :cond_36

    invoke-interface {v0}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_19
    if-nez v3, :cond_41

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_64

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    :goto_31
    invoke-static {v2, v3, v0}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object v1

    :goto_35
    return-object v1

    :cond_36
    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_19

    :cond_41
    const/4 v0, 0x1

    if-ne v3, v0, :cond_5f

    const-class v0, Lcom/facebook/model/CreateGraphObject;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/CreateGraphObject;

    const/4 v3, 0x0

    aget-object v3, p2, v3

    invoke-direct {p0, v0, v3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->createGraphObjectsFromParameters(Lcom/facebook/model/CreateGraphObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    #calls: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_35

    :cond_5f
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_35

    :cond_64
    move-object v0, v1

    goto :goto_31
.end method

.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    aget-object v0, p3, v3

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1e

    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1e

    :goto_1d
    return-object p1

    :cond_1e
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    #calls: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
    invoke-static {v0, v1}, Lcom/facebook/model/GraphObject$Factory;->access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;

    move-result-object p1

    goto :goto_1d

    :cond_27
    const-string v1, "getInnerJSONObject"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;

    iget-object p1, v0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    goto :goto_1d

    :cond_38
    const-string v1, "asMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    #calls: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
    invoke-static {v0}, Lcom/facebook/model/GraphObject$Factory;->access$100(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1d

    :cond_49
    const-string v1, "getProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    :cond_5e
    const-string v1, "getPropertyAs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Class;

    invoke-static {v1, v0, v2}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1d

    :cond_7b
    const-string v1, "getPropertyAsList"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a0

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p3, v4

    check-cast v0, Ljava/lang/Class;

    new-instance v2, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;

    invoke-direct {v2, p0, v0}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;-><init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V

    const-class v0, Lcom/facebook/model/GraphObjectList;

    invoke-static {v1, v0, v2}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1d

    :cond_a0
    const-string v1, "setProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ae

    invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1d

    :cond_ae
    const-string v1, "removeProperty"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p3, v3

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object p1, v2

    goto/16 :goto_1d

    :cond_c4
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object p1

    goto/16 :goto_1d
.end method

.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "clear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V

    move-object v0, v2

    :goto_16
    return-object v0

    :cond_17
    const-string v3, "containsKey"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_16

    :cond_30
    const-string v3, "containsValue"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    invoke-static {v0, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_16

    :cond_47
    const-string v3, "entrySet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    goto :goto_16

    :cond_58
    const-string v3, "get"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_16

    :cond_6d
    const-string v3, "isEmpty"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_85

    const/4 v0, 0x1

    :goto_80
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_16

    :cond_85
    move v0, v1

    goto :goto_80

    :cond_87
    const-string v3, "keySet"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;

    move-result-object v0

    goto/16 :goto_16

    :cond_99
    const-string v3, "put"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a7

    invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_16

    :cond_a7
    const-string v3, "putAll"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d7

    aget-object v0, p2, v1

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_c4

    aget-object v0, p2, v1

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    :goto_ba
    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V

    move-object v0, v2

    goto/16 :goto_16

    :cond_c4
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/facebook/model/GraphObject;

    if-eqz v0, :cond_d4

    aget-object v0, p2, v1

    check-cast v0, Lcom/facebook/model/GraphObject;

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v0

    move-object v1, v0

    goto :goto_ba

    :cond_d4
    move-object v0, v2

    goto/16 :goto_16

    :cond_d7
    const-string v3, "remove"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ed

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    aget-object v1, p2, v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, v2

    goto/16 :goto_16

    :cond_ed
    const-string v1, "size"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_16

    :cond_103
    const-string v1, "values"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    iget-object v0, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;

    move-result-object v0

    goto/16 :goto_16

    :cond_115
    invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto/16 :goto_16
.end method

.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    #calls: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v1}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :try_start_c
    iget-object v1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_15

    const/4 v0, 0x0

    return-object v0

    :catch_15
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_d

    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const-class v1, Ljava/util/Map;

    if-ne v0, v1, :cond_16

    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_16
    const-class v1, Lcom/facebook/model/GraphObject;

    if-ne v0, v1, :cond_1f

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_1f
    const-class v1, Lcom/facebook/model/GraphObject;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c

    :cond_2c
    invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_c
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
