.class public final Lcom/google/android/gms/internal/bm;
.super Ljava/lang/Object;


# instance fields
.field public final ni:Ljava/lang/String;

.field public final nj:Ljava/lang/String;

.field public final nk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nl:Ljava/lang/String;

.field public final nm:Ljava/lang/String;

.field public final nn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final no:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nj:Ljava/lang/String;

    const-string v0, "adapters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    :goto_1c
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2c

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    :cond_2c
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nk:Ljava/util/List;

    const-string v0, "allocation_id"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nl:Ljava/lang/String;

    const-string v0, "imp_urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->nn:Ljava/util/List;

    const-string v0, "ad"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4e
    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->ni:Ljava/lang/String;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_6b

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5c
    iput-object v0, p0, Lcom/google/android/gms/internal/bm;->no:Ljava/lang/String;

    if-eqz v2, :cond_66

    const-string v0, "class_name"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_66
    iput-object v1, p0, Lcom/google/android/gms/internal/bm;->nm:Ljava/lang/String;

    return-void

    :cond_69
    move-object v0, v1

    goto :goto_4e

    :cond_6b
    move-object v0, v1

    goto :goto_5c
.end method
