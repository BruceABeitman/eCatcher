.class public Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.super Lcom/lenovo/channel/base/ShareRecord;
.source "ShareRecord.java"
.field private j:Lcom/lenovo/content/base/ContentItem;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/lenovo/channel/base/ShareRecord;-><init>()V
return-void
.end method
.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/content/base/ContentItem;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 4
const/4 v1, 0x0
const/4 v0, 0x0
invoke-static {p0, p1, v1, v0, v1}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/content/base/ContentItem;Ljava/lang/String;ZLjava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v0
return-object v0
.end method
.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Lcom/lenovo/content/base/ContentItem;Ljava/lang/String;ZLjava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 7
new-instance v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;-><init>()V
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v1
invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->b:Ljava/lang/String;
iput-object p0, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;
iput-object p1, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
iput-object p2, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->g:Ljava/lang/String;
iput-boolean p3, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->h:Z
iput-object p4, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->i:Ljava/lang/String;
return-object v0
.end method
.method public static create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 3
new-instance v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;-><init>()V
iput-object p0, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;
iput-object p1, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->b:Ljava/lang/String;
return-object v0
.end method
.method public static create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 3
new-instance v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-direct {v0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;-><init>()V
sget-object v1, Lcom/lenovo/channel/base/ShareRecord$ShareType;->RECEIVE:Lcom/lenovo/channel/base/ShareRecord$ShareType;
iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-virtual {v0, p0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->fromJSON(Lorg/json/JSONObject;)V
return-object v0
.end method
.method public clone()Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
.registers 4
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;
iget-object v2, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->b:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lcom/lenovo/channel/base/ShareRecord$ShareType;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
iput-object v1, v0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {p0, v0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a(Lcom/lenovo/channel/base/ShareRecord;)V
return-object v0
.end method
.method public bridge synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->clone()Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v0
return-object v0
.end method
.method public emptyContent()Z
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public fromJSON(Lorg/json/JSONObject;)V
.registers 6
:try_start_0
invoke-super {p0, p1}, Lcom/lenovo/channel/base/ShareRecord;->fromJSON(Lorg/json/JSONObject;)V
const-string/jumbo v3, "has_item"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_16
const-string/jumbo v3, "has_item"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v2
:goto_13
if-nez v2, :cond_18
:cond_15
:goto_15
return-void
:cond_16
const/4 v2, 0x1
goto :goto_13
:cond_18
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/bo;->a(Lorg/json/JSONObject;)Lcom/lenovo/content/base/ContentObject;
move-result-object v0
instance-of v3, v0, Lcom/lenovo/content/base/ContentItem;
if-eqz v3, :cond_15
check-cast v0, Lcom/lenovo/content/base/ContentItem;
iput-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
:try_end_24
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_24} :catch_25
goto :goto_15
:catch_25
move-exception v1
const-string/jumbo v3, "ShareRecord"
invoke-static {v3, v1}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_15
.end method
.method public getCollection()Lcom/lenovo/channel/base/ShareCollection;
.registers 3
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "can not surport this method!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public getItem()Lcom/lenovo/content/base/ContentItem;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
return-object v0
.end method
.method public getRecordType()Lcom/lenovo/channel/base/ShareRecord$RecordType;
.registers 2
sget-object v0, Lcom/lenovo/channel/base/ShareRecord$RecordType;->ITEM:Lcom/lenovo/channel/base/ShareRecord$RecordType;
return-object v0
.end method
.method public getSize()J
.registers 3
iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
if-nez v0, :cond_7
const-wide/16 v0, 0x0
:goto_6
return-wide v0
:cond_7
iget-object v0, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getSize()J
move-result-wide v0
goto :goto_6
.end method
.method public setItem(Lcom/lenovo/content/base/ContentItem;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
return-void
.end method
.method public toJSON()Lorg/json/JSONObject;
.registers 9
iget-object v5, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
if-eqz v5, :cond_11
const/4 v2, 0x1
:goto_5
if-eqz v2, :cond_13
iget-object v5, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v5}, Lcom/lenovo/content/base/ContentItem;->toJSON()Lorg/json/JSONObject;
move-result-object v4
:goto_d
if-nez v4, :cond_19
const/4 v4, 0x0
:cond_10
:goto_10
return-object v4
:cond_11
const/4 v2, 0x0
goto :goto_5
:cond_13
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
goto :goto_d
:cond_19
:try_start_19
const-string/jumbo v5, "has_item"
invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
invoke-super {p0, v4}, Lcom/lenovo/channel/base/ShareRecord;->a(Lorg/json/JSONObject;)V
if-eqz v2, :cond_10
const-string/jumbo v1, "dumy"
iget-object v5, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v5}, Lcom/lenovo/content/base/ContentItem;->hasThumbnail()Z
move-result v5
if-nez v5, :cond_30
const/4 v1, 0x0
:cond_30
const-string/jumbo v5, "subtype"
const-string/jumbo v6, "thumbnail"
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "url"
const-string/jumbo v6, "http://dumy"
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "filename"
invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "rawfile_ext"
iget-object v6, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/aq;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "rawfilename"
iget-object v6, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/lenovo/anyshare/sdk/internal/aq;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "sender"
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->a()Lcom/lenovo/channel/base/UserInfo;
move-result-object v6
iget-object v6, v6, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v5, "time"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:try_start_7e
:try_end_7e
.catch Lorg/json/JSONException; {:try_start_19 .. :try_end_7e} :catch_c7
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/i;->b()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "_"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentItem;->getVersionedId()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "UTF-8"
invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "_"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v6, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v6
invoke-virtual {v6}, Lcom/lenovo/content/base/ContentType;->name()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v5, "id"
invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_c2
.catch Ljava/io/UnsupportedEncodingException; {:try_start_7e .. :try_end_c2} :catch_c4
.catch Lorg/json/JSONException; {:try_start_7e .. :try_end_c2} :catch_c7
goto/16 :goto_10
:catch_c4
move-exception v5
goto/16 :goto_10
:catch_c7
move-exception v0
const-string/jumbo v5, "ShareRecord"
invoke-static {v5, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_10
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v1, "ItemShareRecord [Type= "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->a:Lcom/lenovo/channel/base/ShareRecord$ShareType;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", ShareId = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", DeviceId = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", DeviceName = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", Time = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->e:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", Item = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->j:Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ", Status = "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->f:Lcom/lenovo/channel/base/ShareRecord$Status;
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