.class public abstract Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/util/bh;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

.field private final d:Lcom/spotify/mobile/android/util/be;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->f:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1f

    const-string v0, "http://app01.tunigo.cloud.spotify.net"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->d:Lcom/spotify/mobile/android/util/be;

    :goto_13
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    return-void

    :cond_1f
    const-string v0, "https://api.tunigo.com"

    invoke-static {v0}, Lcom/spotify/mobile/android/util/l;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/be;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->d:Lcom/spotify/mobile/android/util/be;

    goto :goto_13
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract a(Lorg/json/JSONObject;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end method

.method a(II)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "page"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "per_page"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_22

    const-string v0, "region"

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->b:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    const-string v0, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/spotify/mobile/android/util/c/b;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "platform"

    const-string v2, "android"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "version"

    const-class v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ClientInfo;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ClientInfo;->b()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "dt"

    invoke-static {}, Lcom/spotify/mobile/android/util/an;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "suppress404"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "suppress_response_codes"

    const-string v2, "1"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_6e

    const-string v0, "shuffle"

    :goto_6a
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_6e
    const-string v0, ""

    goto :goto_6a
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 13

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    check-cast p1, Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    if-eqz v0, :cond_39

    :try_start_f
    const-string v1, "numItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    const-string v1, "numItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_6f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_1c} :catch_56

    move-result v1

    if-nez v1, :cond_3a

    move-object v1, v2

    :goto_20
    :try_start_20
    const-string v5, "params"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    const-string v5, "params"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "start"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_81
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_33} :catch_8d

    move-result v3

    :cond_34
    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    const-string v1, "numItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const-string v1, "numItems"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iget v5, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->e:I
    :try_end_4a
    .catchall {:try_start_3a .. :try_end_4a} :catchall_6f
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_4a} :catch_56

    if-ge v1, v5, :cond_8f

    :goto_4c
    :try_start_4c
    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_79
    .catch Lorg/json/JSONException; {:try_start_4c .. :try_end_4f} :catch_84

    move-result-object v5

    :try_start_50
    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->b(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_7d
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_53} :catch_88

    move-result-object v2

    move-object v1, v5

    goto :goto_20

    :catch_56
    move-exception v1

    move-object v5, v1

    move v4, v3

    move-object v1, v2

    :goto_5a
    :try_start_5a
    const-string v6, "Exception when fetching JSON: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v6, v7}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_69
    .catchall {:try_start_5a .. :try_end_69} :catchall_81

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    goto :goto_39

    :catchall_6f
    move-exception v1

    move-object v6, v1

    move v4, v3

    move-object v1, v2

    :goto_73
    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    throw v6

    :catchall_79
    move-exception v1

    move-object v6, v1

    move-object v1, v2

    goto :goto_73

    :catchall_7d
    move-exception v1

    move-object v6, v1

    move-object v1, v5

    goto :goto_73

    :catchall_81
    move-exception v5

    move-object v6, v5

    goto :goto_73

    :catch_84
    move-exception v1

    move-object v5, v1

    move-object v1, v2

    goto :goto_5a

    :catch_88
    move-exception v1

    move-object v10, v1

    move-object v1, v5

    move-object v5, v10

    goto :goto_5a

    :catch_8d
    move-exception v5

    goto :goto_5a

    :cond_8f
    move v4, v3

    goto :goto_4c
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, "Exception when fetching JSON: %s"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {p1, v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "Log message: %s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v5

    invoke-static {p1, v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;

    if-eqz v0, :cond_2a

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    move-object v2, v1

    invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    :cond_2a
    return-void
.end method

.method public b(Lorg/json/JSONObject;)Ljava/util/Map;
    .registers 3
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

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b(II)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->d:Lcom/spotify/mobile/android/util/be;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a(II)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2, p0}, Lcom/spotify/mobile/android/util/be;->a(Ljava/lang/String;Ljava/util/Map;Lcom/spotify/mobile/android/util/bh;)V

    iput p2, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->e:I

    return-void
.end method
