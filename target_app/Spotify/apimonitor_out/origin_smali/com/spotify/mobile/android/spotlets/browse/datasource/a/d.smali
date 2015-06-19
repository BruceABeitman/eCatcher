.class public final Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;
.super Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e",
        "<",
        "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/a",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/v3/space/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    move v7, v8

    :goto_d
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v7, v0, :cond_51

    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "description"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "uri"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "image"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "numSubscribers"

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->a:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_d

    :cond_51
    return-object v9
.end method

.method final a(II)Ljava/util/Map;
    .registers 7
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

    invoke-super {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/e;->a(II)Ljava/util/Map;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "filter"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->a:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const-string v1, "highlights-0"

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->d:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2e

    const-string v0, "highlights-1"

    :goto_28
    const-string v1, "ab"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_2e
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->d:Lcom/spotify/mobile/android/ui/fragments/logic/j;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/j;->e()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_40

    const-string v0, "highlights-2"

    goto :goto_28

    :cond_40
    move-object v0, v1

    goto :goto_28
.end method
