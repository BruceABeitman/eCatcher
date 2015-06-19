.class public final Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;
.super Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->e:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    invoke-direct {p0, p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    const-string v0, "/v3/space/new-releases"

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_47

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "release"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "albumName"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "uri"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "image"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "artistName"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_47
    return-object v1
.end method
