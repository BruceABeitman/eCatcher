.class final Lcom/facebook/h/e;
.super Lcom/facebook/h/f;
.source "GraphObject.java"
.field private final b:Ljava/lang/Class;
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/Class;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/h/f;-><init>(Ljava/lang/Object;)V
iput-object p2, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;
return-void
.end method
.method private final a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v2, 0x0
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "cast"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_25
aget-object v0, p3, v2
check-cast v0, Ljava/lang/Class;
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;
invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v1
if-eqz v1, :cond_1c
:goto_1b
return-object p1
:cond_1c
iget-object v1, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v1, Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/facebook/h/c;->a(Ljava/lang/Class;Lorg/json/JSONObject;)Lcom/facebook/h/b;
move-result-object p1
goto :goto_1b
:cond_25
const-string v1, "getInnerJSONObject"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_36
invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
move-result-object v0
check-cast v0, Lcom/facebook/h/e;
iget-object p1, v0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
goto :goto_1b
:cond_36
const-string v1, "asMap"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_47
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/h/c;->b(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object p1
goto :goto_1b
:cond_47
const-string v1, "getProperty"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_5c
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p3, v2
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
:cond_5c
const-string v1, "setProperty"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_69
invoke-direct {p0, p3}, Lcom/facebook/h/e;->a([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
:cond_69
const-string v1, "removeProperty"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_7e
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p3, v2
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
const/4 p1, 0x0
goto :goto_1b
:cond_7e
invoke-virtual {p0, p2}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object p1
goto :goto_1b
.end method
.method private a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
aget-object v0, p1, v0
check-cast v0, Ljava/lang/String;
const/4 v1, 0x1
aget-object v1, p1, v1
invoke-static {v1}, Lcom/facebook/h/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
:try_start_c
iget-object v1, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
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
.method private final b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 7
const/4 v2, 0x0
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
const-string v3, "clear"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_16
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;)V
:goto_15
return-object v2
:cond_16
const-string v3, "containsKey"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2f
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p2, v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_15
:cond_2f
const-string v3, "containsValue"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_46
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p2, v1
invoke-static {v0, v1}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;Ljava/lang/Object;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_15
:cond_46
const-string v3, "entrySet"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_57
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/h/i;->b(Lorg/json/JSONObject;)Ljava/util/Set;
move-result-object v2
goto :goto_15
:cond_57
const-string v3, "get"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_6c
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p2, v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
goto :goto_15
:cond_6c
const-string v3, "isEmpty"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_86
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
if-nez v0, :cond_84
const/4 v0, 0x1
:goto_7f
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
goto :goto_15
:cond_84
move v0, v1
goto :goto_7f
:cond_86
const-string v3, "keySet"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_98
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/h/i;->c(Lorg/json/JSONObject;)Ljava/util/Set;
move-result-object v2
goto/16 :goto_15
:cond_98
const-string v3, "put"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_a6
invoke-direct {p0, p2}, Lcom/facebook/h/e;->a([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
goto/16 :goto_15
:cond_a6
const-string v3, "putAll"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_d2
aget-object v0, p2, v1
instance-of v0, v0, Ljava/util/Map;
if-eqz v0, :cond_c2
aget-object v0, p2, v1
check-cast v0, Ljava/util/Map;
move-object v1, v0
:goto_b9
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0, v1}, Lcom/facebook/h/i;->a(Lorg/json/JSONObject;Ljava/util/Map;)V
goto/16 :goto_15
:cond_c2
aget-object v0, p2, v1
instance-of v0, v0, Lcom/facebook/h/b;
if-eqz v0, :cond_115
aget-object v0, p2, v1
check-cast v0, Lcom/facebook/h/b;
invoke-interface {v0}, Lcom/facebook/h/b;->c()Ljava/util/Map;
move-result-object v0
move-object v1, v0
goto :goto_b9
:cond_d2
const-string v3, "remove"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_e7
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
aget-object v1, p2, v1
check-cast v1, Ljava/lang/String;
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
goto/16 :goto_15
:cond_e7
const-string v1, "size"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_fd
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
goto/16 :goto_15
:cond_fd
const-string v1, "values"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10f
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-static {v0}, Lcom/facebook/h/i;->d(Lorg/json/JSONObject;)Ljava/util/Collection;
move-result-object v2
goto/16 :goto_15
:cond_10f
invoke-virtual {p0, p1}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v2
goto/16 :goto_15
:cond_115
move-object v1, v2
goto :goto_b9
.end method
.method private final c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 10
const/4 v1, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
array-length v4, v0
const-class v0, Lcom/facebook/h/k;
invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
move-result-object v0
check-cast v0, Lcom/facebook/h/k;
if-eqz v0, :cond_36
invoke-interface {v0}, Lcom/facebook/h/k;->a()Ljava/lang/String;
move-result-object v0
move-object v3, v0
:goto_19
if-nez v4, :cond_41
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;
move-result-object v0
instance-of v4, v0, Ljava/lang/reflect/ParameterizedType;
if-eqz v4, :cond_b8
check-cast v0, Ljava/lang/reflect/ParameterizedType;
:goto_31
invoke-static {v2, v3, v0}, Lcom/facebook/h/c;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/ParameterizedType;)Ljava/lang/Object;
move-result-object v1
:goto_35
return-object v1
:cond_36
const/4 v0, 0x3
invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/facebook/h/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v3, v0
goto :goto_19
:cond_41
const/4 v0, 0x1
if-ne v4, v0, :cond_b1
const/4 v0, 0x0
aget-object v0, p2, v0
const-class v2, Lcom/facebook/h/b;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_62
check-cast v0, Lcom/facebook/h/b;
invoke-interface {v0}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;
move-result-object v0
move-object v2, v0
:goto_5a
:cond_5a
iget-object v0, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
check-cast v0, Lorg/json/JSONObject;
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_35
:cond_62
const-class v2, Lcom/facebook/h/g;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_76
check-cast v0, Lcom/facebook/h/g;
invoke-interface {v0}, Lcom/facebook/h/g;->a()Lorg/json/JSONArray;
move-result-object v0
move-object v2, v0
goto :goto_5a
:cond_76
const-class v2, Ljava/lang/Iterable;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v2
if-eqz v2, :cond_b6
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
check-cast v0, Ljava/lang/Iterable;
invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_8d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
const-class v5, Lcom/facebook/h/b;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v5
if-eqz v5, :cond_ad
check-cast v0, Lcom/facebook/h/b;
invoke-interface {v0}, Lcom/facebook/h/b;->d()Lorg/json/JSONObject;
move-result-object v0
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_8d
:cond_ad
invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_8d
:cond_b1
invoke-virtual {p0, p1}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v1
goto :goto_35
:cond_b6
move-object v2, v0
goto :goto_5a
:cond_b8
move-object v0, v1
goto/16 :goto_31
.end method
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-virtual {p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Ljava/lang/Object;
if-ne v0, v1, :cond_d
invoke-virtual {p0, p2, p3}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
:goto_c
return-object v0
:cond_d
const-class v1, Ljava/util/Map;
if-ne v0, v1, :cond_16
invoke-direct {p0, p2, p3}, Lcom/facebook/h/e;->b(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_16
const-class v1, Lcom/facebook/h/b;
if-ne v0, v1, :cond_1f
invoke-direct {p0, p1, p2, p3}, Lcom/facebook/h/e;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_1f
const-class v1, Lcom/facebook/h/b;
invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_2c
invoke-direct {p0, p2, p3}, Lcom/facebook/h/e;->c(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
:cond_2c
invoke-virtual {p0, p2}, Lcom/facebook/h/e;->a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method
.method public final toString()Ljava/lang/String;
.registers 5
const-string v0, "GraphObject{graphObjectClass=%s, state=%s}"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget-object v3, p0, Lcom/facebook/h/e;->b:Ljava/lang/Class;
invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget-object v3, p0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method