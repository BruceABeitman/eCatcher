.class public final Lcom/google/android/gms/internal/bn;
.super Ljava/lang/Object;


# instance fields
.field public final np:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/bm;",
            ">;"
        }
    .end annotation
.end field

.field public final nq:J

.field public final nr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final ns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nt:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final nu:Ljava/lang/String;

.field public final nv:J

.field public nw:I

.field public nx:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v5, 0x2

    const/4 v9, 0x0

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/android/gms/internal/ev;->p(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mediation Response JSON: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ev;->C(Ljava/lang/String;)V

    :cond_2c
    const-string v0, "ad_networks"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, -0x1

    const/4 v0, 0x0

    :goto_3d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5b

    new-instance v7, Lcom/google/android/gms/internal/bm;

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/bm;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gez v1, :cond_58

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/bn;->a(Lcom/google/android/gms/internal/bm;)Z

    move-result v7

    if-eqz v7, :cond_58

    move v1, v0

    :cond_58
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    :cond_5b
    iput v1, p0, Lcom/google/android/gms/internal/bn;->nw:I

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bn;->nx:I

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bn;->np:Ljava/util/List;

    const-string v0, "qdata"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bn;->nu:Ljava/lang/String;

    const-string v0, "settings"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_ad

    const-string v1, "ad_network_timeout_millis"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/bn;->nq:J

    const-string v1, "click_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bn;->nr:Ljava/util/List;

    const-string v1, "imp_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bn;->ns:Ljava/util/List;

    const-string v1, "nofill_urls"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/bs;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/bn;->nt:Ljava/util/List;

    const-string v1, "refresh"

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-lez v4, :cond_ab

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    :goto_a8
    iput-wide v0, p0, Lcom/google/android/gms/internal/bn;->nv:J

    :goto_aa
    return-void

    :cond_ab
    move-wide v0, v2

    goto :goto_a8

    :cond_ad
    iput-wide v2, p0, Lcom/google/android/gms/internal/bn;->nq:J

    iput-object v9, p0, Lcom/google/android/gms/internal/bn;->nr:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/bn;->ns:Ljava/util/List;

    iput-object v9, p0, Lcom/google/android/gms/internal/bn;->nt:Ljava/util/List;

    iput-wide v2, p0, Lcom/google/android/gms/internal/bn;->nv:J

    goto :goto_aa
.end method

.method private a(Lcom/google/android/gms/internal/bm;)Z
    .registers 5

    iget-object v0, p1, Lcom/google/android/gms/internal/bm;->nk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
