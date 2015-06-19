.class public Lcom/lenovo/anyshare/sdk/internal/g$e;
.super Lcom/lenovo/anyshare/sdk/internal/n;
.source "ShareMessages.java"
.field protected a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
const-string/jumbo v0, "contents_notify"
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/n;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
return-void
.end method
.method private a(Lorg/json/JSONArray;)V
.registers 7
const/4 v0, 0x0
:goto_1
invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_2b
invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v1
invoke-static {v1}, Lcom/lenovo/channel/base/ShareRecord;->create(Lorg/json/JSONObject;)Lcom/lenovo/channel/base/ShareRecord;
move-result-object v2
if-nez v2, :cond_14
:goto_11
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_14
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;
move-result-object v3
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->g()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lcom/lenovo/anyshare/sdk/internal/i;->b(Ljava/lang/String;)Lcom/lenovo/channel/base/UserInfo;
move-result-object v4
iget-object v4, v4, Lcom/lenovo/channel/base/UserInfo;->name:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Lcom/lenovo/channel/base/ShareRecord;->setTo(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_2b
return-void
.end method
.method private b()Lorg/json/JSONArray;
.registers 6
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_b
:cond_b
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-eqz v4, :cond_21
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/lenovo/channel/base/ShareRecord;
invoke-virtual {v3}, Lcom/lenovo/channel/base/ShareRecord;->toJSON()Lorg/json/JSONObject;
move-result-object v2
if-eqz v2, :cond_b
invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_b
:cond_21
return-object v1
.end method
.method public a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
return-object v0
.end method
.method public a(Lcom/lenovo/channel/base/ShareRecord;)V
.registers 3
invoke-static {p1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/g$e;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public a(Lorg/json/JSONObject;)V
.registers 3
invoke-super {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/n;->a(Lorg/json/JSONObject;)V
const-string/jumbo v0, "contents"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/g$e;->a(Lorg/json/JSONArray;)V
return-void
.end method
.method public d()Lorg/json/JSONObject;
.registers 4
invoke-super {p0}, Lcom/lenovo/anyshare/sdk/internal/n;->d()Lorg/json/JSONObject;
move-result-object v0
const-string/jumbo v1, "contents"
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/g$e;->b()Lorg/json/JSONArray;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
return-object v0
.end method