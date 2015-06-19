.class public Lcom/umeng/fb/model/UserInfo;
.super Ljava/lang/Object;
.source "UserInfo.java"
.field private static final e:Ljava/lang/String;
.field  a:I
.field  b:Ljava/lang/String;
.field  c:Ljava/util/Map;
.field  d:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/umeng/fb/model/UserInfo;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/umeng/fb/model/UserInfo;->e:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/umeng/fb/model/UserInfo;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
return-void
.end method
.method constructor <init>(Lorg/json/JSONObject;)V
.registers 7
const/4 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v1, p0, Lcom/umeng/fb/model/UserInfo;->a:I
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
const-string/jumbo v0, "age_group"
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/umeng/fb/model/UserInfo;->a:I
const-string/jumbo v0, "gender"
const-string/jumbo v1, ""
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
const-string/jumbo v0, "contact"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
if-eqz v1, :cond_41
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_3b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_67
:cond_41
const-string/jumbo v0, "remark"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
sget-object v0, Lcom/umeng/fb/model/UserInfo;->e:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v1, :cond_66
invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v2
:goto_60
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_77
:cond_66
return-void
:cond_67
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_3b
:cond_77
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_60
.end method
.method public getAgeGroup()I
.registers 2
iget v0, p0, Lcom/umeng/fb/model/UserInfo;->a:I
return v0
.end method
.method public getContact()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
return-object v0
.end method
.method public getGender()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
return-object v0
.end method
.method public getRemark()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
return-object v0
.end method
.method public setAgeGroup(I)V
.registers 2
iput p1, p0, Lcom/umeng/fb/model/UserInfo;->a:I
return-void
.end method
.method public setContact(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
return-void
.end method
.method public setGender(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
return-void
.end method
.method public setRemark(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
return-void
.end method
.method public toJson()Lorg/json/JSONObject;
.registers 6
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
:try_start_5
iget v0, p0, Lcom/umeng/fb/model/UserInfo;->a:I
const/4 v1, -0x1
if-le v0, v1, :cond_12
const-string/jumbo v0, "age_group"
iget v1, p0, Lcom/umeng/fb/model/UserInfo;->a:I
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
:cond_12
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
invoke-static {v0}, Lcom/umeng/common/util/g;->d(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_22
const-string/jumbo v0, "gender"
iget-object v1, p0, Lcom/umeng/fb/model/UserInfo;->b:Ljava/lang/String;
invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_22
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
if-eqz v0, :cond_49
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_49
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->c:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_3d
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_71
const-string/jumbo v0, "contact"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_49
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
if-eqz v0, :cond_70
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_70
new-instance v3, Lorg/json/JSONObject;
invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
iget-object v0, p0, Lcom/umeng/fb/model/UserInfo;->d:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_64
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_8a
const-string/jumbo v0, "remark"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_70
:goto_70
return-object v2
:cond_71
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_84
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_84} :catch_85
goto :goto_3d
:catch_85
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
goto :goto_70
:try_start_8a
:cond_8a
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_9d
.catch Lorg/json/JSONException; {:try_start_8a .. :try_end_9d} :catch_85
goto :goto_64
.end method