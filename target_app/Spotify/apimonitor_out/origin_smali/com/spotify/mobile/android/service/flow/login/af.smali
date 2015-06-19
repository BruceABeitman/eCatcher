.class final Lcom/spotify/mobile/android/service/flow/login/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bh;


# instance fields
.field private final a:Lcom/spotify/mobile/android/service/flow/login/ae;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/service/flow/login/ae;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/login/ae;

    iput-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/af;->a:Lcom/spotify/mobile/android/service/flow/login/ae;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "errors"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "errors"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_29
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 7

    const/4 v1, 0x0

    check-cast p1, Lorg/json/JSONObject;

    :try_start_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "suggestions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v0, v1

    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_1f

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_1f
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_37

    new-instance v0, Lcom/spotify/mobile/android/service/flow/login/a/b;

    invoke-direct {v0}, Lcom/spotify/mobile/android/service/flow/login/a/b;-><init>()V

    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/a/b;->a(Lorg/json/JSONObject;)Lcom/spotify/mobile/android/service/flow/login/a/d;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/af;->a:Lcom/spotify/mobile/android/service/flow/login/ae;

    invoke-interface {v3, v2, v0}, Lcom/spotify/mobile/android/service/flow/login/ae;->a(Ljava/util/ArrayList;Lcom/spotify/mobile/android/service/flow/login/a/d;)V

    :goto_36
    return-void

    :cond_37
    invoke-static {p1}, Lcom/spotify/mobile/android/service/flow/login/af;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/spotify/mobile/android/service/flow/login/af;->a:Lcom/spotify/mobile/android/service/flow/login/ae;

    invoke-interface {v3, v2, v0}, Lcom/spotify/mobile/android/service/flow/login/ae;->a(Ljava/util/ArrayList;Ljava/util/Map;)V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_40} :catch_41

    goto :goto_36

    :catch_41
    move-exception v0

    const-string v2, "Failed validating JSON"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_36
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/af;->a:Lcom/spotify/mobile/android/service/flow/login/ae;

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/ae;->a()V

    return-void
.end method
