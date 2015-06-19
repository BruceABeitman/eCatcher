.class public Lcom/lenovo/content/item/VideoItem;
.super Lcom/lenovo/content/base/ContentItem;
.source "VideoItem.java"
.field protected a:J
.method public constructor <init>(Lcom/lenovo/content/base/ContentProperties;)V
.registers 3
sget-object v0, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lcom/lenovo/content/base/ContentProperties;)V
return-void
.end method
.method public constructor <init>(Lorg/json/JSONObject;)V
.registers 3
sget-object v0, Lcom/lenovo/content/base/ContentType;->VIDEO:Lcom/lenovo/content/base/ContentType;
invoke-direct {p0, v0, p1}, Lcom/lenovo/content/base/ContentItem;-><init>(Lcom/lenovo/content/base/ContentType;Lorg/json/JSONObject;)V
return-void
.end method
.method protected a(Lcom/lenovo/content/base/ContentProperties;)V
.registers 5
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lcom/lenovo/content/base/ContentProperties;)V
const-string/jumbo v0, "duration"
const-wide/16 v1, 0x0
invoke-virtual {p1, v0, v1, v2}, Lcom/lenovo/content/base/ContentProperties;->getLong(Ljava/lang/String;J)J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/content/item/VideoItem;->a:J
return-void
.end method
.method protected a(Lorg/json/JSONObject;)V
.registers 5
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->a(Lorg/json/JSONObject;)V
const-string/jumbo v0, "duration"
iget-wide v1, p0, Lcom/lenovo/content/item/VideoItem;->a:J
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
return-void
.end method
.method protected b(Lorg/json/JSONObject;)V
.registers 4
invoke-super {p0, p1}, Lcom/lenovo/content/base/ContentItem;->b(Lorg/json/JSONObject;)V
const-string/jumbo v0, "duration"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
iput-wide v0, p0, Lcom/lenovo/content/item/VideoItem;->a:J
return-void
.end method
.method public getDuration()J
.registers 3
iget-wide v0, p0, Lcom/lenovo/content/item/VideoItem;->a:J
return-wide v0
.end method
.method public getMediaId()I
.registers 2
invoke-super {p0}, Lcom/lenovo/content/base/ContentItem;->getId()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
return v0
.end method