.class final Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.super Lcom/facebook/model/GraphObject$Factory$ProxyBase;
.source "GraphObject.java"
.field private static final CASTTOMAP_METHOD:Ljava/lang/String; = "asMap"
.field private static final CAST_METHOD:Ljava/lang/String; = "cast"
.field private static final CLEAR_METHOD:Ljava/lang/String; = "clear"
.field private static final CONTAINSKEY_METHOD:Ljava/lang/String; = "containsKey"
.field private static final CONTAINSVALUE_METHOD:Ljava/lang/String; = "containsValue"
.field private static final ENTRYSET_METHOD:Ljava/lang/String; = "entrySet"
.field private static final GETINNERJSONOBJECT_METHOD:Ljava/lang/String; = "getInnerJSONObject"
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
.field private final graphObjectClass:Ljava/lang/Class;
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/model/GraphObject$Factory$ProxyBase;-><init>(Ljava/lang/Object;)V
iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;
return-void
.end method
.method private final proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 17
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v6
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v12
array-length v8, v12
const-class v12, Lcom/facebook/model/PropertyName;
invoke-virtual {p1, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v10
check-cast v10, Lcom/facebook/model/PropertyName;
if-eqz v10, :cond_36
invoke-interface {v10}, Lcom/facebook/model/PropertyName;->value()Ljava/lang/String;
move-result-object v5
:goto_17
if-nez v8, :cond_40
iget-object v12, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v12, Lorg/json/JSONObject;
invoke-virtual {v12, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v11
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
move-result-object v1
const/4 v9, 0x0
instance-of v12, v1, Ljava/lang/reflect/ParameterizedType;
if-eqz v12, :cond_31
move-object v9, v1
check-cast v9, Ljava/lang/reflect/ParameterizedType;
:cond_31
invoke-static {v11, v0, v9}, Lcom/facebook/model/GraphObject$Factory;->coerceValueToExpectedType(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
move-result-object v11
:goto_35
return-object v11
:cond_36
const/4 v12, 0x3
invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Lcom/facebook/model/GraphObject$Factory;->convertCamelCaseToLowercaseWithUnderscores(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
goto :goto_17
:cond_40
const/4 v12, 0x1
if-ne v8, v12, :cond_b2
const/4 v12, 0x0
aget-object v11, p2, v12
const-class v12, Lcom/facebook/model/GraphObject;
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v12
if-eqz v12, :cond_61
check-cast v11, Lcom/facebook/model/GraphObject;
invoke-interface {v11}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v11
:cond_58
:goto_58
iget-object v12, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v12, Lorg/json/JSONObject;
invoke-virtual {v12, v5, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const/4 v11, 0x0
goto :goto_35
:cond_61
const-class v12, Lcom/facebook/model/GraphObjectList;
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v12
if-eqz v12, :cond_74
check-cast v11, Lcom/facebook/model/GraphObjectList;
invoke-interface {v11}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;
move-result-object v11
goto :goto_58
:cond_74
const-class v12, Ljava/lang/Iterable;
invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v12
if-eqz v12, :cond_58
new-instance v4, Lorg/json/JSONArray;
invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V
move-object v3, v11
check-cast v3, Ljava/lang/Iterable;
invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_b0
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v7
const-class v12, Lcom/facebook/model/GraphObject;
invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v13
invoke-virtual {v12, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v12
if-eqz v12, :cond_ac
check-cast v7, Lcom/facebook/model/GraphObject;
invoke-interface {v7}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;
move-result-object v12
invoke-virtual {v4, v12}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_8c
:cond_ac
invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_8c
:cond_b0
move-object v11, v4
goto :goto_58
:cond_b2
invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v11
goto/16 :goto_35
.end method
.method private final proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v5, 0x0
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
const-string v4, "cast"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_25
aget-object v0, p3, v5
check-cast v0, Ljava/lang/Class;
if-eqz v0, :cond_1c
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->graphObjectClass:Ljava/lang/Class;
invoke-virtual {v0, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v4
if-eqz v4, :cond_1c
:goto_1b
return-object p1
:cond_1c
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v4, Lorg/json/JSONObject;
#calls: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxy(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
invoke-static {v0, v4}, Lcom/facebook/model/GraphObject$Factory;->access$000(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/model/GraphObject;
move-result-object p1
goto :goto_1b
:cond_25
const-string v4, "getInnerJSONObject"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_37
invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
move-result-object v1
move-object v3, v1
check-cast v3, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
iget-object p1, v3, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
goto :goto_1b
:cond_37
const-string v4, "asMap"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_48
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v4, Lorg/json/JSONObject;
#calls: Lcom/facebook/model/GraphObject$Factory;->createGraphObjectProxyForMap(Lorg/json/JSONObject;)Ljava/util/Map;
invoke-static {v4}, Lcom/facebook/model/GraphObject$Factory;->access$100(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object p1
goto :goto_1b
:cond_48
const-string v4, "getProperty"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_5d
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v4, Lorg/json/JSONObject;
aget-object v5, p3, v5
check-cast v5, Ljava/lang/String;
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
:cond_5d
const-string v4, "setProperty"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6a
invoke-direct {p0, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
:cond_6a
const-string v4, "removeProperty"
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_7f
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v4, Lorg/json/JSONObject;
aget-object v5, p3, v5
check-cast v5, Ljava/lang/String;
invoke-virtual {v4, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
const/4 p1, 0x0
goto :goto_1b
:cond_7f
invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
.end method
.method private final proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 9
const/4 v5, 0x0
const/4 v4, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
const-string v3, "clear"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_17
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectClear(Lorg/json/JSONObject;)V
move-object v3, v5
:goto_16
return-object v3
:cond_17
const-string v3, "containsKey"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_30
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
aget-object v4, p2, v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
goto :goto_16
:cond_30
const-string v3, "containsValue"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_47
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
aget-object v4, p2, v4
invoke-static {v3, v4}, Lcom/facebook/model/JsonUtil;->jsonObjectContainsValue(Lorg/json/JSONObject;Ljava/lang/Object;)Z
move-result v3
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
goto :goto_16
:cond_47
const-string v3, "entrySet"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_58
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectEntrySet(Lorg/json/JSONObject;)Ljava/util/Set;
move-result-object v3
goto :goto_16
:cond_58
const-string v3, "get"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6d
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
aget-object v4, p2, v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
goto :goto_16
:cond_6d
const-string v3, "isEmpty"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_87
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v3
if-nez v3, :cond_85
const/4 v3, 0x1
:goto_80
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
goto :goto_16
:cond_85
move v3, v4
goto :goto_80
:cond_87
const-string v3, "keySet"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_99
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectKeySet(Lorg/json/JSONObject;)Ljava/util/Set;
move-result-object v3
goto/16 :goto_16
:cond_99
const-string v3, "put"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a7
invoke-direct {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
goto/16 :goto_16
:cond_a7
const-string v3, "putAll"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d4
const/4 v1, 0x0
aget-object v3, p2, v4
instance-of v3, v3, Ljava/util/Map;
if-eqz v3, :cond_c5
aget-object v0, p2, v4
check-cast v0, Ljava/util/Map;
move-object v1, v0
:goto_bb
:cond_bb
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-static {v3, v1}, Lcom/facebook/model/JsonUtil;->jsonObjectPutAll(Lorg/json/JSONObject;Ljava/util/Map;)V
move-object v3, v5
goto/16 :goto_16
:cond_c5
aget-object v3, p2, v4
instance-of v3, v3, Lcom/facebook/model/GraphObject;
if-eqz v3, :cond_bb
aget-object v3, p2, v4
check-cast v3, Lcom/facebook/model/GraphObject;
invoke-interface {v3}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;
move-result-object v1
goto :goto_bb
:cond_d4
const-string v3, "remove"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_ea
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
aget-object v4, p2, v4
check-cast v4, Ljava/lang/String;
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
move-object v3, v5
goto/16 :goto_16
:cond_ea
const-string v3, "size"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_100
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-virtual {v3}, Lorg/json/JSONObject;->length()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
goto/16 :goto_16
:cond_100
const-string v3, "values"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_112
iget-object v3, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v3, Lorg/json/JSONObject;
invoke-static {v3}, Lcom/facebook/model/JsonUtil;->jsonObjectValues(Lorg/json/JSONObject;)Ljava/util/Collection;
move-result-object v3
goto/16 :goto_16
:cond_112
invoke-virtual {p0, p1}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v3
goto/16 :goto_16
.end method
.method private setJSONProperty([Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v4, 0x0
aget-object v1, p1, v4
check-cast v1, Ljava/lang/String;
const/4 v4, 0x1
aget-object v2, p1, v4
#calls: Lcom/facebook/model/GraphObject$Factory;->getUnderlyingJSONObject(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {v2}, Lcom/facebook/model/GraphObject$Factory;->access$200(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
:try_start_c
iget-object v4, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->state:Ljava/lang/Object;
check-cast v4, Lorg/json/JSONObject;
invoke-virtual {v4, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_13
.catch Lorg/json/JSONException; {:try_start_c .. :try_end_13} :catch_15
const/4 v4, 0x0
return-object v4
:catch_15
move-exception v0
new-instance v4, Ljava/lang/IllegalArgumentException;
invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V
throw v4
.end method
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/Object;
if-ne v0, v1, :cond_d
invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
:goto_c
return-object v1
:cond_d
const-class v1, Ljava/util/Map;
if-ne v0, v1, :cond_16
invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyMapMethods(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
goto :goto_c
:cond_16
const-class v1, Lcom/facebook/model/GraphObject;
if-ne v0, v1, :cond_1f
invoke-direct {p0, p1, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectMethods(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
goto :goto_c
:cond_1f
const-class v1, Lcom/facebook/model/GraphObject;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_2c
invoke-direct {p0, p2, p3}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->proxyGraphObjectGettersAndSetters(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
goto :goto_c
:cond_2c
invoke-virtual {p0, p2}, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;->throwUnexpectedMethodSignature(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v1
goto :goto_c
.end method
.method public toString()Ljava/lang/String;
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