.class public Lcom/mologiq/analytics/o;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/mologiq/analytics/af;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/o;->a:Ljava/lang/String;
return-object v0
.end method
.method public a(Landroid/content/Context;)Ljava/lang/String;
.registers 10
invoke-static {p1}, Lcom/mologiq/analytics/ae;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
move-result-object v1
invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->u()I
move-result v0
if-nez v0, :cond_d
const-string v0, ""
:goto_c
return-object v0
:cond_d
new-instance v2, Lorg/json/JSONObject;
invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
const-string v0, "timestamp"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "product"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->e()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "p"
iget-object v3, p0, Lcom/mologiq/analytics/o;->c:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "v"
iget-object v3, p0, Lcom/mologiq/analytics/o;->a:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "d"
iget-object v3, p0, Lcom/mologiq/analytics/o;->b:Ljava/lang/String;
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "androidadvertiserid"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->n()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "androidadvertiseridoptout"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->o()Z
move-result v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-string v0, "androidid"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->p()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "os"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->f()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "model"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->g()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "location"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "locationAltitude"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->w()D
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string v0, "locationTimestamp"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->x()J
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
const-string v0, "locationAccuracy"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->y()D
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string v0, "locationSpeed"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->z()D
move-result-wide v3
invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
const-string v0, "device"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->h()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
if-eqz v0, :cond_10f
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->b()Lcom/mologiq/analytics/al;
move-result-object v0
if-eqz v0, :cond_e5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
const-string v3, "ssid"
iget-object v4, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v4}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v4
invoke-virtual {v4}, Lcom/mologiq/analytics/ah;->b()Lcom/mologiq/analytics/al;
move-result-object v4
invoke-virtual {v4}, Lcom/mologiq/analytics/al;->a()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "wificurrent"
invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_e5
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->a()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_10f
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v0}, Lcom/mologiq/analytics/af;->v()Lcom/mologiq/analytics/ah;
move-result-object v0
invoke-virtual {v0}, Lcom/mologiq/analytics/ah;->a()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_104
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_206
const-string v0, "wifilist"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_10f
const-string v0, "api"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->i()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "brand"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->j()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "language"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->k()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "countryCode"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->t()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "timezone"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->r()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v0, "carrier"
iget-object v3, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v3}, Lcom/mologiq/analytics/af;->C()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->j()Z
move-result v0
if-eqz v0, :cond_200
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
invoke-virtual {v0, p1}, Lcom/mologiq/analytics/af;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ag;
move-result-object v1
if-eqz v1, :cond_200
const-string v0, "policy"
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->a()I
move-result v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->b()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_186
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_186
new-instance v0, Lorg/json/JSONArray;
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->b()Ljava/util/List;
move-result-object v3
invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
const-string v3, "audience"
invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_186
const-string v0, "appcount"
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->c()I
move-result v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
const-string v0, "meanversion"
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->d()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->e()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_1b6
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->e()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1b6
const-string v0, "campaigns"
new-instance v3, Lorg/json/JSONArray;
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->e()Ljava/util/List;
move-result-object v4
invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1b6
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->g()Ljava/util/Map;
move-result-object v0
if-eqz v0, :cond_1e2
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->g()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-lez v0, :cond_1e2
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->g()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_1d7
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-nez v0, :cond_21f
const-string v0, "classifications"
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_1e2
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->f()Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_200
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->f()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_200
const-string v0, "appids"
new-instance v3, Lorg/json/JSONArray;
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->f()Ljava/util/List;
move-result-object v1
invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V
invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_200
invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_c
:cond_206
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mologiq/analytics/al;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "ssid"
invoke-virtual {v0}, Lcom/mologiq/analytics/al;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto/16 :goto_104
:cond_21f
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
new-instance v5, Lorg/json/JSONObject;
invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
const-string v6, "classificationid"
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v6, "count"
invoke-virtual {v1}, Lcom/mologiq/analytics/ag;->g()Ljava/util/Map;
move-result-object v7
invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
goto :goto_1d7
.end method
.method public a(Lcom/mologiq/analytics/af;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/o;->a:Ljava/lang/String;
return-void
.end method
.method public b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/o;->b:Ljava/lang/String;
return-object v0
.end method
.method public b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/o;->b:Ljava/lang/String;
return-void
.end method
.method public c()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/o;->c:Ljava/lang/String;
return-object v0
.end method
.method public c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/mologiq/analytics/o;->c:Ljava/lang/String;
return-void
.end method
.method public d()Lcom/mologiq/analytics/af;
.registers 2
iget-object v0, p0, Lcom/mologiq/analytics/o;->d:Lcom/mologiq/analytics/af;
return-object v0
.end method