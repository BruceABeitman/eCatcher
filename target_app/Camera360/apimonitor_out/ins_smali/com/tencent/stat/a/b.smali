.class public Lcom/tencent/stat/a/b;
.super Lcom/tencent/stat/a/e;
.field protected a:Lcom/tencent/stat/a/c;
.field private l:J
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
.registers 6
invoke-direct {p0, p1, p2}, Lcom/tencent/stat/a/e;-><init>(Landroid/content/Context;I)V
new-instance v0, Lcom/tencent/stat/a/c;
invoke-direct {v0}, Lcom/tencent/stat/a/c;-><init>()V
iput-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/tencent/stat/a/b;->l:J
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iput-object p3, v0, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
return-void
.end method
.method public a()Lcom/tencent/stat/a/f;
.registers 2
sget-object v0, Lcom/tencent/stat/a/f;->d:Lcom/tencent/stat/a/f;
return-object v0
.end method
.method public a(J)V
.registers 3
iput-wide p1, p0, Lcom/tencent/stat/a/b;->l:J
return-void
.end method
.method public a(Ljava/util/Properties;)V
.registers 4
if-eqz p1, :cond_c
iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Properties;
iput-object v0, v1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
:cond_c
return-void
.end method
.method public a([Ljava/lang/String;)V
.registers 4
if-eqz p1, :cond_c
iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
iput-object v0, v1, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
:cond_c
return-void
.end method
.method public a(Lorg/json/JSONObject;)Z
.registers 7
const-string/jumbo v0, "ei"
iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v1, v1, Lcom/tencent/stat/a/c;->a:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-wide v0, p0, Lcom/tencent/stat/a/b;->l:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_1a
const-string/jumbo v0, "du"
iget-wide v1, p0, Lcom/tencent/stat/a/b;->l:J
invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
:cond_1a
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v0, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-nez v0, :cond_31
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v0, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
if-nez v0, :cond_31
const-string/jumbo v0, "kv"
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_31
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v0, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
if-eqz v0, :cond_52
new-instance v1, Lorg/json/JSONArray;
invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v2, v0, Lcom/tencent/stat/a/c;->b:[Ljava/lang/String;
array-length v3, v2
const/4 v0, 0x0
:goto_42
if-ge v0, v3, :cond_4c
aget-object v4, v2, v0
invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
add-int/lit8 v0, v0, 0x1
goto :goto_42
:cond_4c
const-string/jumbo v0, "ar"
invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_52
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v0, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
if-eqz v0, :cond_99
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
:try_start_5d
iget-object v0, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v0, v0, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_69
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_9b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_88
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_88} :catch_89
goto :goto_69
:catch_89
move-exception v0
new-instance v0, Lorg/json/JSONObject;
iget-object v1, p0, Lcom/tencent/stat/a/b;->a:Lcom/tencent/stat/a/c;
iget-object v1, v1, Lcom/tencent/stat/a/c;->c:Ljava/util/Properties;
invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
:goto_93
const-string/jumbo v1, "kv"
invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_99
const/4 v0, 0x1
return v0
:cond_9b
move-object v0, v1
goto :goto_93
.end method