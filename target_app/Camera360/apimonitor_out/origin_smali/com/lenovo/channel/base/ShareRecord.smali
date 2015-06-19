.class public abstract Lcom/lenovo/channel/base/ShareRecord;
.super Ljava/lang/Object;
.source "ShareRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/channel/base/ShareRecord$1;,
        Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;,
        Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;,
        Lcom/lenovo/channel/base/ShareRecord$Status;,
        Lcom/lenovo/channel/base/ShareRecord$RecordType;,
        Lcom/lenovo/channel/base/ShareRecord$ShareType;
    }
.end annotation


# instance fields
.field protected a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

.field protected b:Ljava/lang/String;

.field protected c:Ljava/lang/String;

.field protected d:Ljava/lang/String;

.field protected e:J

.field protected f:Lcom/lenovo/channel/base/ShareRecord$Status;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/channel/base/ShareRecord;->e:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    sget-object v0, Lcom/lenovo/channel/base/ShareRecord$Status;->WAITING:Lcom/lenovo/channel/base/ShareRecord$Status;

    iput-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->f:Lcom/lenovo/channel/base/ShareRecord$Status;

    return-void
.end method

.method public static create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "record_type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/lenovo/channel/base/ShareRecord$RecordType;->fromInt(I)Lcom/lenovo/channel/base/ShareRecord$RecordType;

    move-result-object v0

    sget-object v1, Lcom/lenovo/channel/base/ShareRecord$1;->a:[I

    invoke-virtual {v0}, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_22

    const/4 v1, 0x0

    :goto_17
    return-object v1

    :pswitch_18
    invoke-static {p0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;

    move-result-object v1

    goto :goto_17

    :pswitch_1d
    invoke-static {p0}, Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$CollectionShareRecord;

    move-result-object v1

    goto :goto_17

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_18
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method protected a(Lcom/lenovo/channel/base/ShareRecord;)V
    .registers 3

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    iput-boolean v0, p1, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->d:Ljava/lang/String;

    iput-object v0, p1, Lcom/lenovo/channel/base/ShareRecord;->d:Ljava/lang/String;

    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "record_id"

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "record_type"

    invoke-virtual {p0}, Lcom/lenovo/channel/base/ShareRecord;->getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareRecord$RecordType;->toInt()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "des_message"

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31
    const-string/jumbo v1, "mimetype"

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "autoopen"

    iget-boolean v2, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "cookie"

    iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public abstract emptyContent()Z
.end method

.method protected fromJSON(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v1, "record_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    const-string/jumbo v1, "record_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    :goto_12
    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    const-string/jumbo v1, "description"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "des_message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    const-string/jumbo v1, "des_message"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_32
    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    :cond_34
    const-string/jumbo v1, "mimetype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string/jumbo v1, "mimetype"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    :cond_46
    const-string/jumbo v1, "autoopen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_58

    const-string/jumbo v1, "autoopen"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    :cond_58
    const-string/jumbo v1, "cookie"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6a

    const-string/jumbo v1, "cookie"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    :cond_6a
    return-void

    :cond_6b
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    goto :goto_12

    :cond_76
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public abstract getCollection()Lcom/lenovo/channel/base/ShareCollection;
.end method

.method public getCookie()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->d:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getItem()Lcom/lenovo/content/base/ContentItem;
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
.end method

.method public getShareId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getSize()J
.end method

.method public getStatus()Lcom/lenovo/channel/base/ShareRecord$Status;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->f:Lcom/lenovo/channel/base/ShareRecord$Status;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/lenovo/channel/base/ShareRecord;->e:J

    return-wide v0
.end method

.method public getType()Lcom/lenovo/channel/base/ShareRecord$ShareType;
    .registers 2

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    return-object v0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/ah;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;

    invoke-virtual {v1}, Lcom/lenovo/channel/base/ShareRecord$ShareType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoOpen()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    return v0
.end method

.method public setAutoOpen(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lenovo/channel/base/ShareRecord;->h:Z

    return-void
.end method

.method public setCookie(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord;->i:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord;->j:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord;->g:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Lcom/lenovo/channel/base/ShareRecord$Status;)V
    .registers 2

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord;->f:Lcom/lenovo/channel/base/ShareRecord$Status;

    return-void
.end method

.method public setTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/lenovo/channel/base/ShareRecord;->e:J

    return-void
.end method

.method public setTo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/lenovo/channel/base/ShareRecord;->d:Ljava/lang/String;

    return-void
.end method

.method public abstract toJSON()Lorg/json/JSONObject;
.end method
