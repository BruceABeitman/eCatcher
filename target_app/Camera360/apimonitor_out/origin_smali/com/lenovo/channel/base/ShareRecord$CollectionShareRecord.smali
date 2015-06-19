.class public Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
.super Lcom/lenovo/channel/base/ShareRecord;
.source "ShareRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/channel/base/ShareRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CollectionShareRecord"
.end annotation


# instance fields
.field private j:Lcom/lenovo/channel/base/ShareCollection;


# direct methods
.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/lenovo/channel/base/ShareRecord;-><init>()V

    return-void
.end method

.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/channel/base/ShareCollection;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/channel/base/ShareCollection;Ljava/lang/String;ZLjava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/channel/base/ShareCollection;Ljava/lang/String;ZLjava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 7

    new-instance v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->b:Ljava/lang/String;

    iput-object p0, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    iput-object p1, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    iput-object p2, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->g:Ljava/lang/String;

    iput-boolean p3, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->h:Z

    iput-object p4, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 3

    new-instance v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;-><init>()V

    iput-object p0, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    iput-object p1, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 3

    new-instance v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;-><init>()V

    sget-object v1, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-virtual {v0, p0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->fromJSON(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;
    .registers 4

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    invoke-virtual {p0, v0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a(Lcom/lenovo/channel/base/ShareRecord;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->clone()Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    move-result-object v0

    return-object v0
.end method

.method public emptyContent()Z
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public fromJSON(Lorg/json/JSONObject;)V
    .registers 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/lenovo/channel/base/ShareRecord;->fromJSON(Lorg/json/JSONObject;)V

    const-string/jumbo v1, "collection"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/channel/base/ShareCollection;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareCollection;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_10} :catch_11

    :goto_10
    return-void

    :catch_11
    move-exception v0

    const-string/jumbo v1, "ShareRecord"

    invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method public getCollection()Lcom/lenovo/channel/base/ShareCollection;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    return-object v0
.end method

.method public getItem()Lcom/lenovo/content/base/ContentItem;
    .registers 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "can not surport this method!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
    .registers 2

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->COLLECTION:Lcom/lenovo/channel/base/ShareRecord$RecordType;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    if-nez v0, :cond_7

    const-wide/16 v0, 0x0

    :goto_6
    return-wide v0

    :cond_7
    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareCollection;->getSize()J

    move-result-wide v0

    goto :goto_6
.end method

.method public setCollection(Lcom/lenovo/channel/base/ShareCollection;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    return-void
.end method

.method public toJSON()Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-super {p0, v1}, Lcom/lenovo/channel/base/ShareRecord;->a(Lorg/json/JSONObject;)V

    const-string/jumbo v2, "collection"

    iget-object v3, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareCollection;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_14} :catch_15

    :goto_14
    return-object v1

    :catch_15
    move-exception v0

    const-string/jumbo v2, "ShareRecord"

    invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "CollectionShareRecord [Type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ShareId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DeviceId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", DeviceName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Collection = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->j:Lcom/lenovo/channel/base/ShareCollection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->f:Lcom/lenovo/channel/base/ShareRecord$Status;

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$Status;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
