.class  Lcom/mologiq/analytics/aa;
.super Lcom/mologiq/analytics/w;
.source "SourceFile"
.field private static final c:Ljava/lang/String; = ".f4532369-bca8-4847-bd88-d1779ee05f8f"
.field private static final d:Lcom/mologiq/analytics/aa;
.field private a:Ljava/util/List;
.field private b:J
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/mologiq/analytics/aa;
const-string v1, ".f4532369-bca8-4847-bd88-d1779ee05f8f"
invoke-direct {v0, v1}, Lcom/mologiq/analytics/aa;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/mologiq/analytics/aa;->d:Lcom/mologiq/analytics/aa;
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Lcom/mologiq/analytics/w;-><init>(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/mologiq/analytics/aa;->b:J
return-void
.end method
.method static c()Lcom/mologiq/analytics/aa;
.registers 1
sget-object v0, Lcom/mologiq/analytics/aa;->d:Lcom/mologiq/analytics/aa;
return-object v0
.end method
.method protected a()Ljava/lang/String;
.registers 2
const-string v0, ""
return-object v0
.end method
.method  a(J)V
.registers 3
iput-wide p1, p0, Lcom/mologiq/analytics/aa;->b:J
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "core"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_40
const-string v1, "core"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v0
const-string v1, "timestamp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v1
invoke-virtual {p0, v1, v2}, Lcom/mologiq/analytics/aa;->a(J)V
const-string v1, "tp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_40
const-string v1, "tp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_40
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_40
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
const/4 v0, 0x0
:goto_3a
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-lt v0, v2, :cond_41
:cond_40
return-void
:cond_41
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
new-instance v3, Lcom/mologiq/analytics/ab;
invoke-direct {v3, p0}, Lcom/mologiq/analytics/ab;-><init>(Lcom/mologiq/analytics/aa;)V
const-string v4, "n"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/mologiq/analytics/ab;->a(Ljava/lang/String;)V
const-string v4, "v"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/mologiq/analytics/ab;->b(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_3a
.end method
.method protected b()Ljava/lang/String;
.registers 8
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
const-string v0, "timestamp"
iget-wide v2, p0, Lcom/mologiq/analytics/aa;->b:J
invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_2e
new-instance v2, Lorg/json/JSONArray;
invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_23
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_33
const-string v0, "tp"
invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_2e
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_33
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/ab;
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
const-string v5, "n"
invoke-virtual {v0}, Lcom/mologiq/analytics/ab;->a()Ljava/lang/String;
move-result-object v6
invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v5, "v"
invoke-virtual {v0}, Lcom/mologiq/analytics/ab;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_23
.end method
.method protected b(Ljava/lang/String;)V
.registers 7
if-eqz p1, :cond_31
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_31
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
const-string v1, "tp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_31
const-string v1, "tp"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
if-eqz v1, :cond_31
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v0
if-lez v0, :cond_31
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
const/4 v0, 0x0
:goto_2b
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v2
if-lt v0, v2, :cond_32
:cond_31
return-void
:cond_32
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
move-result-object v2
new-instance v3, Lcom/mologiq/analytics/ab;
invoke-direct {v3, p0}, Lcom/mologiq/analytics/ab;-><init>(Lcom/mologiq/analytics/aa;)V
const-string v4, "n"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Lcom/mologiq/analytics/ab;->a(Ljava/lang/String;)V
const-string v4, "v"
invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/mologiq/analytics/ab;->b(Ljava/lang/String;)V
iget-object v2, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_2b
.end method
.method public c(Landroid/content/Context;)V
.registers 7
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p1}, Lcom/mologiq/analytics/ai;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "line.separator"
invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".f4532369-bca8-4847-bd88-d1779ee05f8f"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {p0}, Lcom/mologiq/analytics/aa;->b()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3c
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_3c
const-string v3, "core"
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_3c
invoke-virtual {p0}, Lcom/mologiq/analytics/aa;->a()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_52
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v3
if-lez v3, :cond_52
const-string v3, "extra"
new-instance v4, Lorg/json/JSONObject;
invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_52
invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mologiq/analytics/ai;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public d()Ljava/util/Map;
.registers 5
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_31
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_17
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_1f
move-object v0, v1
:goto_1e
return-object v0
:cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/ab;
invoke-virtual {v0}, Lcom/mologiq/analytics/ab;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0}, Lcom/mologiq/analytics/ab;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_17
:cond_31
const/4 v0, 0x0
goto :goto_1e
.end method
.method  d(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
:try_start_1
iput-object v0, p0, Lcom/mologiq/analytics/aa;->a:Ljava/util/List;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/mologiq/analytics/aa;->b:J
:goto_7
:try_end_7
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
goto :goto_7
.end method
.method  e()J
.registers 3
iget-wide v0, p0, Lcom/mologiq/analytics/aa;->b:J
return-wide v0
.end method