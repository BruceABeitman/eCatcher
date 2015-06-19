.class public final Lcom/ford/syncV4/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lorg/json/JSONObject;)Ljava/util/Hashtable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/Hashtable;

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lorg/json/JSONObject;

    if-eqz v2, :cond_27

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/ford/syncV4/a/a;->a(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_27
    instance-of v2, v1, Lorg/json/JSONArray;

    if-eqz v2, :cond_5b

    check-cast v1, Lorg/json/JSONArray;

    new-instance v6, Ljava/util/Vector;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/Vector;-><init>(I)V

    const/4 v2, 0x0

    move v3, v2

    :goto_38
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v3, v2, :cond_57

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v7, v2, Lorg/json/JSONObject;

    if-eqz v7, :cond_53

    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/ford/syncV4/a/a;->a(Lorg/json/JSONObject;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_4f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_38

    :cond_53
    invoke-virtual {v6, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :cond_57
    invoke-virtual {v4, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_5b
    invoke-virtual {v4, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_5f
    return-object v4
.end method

.method public static a([B)Ljava/util/Hashtable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->b:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v1, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static {v0, p0, v1}, Lcom/ford/syncV4/trace/e;->a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BLjava/lang/String;)V

    const/4 v0, 0x0

    :try_start_8
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ford/syncV4/a/a;->a(Lorg/json/JSONObject;)Ljava/util/Hashtable;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_15} :catch_17

    move-result-object v0

    :goto_16
    return-object v0

    :catch_17
    move-exception v1

    const-string v2, "Failed to parse JSON"

    invoke-static {v2, v1}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16
.end method

.method private static a(Ljava/util/Vector;)Lorg/json/JSONArray;
    .registers 5

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/ford/syncV4/proxy/g;

    if-eqz v3, :cond_21

    check-cast v0, Lcom/ford/syncV4/proxy/g;

    invoke-virtual {v0}, Lcom/ford/syncV4/proxy/g;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_21
    instance-of v3, v0, Ljava/util/Hashtable;

    if-eqz v3, :cond_2f

    check-cast v0, Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Hashtable;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_2f
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_9

    :cond_33
    return-object v1
.end method

.method public static a(Ljava/util/Hashtable;)Lorg/json/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/ford/syncV4/proxy/g;

    if-eqz v4, :cond_2b

    check-cast v1, Lcom/ford/syncV4/proxy/g;

    invoke-virtual {v1}, Lcom/ford/syncV4/proxy/g;->g()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_2b
    instance-of v4, v1, Ljava/util/Vector;

    if-eqz v4, :cond_39

    check-cast v1, Ljava/util/Vector;

    invoke-static {v1}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Vector;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_39
    instance-of v4, v1, Ljava/util/Hashtable;

    if-eqz v4, :cond_47

    check-cast v1, Ljava/util/Hashtable;

    invoke-static {v1}, Lcom/ford/syncV4/a/a;->a(Ljava/util/Hashtable;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_47
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_d

    :cond_4b
    return-object v2
.end method

.method public static a(Lcom/ford/syncV4/proxy/b;B)[B
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/ford/syncV4/proxy/b;->a(B)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_c} :catch_15

    move-result-object v0

    :try_start_d
    sget-object v1, Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;->a:Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;

    const-string v2, "42baba60-eb57-11df-98cf-0800200c9a66"

    invoke-static {v1, v0, v2}, Lcom/ford/syncV4/trace/e;->a(Lcom/ford/syncV4/trace/enums/InterfaceActivityDirection;[BLjava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_14} :catch_1f

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_19
    const-string v2, "Failed to encode messages to JSON."

    invoke-static {v2, v1}, Lcom/ford/syncV4/util/c;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14

    :catch_1f
    move-exception v1

    goto :goto_19
.end method
