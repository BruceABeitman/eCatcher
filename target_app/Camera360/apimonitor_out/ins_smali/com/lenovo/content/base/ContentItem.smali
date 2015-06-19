.class public abstract Lcom/lenovo/content/base/ContentItem;
.super Lcom/lenovo/content/base/ContentObject;
.source "ContentItem.java"
.field private a:J
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Ljava/lang/String;
.method public constructor <init>(Lcom/lenovo/content/base/ContentItem;)V
.registers 4
invoke-direct {p0, p1}, Lcom/lenovo/content/base/ContentObject;-><init>(Lcom/lenovo/content/base/ContentObject;)V
iget-wide v0, p1, Lcom/lenovo/content/base/ContentItem;->a:J
iput-wide v0, p0, Lcom/lenovo/content/base/ContentItem;->a:J
iget-object v0, p1, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
iget-boolean v0, p1, Lcom/lenovo/content/base/ContentItem;->c:Z
iput-boolean v0, p0, Lcom/lenovo/content/base/ContentItem;->c:Z
iget-object v0, p1, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentObject;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-void
.end method
.method public constructor <init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/lenovo/content/base/ContentObject;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V
return-void
.end method
.method public a(Lcom/lenovo/content/base/ContentProperties;)V
.registers 5
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentObject;->a(Lcom/lenovo/content/base/ContentProperties;)V
const-string/jumbo v0, "file_size"
const-wide/16 v1, -0x1
invoke-virtual {p1, v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->getLong(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/content/base/ContentItem;->a:J
const-string/jumbo v0, "file_path"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
const-string/jumbo v0, "is_exist"
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/lenovo/content/base/ContentItem;->c:Z
const-string/jumbo v0, "thumbnail_path"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 5
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentObject;->a(Lorg/json/JSONObject;)V
const-string/jumbo v0, "filepath"
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v0, "filesize"
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getSize()J
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v0
sget-object v1, Lcom/lenovo/content/base/ContentType;->FILE:Lcom/lenovo/content/base/ContentType;
if-ne v0, v1, :cond_27
const-string/jumbo v0, "fileid"
iget-object v1, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_27
iget-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_37
const-string/jumbo v0, "thumbnailpath"
iget-object v1, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_37
return-void
.end method
.method public b(Lorg/json/JSONObject;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentObject;->b(Lorg/json/JSONObject;)V
const-string/jumbo v0, "filesize"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_15
const-string/jumbo v0, "filesize"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/content/base/ContentItem;->a:J
:cond_15
const-string/jumbo v0, "filepath"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_27
const-string/jumbo v0, "filepath"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
:cond_27
iget-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_41
const-string/jumbo v0, "fileid"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_41
const-string/jumbo v0, "fileid"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
:cond_41
iget-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_5b
const-string/jumbo v0, "rawfilename"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_5b
const-string/jumbo v0, "rawfilename"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
:cond_5b
const-string/jumbo v0, "thumbnailpath"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6e
const-string/jumbo v0, "thumbnailpath"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
:goto_6d
return-void
:cond_6e
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
goto :goto_6d
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v1, 0x0
instance-of v2, p1, Lcom/lenovo/content/base/ContentItem;
if-eqz v2, :cond_21
move-object v0, p1
check-cast v0, Lcom/lenovo/content/base/ContentItem;
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_21
invoke-virtual {v0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v2
invoke-virtual {p0}, Lcom/lenovo/content/base/ContentItem;->getContentType()Lcom/lenovo/content/base/ContentType;
move-result-object v3
if-ne v2, v3, :cond_21
const/4 v1, 0x1
:cond_21
return v1
.end method
.method public final getFilePath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
return-object v0
.end method
.method public getSize()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/content/base/ContentItem;->a:J
return-wide v0
.end method
.method public final getThumbnailPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
return-object v0
.end method
.method public final isExist()Z
.registers 3
new-instance v0, Ljava/io/File;
iget-object v1, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
iget-boolean v1, p0, Lcom/lenovo/content/base/ContentItem;->c:Z
if-eqz v1, :cond_13
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_13
const/4 v1, 0x1
:goto_12
return v1
:cond_13
const/4 v1, 0x0
goto :goto_12
.end method
.method public final setFilePath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/content/base/ContentItem;->b:Ljava/lang/String;
return-void
.end method
.method public final setIsExist(Z)V
.registers 2
iput-boolean p1, p0, Lcom/lenovo/content/base/ContentItem;->c:Z
return-void
.end method
.method public final setSize(J)V
.registers 3
iput-wide p1, p0, Lcom/lenovo/content/base/ContentItem;->a:J
return-void
.end method
.method public final setThumbnailPath(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/lenovo/content/base/ContentItem;->d:Ljava/lang/String;
return-void
.end method
.method public toJSON()Lorg/json/JSONObject;
.registers 6
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5
invoke-virtual {p0, v1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V
:goto_8
:try_end_8
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_8} :catch_9
return-object v1
:catch_9
move-exception v0
const-string/jumbo v2, "ContentItem"
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
goto :goto_8
.end method