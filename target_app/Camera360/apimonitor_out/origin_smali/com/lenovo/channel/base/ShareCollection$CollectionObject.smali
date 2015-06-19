.class public Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
.super Ljava/lang/Object;
.source "ShareCollection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/ShareCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionObject"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareCollection$CollectionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->c:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a(Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method protected a()Lorg/json/JSONObject;
    .registers 9

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string/jumbo v4, "is_collection"

    iget-boolean v5, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v4, "id"

    iget-object v5, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v4, "name"

    iget-object v5, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->c:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-wide v4, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2d

    const-string/jumbo v4, "last_modified"

    iget-wide v5, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_2d
    iget-boolean v4, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    if-eqz v4, :cond_51

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iget-object v4, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3c

    :catch_50
    move-exception v4

    :cond_51
    :goto_51
    return-object v3

    :cond_52
    const-string/jumbo v4, "children"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_58} :catch_50

    goto :goto_51
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 8

    const/4 v3, 0x0

    :try_start_1
    const-string/jumbo v4, "is_collection"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string/jumbo v4, "is_collection"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    :goto_11
    iput-boolean v4, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_23
    iput-object v4, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->b:Ljava/lang/String;

    const-string/jumbo v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    const-string/jumbo v3, "name"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_35
    iput-object v3, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->c:Ljava/lang/String;

    const-string/jumbo v3, "last_modified"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_70

    const-string/jumbo v3, "last_modified"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    :goto_47
    iput-wide v3, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    iget-boolean v3, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    if-eqz v3, :cond_7a

    const-string/jumbo v3, "children"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v1, 0x0

    :goto_55
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_7a

    iget-object v3, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    new-instance v4, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_69} :catch_73

    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    :cond_6c
    const/4 v4, 0x0

    goto :goto_11

    :cond_6e
    move-object v4, v3

    goto :goto_23

    :cond_70
    const-wide/16 v3, 0x0

    goto :goto_47

    :catch_73
    move-exception v0

    const-string/jumbo v3, "Collection"

    invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7a
    return-void
.end method

.method public addChildren(Lcom/lenovo/channel/base/ShareCollection$CollectionObject;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/channel/base/ShareCollection$CollectionObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->e:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModified()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public isCollection()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a:Z

    return v0
.end method

.method public setLastModified(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->d:J

    return-void
.end method
