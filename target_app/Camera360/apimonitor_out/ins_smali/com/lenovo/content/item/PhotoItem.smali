.class public Lcom/lenovo/content/item/PhotoItem;
.super Lcom/lenovo/content/base/ContentItem;
.source "PhotoItem.java"
.field protected a:I
.field protected b:Ljava/lang/String;
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
sget-object v0, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 3
sget-object v0, Lcom/lenovo/content/base/ContentType;->PHOTO:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V
return-void
.end method
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lcom/lenovo/content/base/ContentProperties;)V
const-string/jumbo v0, "album_id"
const/4 v1, -0x1
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/lenovo/content/item/PhotoItem;->a:I
const-string/jumbo v0, "album_name"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lcom/lenovo/content/base/ContentProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/lenovo/content/item/PhotoItem;->b:Ljava/lang/String;
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V
iget v0, p0, Lcom/lenovo/content/item/PhotoItem;->a:I
const/4 v1, -0x1
if-eq v0, v1, :cond_10
const-string/jumbo v0, "albumid"
iget v1, p0, Lcom/lenovo/content/item/PhotoItem;->a:I
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_10
iget-object v0, p0, Lcom/lenovo/content/item/PhotoItem;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/bg;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_20
const-string/jumbo v0, "albumname"
iget-object v1, p0, Lcom/lenovo/content/item/PhotoItem;->b:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_20
return-void
.end method
.method protected b(Lorg/json/JSONObject;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->b(Lorg/json/JSONObject;)V
invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getName()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_2e
invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getFilePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_27
const-string/jumbo v1, "filename"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_27
const-string/jumbo v1, "filename"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_27
invoke-static {v0}, Lcom/lenovo/anyshare/sdk/internal/aq;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-super {p0, v1}, Lcom/lenovo/content/base/ContentItem;->setName(Ljava/lang/String;)V
:cond_2e
const-string/jumbo v1, "albumid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_53
const-string/jumbo v1, "albumid"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v1
:goto_3e
iput v1, p0, Lcom/lenovo/content/item/PhotoItem;->a:I
const-string/jumbo v1, "albumname"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_55
const-string/jumbo v1, "albumname"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:goto_50
iput-object v1, p0, Lcom/lenovo/content/item/PhotoItem;->b:Ljava/lang/String;
return-void
:cond_53
const/4 v1, -0x1
goto :goto_3e
:cond_55
const-string/jumbo v1, ""
goto :goto_50
.end method
.method public getAlbumId()I
.registers 2
iget v0, p0, Lcom/lenovo/content/item/PhotoItem;->a:I
return v0
.end method
.method public getAlbumName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/lenovo/content/item/PhotoItem;->b:Ljava/lang/String;
return-object v0
.end method
.method public getMediaId()I
.registers 2
invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method