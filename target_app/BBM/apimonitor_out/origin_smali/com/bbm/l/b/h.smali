.class public final Lcom/bbm/l/b/h;
.super Ljava/lang/Object;
.source "WebSticker.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/l/b/g;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)Lcom/bbm/l/b/h;
    .registers 10

    if-eqz p1, :cond_a1

    const-string v0, "id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/h;->a:Ljava/lang/String;

    const-string v0, "hidden"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bbm/l/b/h;->b:Z

    const-string v0, "name"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/h;->f:Ljava/lang/String;

    const-string v0, "thumbnailUrl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/h;->c:Ljava/lang/String;

    const-string v0, "iconUrl"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/l/b/h;->d:Ljava/lang/String;

    const-string v0, "images"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/l/b/h;->e:Ljava/util/List;

    const/4 v0, 0x0

    :goto_45
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_a1

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_9e

    iget-object v3, p0, Lcom/bbm/l/b/h;->e:Ljava/util/List;

    new-instance v4, Lcom/bbm/l/b/g;

    invoke-direct {v4}, Lcom/bbm/l/b/g;-><init>()V

    if-eqz v2, :cond_9b

    const-string v5, "id"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bbm/l/b/g;->a:Ljava/lang/String;

    const-string v5, "url"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bbm/l/b/g;->b:Ljava/lang/String;

    const-string v5, "description"

    const-string v6, ""

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bbm/l/b/g;->c:Ljava/lang/String;

    new-instance v5, Lcom/bbm/l/b/i;

    invoke-direct {v5}, Lcom/bbm/l/b/i;-><init>()V

    const-string v6, "link"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_99

    const-string v6, "description"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/bbm/l/b/i;->a:Ljava/lang/String;

    const-string v6, "url"

    const-string v7, ""

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/bbm/l/b/i;->b:Ljava/lang/String;

    :cond_99
    iput-object v5, v4, Lcom/bbm/l/b/g;->d:Lcom/bbm/l/b/i;

    :cond_9b
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9e
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_a1
    return-object p0
.end method
