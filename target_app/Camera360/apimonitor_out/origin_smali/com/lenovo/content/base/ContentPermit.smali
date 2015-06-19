.class public Lcom/lenovo/content/base/ContentPermit;
.super Ljava/lang/Object;
.source "ContentPermit.java"


# instance fields
.field private a:Lcom/lenovo/content/base/ContentType;

.field private b:Lcom/lenovo/content/base/FileType;


# direct methods
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/FileType;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/content/base/ContentPermit;->a:Lcom/lenovo/content/base/ContentType;

    iput-object p2, p0, Lcom/lenovo/content/base/ContentPermit;->b:Lcom/lenovo/content/base/FileType;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->a:Lcom/lenovo/content/base/ContentType;

    const-string/jumbo v0, "filetype"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/content/base/FileType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/FileType;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->b:Lcom/lenovo/content/base/FileType;

    return-void
.end method

.method public static fromJSON(Lorg/json/JSONObject;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentPermit;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, "items"

    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_65

    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_16} :catch_45

    move-result-object v4

    if-nez v4, :cond_1c

    :goto_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_1c
    :try_start_1c
    new-instance v2, Lcom/lenovo/content/base/ContentPermit;

    invoke-direct {v2, v4}, Lcom/lenovo/content/base/ContentPermit;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_24} :catch_25

    goto :goto_19

    :catch_25
    move-exception v3

    :try_start_26
    const-string/jumbo v7, "ContentPermit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fromJSON:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_44} :catch_45

    goto :goto_19

    :catch_45
    move-exception v0

    const-string/jumbo v7, "ContentPermit"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "fromJSON:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_65
    return-object v6
.end method

.method public static fromJSONString(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentPermit;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/content/base/ContentPermit;->fromJSON(Lorg/json/JSONObject;)Ljava/util/List;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    :goto_9
    return-object v2

    :catch_a
    move-exception v0

    const-string/jumbo v2, "ContentPermit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fromJSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_9
.end method

.method public static toJSON(Ljava/util/List;)Lorg/json/JSONObject;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentPermit;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    :goto_b
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_23

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/content/base/ContentPermit;

    invoke-virtual {v5}, Lcom/lenovo/content/base/ContentPermit;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_23
    const-string/jumbo v5, "items"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_29} :catch_2a

    :goto_29
    return-object v4

    :catch_2a
    move-exception v0

    const-string/jumbo v5, "ContentPermit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toJSON:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_29
.end method

.method public static toJSONString(Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/content/base/ContentPermit;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lenovo/content/base/ContentPermit;->toJSON(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_a

    const-string/jumbo v1, ""

    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method


# virtual methods
.method public getContentType()Lcom/lenovo/content/base/ContentType;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->a:Lcom/lenovo/content/base/ContentType;

    return-object v0
.end method

.method public getFileType()Lcom/lenovo/content/base/FileType;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->b:Lcom/lenovo/content/base/FileType;

    return-object v0
.end method

.method public isSame(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/FileType;)Z
    .registers 4

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->a:Lcom/lenovo/content/base/ContentType;

    if-ne v0, p1, :cond_a

    iget-object v0, p0, Lcom/lenovo/content/base/ContentPermit;->b:Lcom/lenovo/content/base/FileType;

    if-ne v0, p2, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v2, "type"

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPermit;->a:Lcom/lenovo/content/base/ContentType;

    invoke-virtual {v3}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v2, "filetype"

    iget-object v3, p0, Lcom/lenovo/content/base/ContentPermit;->b:Lcom/lenovo/content/base/FileType;

    invoke-virtual {v3}, Lcom/lenovo/content/base/FileType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v1

    :catch_1e
    move-exception v0

    const-string/jumbo v2, "ContentPermit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toJSON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1d
.end method
