.class public Lcom/mologiq/analytics/q;
.super Ljava/lang/Object;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
instance-of v0, p0, Ljava/util/Map;
if-eqz v0, :cond_2f
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
check-cast p0, Ljava/util/Map;
invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_13
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_1b
move-object p0, v0
:goto_1a
:cond_1a
return-object p0
:cond_1b
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/mologiq/analytics/q;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_13
:cond_2f
instance-of v0, p0, Ljava/lang/Iterable;
if-eqz v0, :cond_1a
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
check-cast p0, Ljava/lang/Iterable;
invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3e
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_46
move-object p0, v0
goto :goto_1a
:cond_46
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_3e
.end method
.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_6
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v2
if-lt v0, v2, :cond_d
return-object v1
:cond_d
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/mologiq/analytics/q;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
.end method
.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Map;
.registers 3
invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
invoke-static {v0}, Lcom/mologiq/analytics/q;->b(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public static a(Lorg/json/JSONObject;)Z
.registers 2
invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;
if-ne p0, v0, :cond_6
const/4 p0, 0x0
:cond_5
:goto_5
return-object p0
:cond_6
instance-of v0, p0, Lorg/json/JSONObject;
if-eqz v0, :cond_11
check-cast p0, Lorg/json/JSONObject;
invoke-static {p0}, Lcom/mologiq/analytics/q;->b(Lorg/json/JSONObject;)Ljava/util/Map;
move-result-object p0
goto :goto_5
:cond_11
instance-of v0, p0, Lorg/json/JSONArray;
if-eqz v0, :cond_5
check-cast p0, Lorg/json/JSONArray;
invoke-static {p0}, Lcom/mologiq/analytics/q;->a(Lorg/json/JSONArray;)Ljava/util/List;
move-result-object p0
goto :goto_5
.end method
.method public static b(Lorg/json/JSONObject;)Ljava/util/Map;
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_10
return-object v1
:cond_10
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/mologiq/analytics/q;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
.end method