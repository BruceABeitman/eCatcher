.class public final Lcom/bbm/util/cb;
.super Ljava/lang/Object;
.source "JSONUtil.java"
.method public static a(Lorg/json/JSONObject;)I
.registers 7
if-nez p0, :cond_4
const/4 v3, 0x0
:cond_3
return v3
:cond_4
const/4 v1, 0x1
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v4
move v3, v1
:goto_a
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_3
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:try_start_16
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_25
mul-int/lit8 v2, v3, 0x1f
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v1, v2
move v3, v1
goto :goto_a
:cond_25
instance-of v5, v2, Lorg/json/JSONObject;
if-eqz v5, :cond_3b
mul-int/lit8 v5, v3, 0x1f
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v5, v1
move-object v0, v2
check-cast v0, Lorg/json/JSONObject;
move-object v1, v0
invoke-static {v1}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;)I
move-result v1
add-int/2addr v1, v5
move v3, v1
goto :goto_a
:cond_3b
mul-int/lit8 v5, v3, 0x1f
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
add-int/2addr v1, v5
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
:try_end_45
.catch Lorg/json/JSONException; {:try_start_16 .. :try_end_45} :catch_49
move-result v2
add-int/2addr v1, v2
move v3, v1
goto :goto_a
:catch_49
move-exception v1
invoke-static {v1}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_a
.end method
.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
instance-of v0, p0, Ljava/util/Collection;
if-eqz v0, :cond_22
check-cast p0, Ljava/util/Collection;
new-instance v0, Lorg/json/JSONArray;
invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_21
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/cb;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_f
:cond_21
move-object p0, v0
:cond_22
return-object p0
.end method
.method private static a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
.registers 4
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
const/4 v0, 0x0
:try_start_6
:goto_6
invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
move-result v2
if-ge v0, v2, :cond_1e
invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;
move-result-object v2
invoke-static {v2}, Lcom/bbm/util/cb;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
:try_end_17
.catch Lorg/json/JSONException; {:try_start_6 .. :try_end_17} :catch_1a
add-int/lit8 v0, v0, 0x1
goto :goto_6
:catch_1a
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_1e
return-object v1
.end method
.method public static a(Lorg/json/JSONObject;Ljava/util/Map;)Z
.registers 13
const-wide/16 v6, 0x0
const/4 v5, 0x1
const/4 v3, 0x0
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v8
move v2, v3
move v4, v5
:goto_e
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_132
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v9
if-nez v9, :cond_12e
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/lang/String;
if-eqz v2, :cond_46
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
:goto_3f
if-nez v1, :cond_125
:goto_41
if-eqz v0, :cond_122
if-eqz v1, :cond_122
:goto_45
return v5
:cond_46
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/lang/Boolean;
if-eqz v2, :cond_6a
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z
move-result v1
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
goto :goto_3f
:cond_6a
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/lang/Double;
if-eqz v2, :cond_8e
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Double;
invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v0
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D
move-result-wide v1
invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
goto :goto_3f
:cond_8e
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/lang/Integer;
if-eqz v2, :cond_d0
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Ljava/lang/String;
if-eqz v2, :cond_c4
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_bf
move v1, v3
:goto_a7
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
goto :goto_3f
:cond_bf
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
goto :goto_a7
:cond_c4
instance-of v2, v1, Ljava/lang/Double;
if-eqz v2, :cond_12b
check-cast v1, Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
double-to-int v1, v1
goto :goto_a7
:cond_d0
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v2, v2, Ljava/lang/Long;
if-eqz v2, :cond_113
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
instance-of v2, v1, Ljava/lang/String;
if-eqz v2, :cond_107
check-cast v1, Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_102
move-wide v1, v6
:goto_e9
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Long;
invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
goto/16 :goto_3f
:cond_102
invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v1
goto :goto_e9
:cond_107
instance-of v2, v1, Ljava/lang/Double;
if-eqz v2, :cond_129
check-cast v1, Ljava/lang/Double;
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
double-to-long v1, v1
goto :goto_e9
:cond_113
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
move v0, v5
goto/16 :goto_3f
:cond_122
move v5, v3
goto/16 :goto_45
:cond_125
move v2, v0
move v4, v1
goto/16 :goto_e
:cond_129
move-wide v1, v6
goto :goto_e9
:cond_12b
move v1, v3
goto/16 :goto_a7
:cond_12e
move v0, v2
move v1, v4
goto/16 :goto_3f
:cond_132
move v0, v2
move v1, v4
goto/16 :goto_41
.end method
.method public static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
.registers 9
const/4 v4, 0x1
const/4 v5, 0x0
if-ne p0, p1, :cond_6
move v1, v4
:goto_5
return v1
:cond_6
if-nez p0, :cond_c
if-nez p1, :cond_c
move v1, v4
goto :goto_5
:cond_c
if-eqz p1, :cond_10
if-nez p0, :cond_12
:cond_10
move v1, v5
goto :goto_5
:cond_12
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
if-eq v1, v2, :cond_1e
move v1, v5
goto :goto_5
:cond_1e
invoke-virtual {p0}, Lorg/json/JSONObject;->length()I
move-result v1
invoke-virtual {p1}, Lorg/json/JSONObject;->length()I
move-result v2
if-eq v1, v2, :cond_2a
move v1, v5
goto :goto_5
:cond_2a
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v6
:goto_2e
:cond_2e
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_67
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
:try_start_3a
invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
if-nez v2, :cond_46
move v1, v5
goto :goto_5
:cond_46
instance-of v1, v2, Lorg/json/JSONObject;
if-eqz v1, :cond_5a
move-object v0, v2
check-cast v0, Lorg/json/JSONObject;
move-object v1, v0
move-object v0, v3
check-cast v0, Lorg/json/JSONObject;
move-object v2, v0
invoke-static {v1, v2}, Lcom/bbm/util/cb;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
move-result v1
if-nez v1, :cond_2e
move v1, v5
goto :goto_5
:cond_5a
invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
:try_end_5d
.catch Lorg/json/JSONException; {:try_start_3a .. :try_end_5d} :catch_62
move-result v1
if-nez v1, :cond_2e
move v1, v5
goto :goto_5
:catch_62
move-exception v1
invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_2e
:cond_67
move v1, v4
goto :goto_5
.end method
.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
instance-of v0, p0, Lorg/json/JSONObject;
if-eqz v0, :cond_b
check-cast p0, Lorg/json/JSONObject;
invoke-static {p0}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object p0
:cond_a
:goto_a
return-object p0
:cond_b
instance-of v0, p0, Lorg/json/JSONArray;
if-eqz v0, :cond_a
check-cast p0, Lorg/json/JSONArray;
invoke-static {p0}, Lcom/bbm/util/cb;->a(Lorg/json/JSONArray;)Lorg/json/JSONArray;
move-result-object p0
goto :goto_a
.end method
.method public static b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.registers 5
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_25
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v3
invoke-static {v3}, Lcom/bbm/util/cb;->b(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_20
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21
goto :goto_9
:catch_21
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
:cond_25
return-object v1
.end method
.method public static b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.registers 8
if-nez p0, :cond_7
invoke-static {p1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
:goto_6
return-object v0
:cond_7
if-nez p1, :cond_e
invoke-static {p0}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
goto :goto_6
:cond_e
invoke-static {p1}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_16
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_43
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_start_22
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v4
invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v4, :cond_30
instance-of v5, v1, Lorg/json/JSONObject;
if-nez v5, :cond_39
:cond_30
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_33
.catch Lorg/json/JSONException; {:try_start_22 .. :try_end_33} :catch_34
goto :goto_16
:catch_34
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_16
:cond_39
:try_start_39
check-cast v1, Lorg/json/JSONObject;
invoke-static {v1, v4}, Lcom/bbm/util/cb;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_42
.catch Lorg/json/JSONException; {:try_start_39 .. :try_end_42} :catch_34
goto :goto_16
:cond_43
move-object v0, v2
goto :goto_6
.end method