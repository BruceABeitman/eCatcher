.class public Lcom/tencent/stat/a/a;
.super Lcom/tencent/stat/a/e;
.field  a:Ljava/util/Map;
.method public constructor <init>(Landroid/content/Context;ILjava/util/Map;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/tencent/stat/a/a;->a:Ljava/util/Map;
iput-object p3, p0, Lcom/tencent/stat/a/a;->a:Ljava/util/Map;
return-void
.end method
.method public a()Lcom/tencent/stat/a/f;
.registers 2
sget-object v0, Lcom/tencent/stat/a/f;->e:Lcom/tencent/stat/a/f;
return-object v0
.end method
.method public a(Lorg/json/JSONObject;)Z
.registers 5
const-string/jumbo v0, "qq"
invoke-static {}, Lcom/tencent/stat/StatConfig;->getQQ()Ljava/lang/String;
move-result-object v1
invoke-static {p1, v0, v1}, Lcom/tencent/stat/common/k;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/tencent/stat/a/a;->a:Ljava/util/Map;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/tencent/stat/a/a;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_3a
iget-object v0, p0, Lcom/tencent/stat/a/a;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_20
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_20
:cond_3a
const/4 v0, 0x1
return v0
.end method