.class public Lcom/lenovo/anyshare/sdk/internal/g$d;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "ShareMessages.java"
.field private a:Ljava/util/List;
.field private b:Ljava/lang/String;
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "content_items"
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->a:Ljava/util/List;
return-void
.end method
.method private a(Ljava/lang/String;)V
.registers 8
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
const/4 v0, 0x0
:goto_6
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v4
if-ge v0, v4, :cond_2d
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
invoke-static {v2}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
move-result-object v3
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;
move-result-object v4
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v5
iget-object v5, v5, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {v3, v4, v5}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->setTo(Ljava/lang/String;Ljava/lang/String;)V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->a:Ljava/util/List;
invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_6
:cond_2d
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->b:Ljava/lang/String;
return-void
.end method
.method private b()Ljava/lang/String;
.registers 6
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->b:Ljava/lang/String;
if-nez v4, :cond_2b
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->a:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_f
:cond_f
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_25
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord$ItemShareRecord;->toJSON()Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_f
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_f
:cond_25
invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->b:Ljava/lang/String;
:cond_2b
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->b:Ljava/lang/String;
return-object v4
.end method
.method public a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->a:Ljava/util/List;
return-object v0
.end method
.method public a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$d;->b:Ljava/lang/String;
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 3
invoke-super {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/n;->a(Lorg/json/JSONObject;)V
const-string/jumbo v0, "message"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/g$d;->a(Ljava/lang/String;)V
return-void
.end method
.method public d()Lorg/json/JSONObject;
.registers 4
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "packet_type"
const-string/jumbo v2, "message"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "message"
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/g$d;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string/jumbo v1, "subject"
const-string/jumbo v2, "notify"
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-object v0
.end method