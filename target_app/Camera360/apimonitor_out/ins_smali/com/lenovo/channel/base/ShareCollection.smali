.class public abstract Lcom/lenovo/channel/base/ShareCollection;
.super Ljava/lang/Object;
.source "ShareCollection.java"
.field protected a:Ljava/lang/String;
.field protected b:Ljava/lang/String;
.field protected c:Lcom/lenovo/content/base/ContentType;
.field protected d:Ljava/lang/String;
.field protected e:Ljava/lang/String;
.field protected f:J
.field protected g:I
.field protected h:Z
.field protected i:Lcom/lenovo/content/base/ContentContainer;
.field protected j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
.method protected constructor <init>(Lcom/lenovo/content/base/ContentContainer;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getId()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->getName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->d:Ljava/lang/String;
invoke-virtual {p1}, Lcom/lenovo/content/base/ContentContainer;->hasThumbnail()Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/channel/base/ShareCollection;->h:Z
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->b:Ljava/lang/String;
iput-object p1, p0, Lcom/lenovo/channel/base/ShareCollection;->i:Lcom/lenovo/content/base/ContentContainer;
return-void
.end method
.method protected constructor <init>(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
iput-object p2, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/lenovo/channel/base/ShareCollection;->b:Ljava/lang/String;
iput-object p4, p0, Lcom/lenovo/channel/base/ShareCollection;->d:Ljava/lang/String;
return-void
.end method
.method protected constructor <init>(Lorg/json/JSONObject;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p0, p1}, Lcom/lenovo/channel/base/ShareCollection;->fromJSON(Lorg/json/JSONObject;)V
return-void
.end method
.method public static create(Lcom/lenovo/content/base/ContentContainer;)Lcom/lenovo/channel/base/ShareCollection;
.registers 3
instance-of v0, p0, Lcom/lenovo/anyshare/sdk/internal/bk;
if-eqz v0, :cond_c
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;
check-cast p0, Lcom/lenovo/anyshare/sdk/internal/bk;
invoke-direct {v0, p0}, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;-><init>(Lcom/lenovo/anyshare/sdk/internal/bk;)V
:goto_b
return-object v0
:cond_c
instance-of v0, p0, Lcom/lenovo/anyshare/sdk/internal/bj;
if-eqz v0, :cond_16
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;
invoke-direct {v0, p0}, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;-><init>(Lcom/lenovo/content/base/ContentContainer;)V
goto :goto_b
:cond_16
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string/jumbo v1, "can not surport container type!"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public static create(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/channel/base/ShareCollection;
.registers 7
const/4 v0, 0x0
sget-object v1, Lcom/lenovo/channel/base/ShareCollection$1;->a:[I
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_24
:goto_c
if-nez v0, :cond_23
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string/jumbo v2, "can not surport container type!"
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_17
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;
invoke-direct {v0, p1, p2, p3}, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:pswitch_1d
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;
invoke-direct {v0, p1, p0, p2, p3}, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;-><init>(Ljava/lang/String;Lcom/lenovo/content/base/ContentType;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_23
return-object v0
:pswitch_data_24
.packed-switch 0x1
:pswitch_17
:pswitch_1d
:pswitch_1d
:pswitch_1d
.end packed-switch
.end method
.method public static create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareCollection;
.registers 5
const-string/jumbo v2, "type"
invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
move-result-object v1
const/4 v0, 0x0
sget-object v2, Lcom/lenovo/channel/base/ShareCollection$1;->a:[I
invoke-virtual {v1}, Lcom/lenovo/content/base/ContentType;->ordinal()I
move-result v3
aget v2, v2, v3
packed-switch v2, :pswitch_data_30
:goto_17
if-nez v0, :cond_2e
new-instance v2, Ljava/lang/IllegalArgumentException;
const-string/jumbo v3, "can not surport container type!"
invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v2
:pswitch_22
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;
invoke-direct {v0, p0}, Lcom/lenovo/channel/base/ShareCollection$FolderCollection;-><init>(Lorg/json/JSONObject;)V
goto :goto_17
:pswitch_28
new-instance v0, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;
invoke-direct {v0, p0}, Lcom/lenovo/channel/base/ShareCollection$AlbumCollection;-><init>(Lorg/json/JSONObject;)V
goto :goto_17
:cond_2e
return-object v0
nop
:pswitch_data_30
.packed-switch 0x1
:pswitch_22
:pswitch_28
:pswitch_28
:pswitch_28
.end packed-switch
.end method
.method public fromJSON(Lorg/json/JSONObject;)V
.registers 7
const/4 v1, 0x0
const/4 v2, 0x0
:try_start_2
const-string/jumbo v3, "id"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
iput-object v3, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
const-string/jumbo v3, "version"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_9c
const-string/jumbo v3, "version"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:goto_1b
iput-object v3, p0, Lcom/lenovo/channel/base/ShareCollection;->b:Ljava/lang/String;
const-string/jumbo v3, "type"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_a6
const-string/jumbo v3, "type"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Lcom/lenovo/content/base/ContentType;->fromString(Ljava/lang/String;)Lcom/lenovo/content/base/ContentType;
move-result-object v3
:goto_31
iput-object v3, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
const-string/jumbo v3, "name"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_a8
const-string/jumbo v3, "name"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
:goto_43
iput-object v3, p0, Lcom/lenovo/channel/base/ShareCollection;->d:Ljava/lang/String;
const-string/jumbo v3, "path"
invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_55
const-string/jumbo v2, "path"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:cond_55
iput-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->e:Ljava/lang/String;
const-string/jumbo v2, "size"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_aa
const-string/jumbo v2, "size"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v2
:goto_67
iput-wide v2, p0, Lcom/lenovo/channel/base/ShareCollection;->f:J
const-string/jumbo v2, "item_count"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_ad
const-string/jumbo v2, "item_count"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v2
:goto_79
iput v2, p0, Lcom/lenovo/channel/base/ShareCollection;->g:I
const-string/jumbo v2, "has_thumbnail"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_8b
const-string/jumbo v1, "has_thumbnail"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z
move-result v1
:cond_8b
iput-boolean v1, p0, Lcom/lenovo/channel/base/ShareCollection;->h:Z
new-instance v1, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
const-string/jumbo v2, "tree"
invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v2
invoke-direct {v1, v2}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;-><init>(Lorg/json/JSONObject;)V
iput-object v1, p0, Lcom/lenovo/channel/base/ShareCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
:goto_9b
return-void
:cond_9c
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
:try_end_a3
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_a3} :catch_af
move-result-object v3
goto/16 :goto_1b
:cond_a6
move-object v3, v2
goto :goto_31
:cond_a8
move-object v3, v2
goto :goto_43
:cond_aa
const-wide/16 v2, 0x0
goto :goto_67
:cond_ad
move v2, v1
goto :goto_79
:catch_af
move-exception v0
const-string/jumbo v1, "Collection"
invoke-static {v1, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_9b
.end method
.method public getCollectionObject()Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
return-object v0
.end method
.method public getContentContainer(Z)Lcom/lenovo/content/base/ContentContainer;
.registers 8
const/4 v3, 0x0
if-eqz p1, :cond_10
:try_start_3
sget-object v2, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
:goto_5
if-eqz p1, :cond_13
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection;->e:Ljava/lang/String;
:goto_9
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_16
:goto_f
return-object v3
:cond_10
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
goto :goto_5
:cond_13
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
goto :goto_9
:cond_16
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/bi;->a()Lcom/lenovo/anyshare/sdk/internal/bi;
move-result-object v4
invoke-virtual {v4}, Lcom/lenovo/anyshare/sdk/internal/bi;->d()Lcom/lenovo/content/base/ContentSource;
move-result-object v4
invoke-virtual {v4, v2, v1}, Lcom/lenovo/content/base/ContentSource;->getContainer(Lcom/lenovo/content/base/ContentType;Ljava/lang/String;)Lcom/lenovo/content/base/ContentContainer;
:try_end_21
.catch Lcom/lenovo/anyshare/sdk/internal/bm; {:try_start_3 .. :try_end_21} :catch_23
move-result-object v3
goto :goto_f
:catch_23
move-exception v0
const-string/jumbo v4, "Collection"
const-string/jumbo v5, "can not get container,"
invoke-static {v4, v5, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_f
.end method
.method public getId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
return-object v0
.end method
.method public getItemCount()I
.registers 2
iget v0, p0, Lcom/lenovo/channel/base/ShareCollection;->g:I
return v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->d:Ljava/lang/String;
return-object v0
.end method
.method public getPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->e:Ljava/lang/String;
return-object v0
.end method
.method public getSize()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/channel/base/ShareCollection;->f:J
return-wide v0
.end method
.method public getType()Lcom/lenovo/content/base/ContentType;
.registers 2
iget-object v0, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
return-object v0
.end method
.method public final getVersionedId()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "|"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/lenovo/channel/base/ShareCollection;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public setIsSendHidden(Z)V
.registers 2
return-void
.end method
.method public setItemCount(I)V
.registers 2
iput p1, p0, Lcom/lenovo/channel/base/ShareCollection;->g:I
return-void
.end method
.method public setPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/channel/base/ShareCollection;->e:Ljava/lang/String;
return-void
.end method
.method public setSize(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/channel/base/ShareCollection;->f:J
return-void
.end method
.method public toJSON()Lorg/json/JSONObject;
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
:try_start_5
const-string/jumbo v1, "type"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->c:Lcom/lenovo/content/base/ContentType;
invoke-virtual {v2}, Lcom/lenovo/content/base/ContentType;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "id"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "version"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "name"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->d:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "path"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "size"
iget-wide v2, p0, Lcom/lenovo/channel/base/ShareCollection;->f:J
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string/jumbo v1, "item_count"
iget v2, p0, Lcom/lenovo/channel/base/ShareCollection;->g:I
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string/jumbo v1, "has_thumbnail"
iget-boolean v2, p0, Lcom/lenovo/channel/base/ShareCollection;->h:Z
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string/jumbo v1, "tree"
iget-object v2, p0, Lcom/lenovo/channel/base/ShareCollection;->j:Lcom/lenovo/channel/base/ShareCollection$CollectionObject;
invoke-virtual {v2}, Lcom/lenovo/channel/base/ShareCollection$CollectionObject;->a()Lorg/json/JSONObject;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_55
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_55} :catch_56
:goto_55
return-object v0
:catch_56
move-exception v1
goto :goto_55
.end method
.method public abstract traverseContainer()V
.end method