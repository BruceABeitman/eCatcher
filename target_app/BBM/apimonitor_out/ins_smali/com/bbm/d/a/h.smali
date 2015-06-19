.class public final Lcom/bbm/d/a/h;
.super Ljava/lang/Object;
.source "ProtocolSchema.java"
.field private final a:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/h;->a:Ljava/util/Map;
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/d/a/c;
.registers 5
iget-object v0, p0, Lcom/bbm/d/a/h;->a:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/c;
if-nez v0, :cond_1f
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "No descriptor for type "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1f
return-object v0
.end method
.method public final a(Lcom/bbm/f/ab;)Lcom/bbm/d/a/d;
.registers 6
iget-object v2, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v0, "type"
invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/a/h;->a:Ljava/util/Map;
invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/c;
if-eqz v0, :cond_2f
iget-boolean v0, v0, Lcom/bbm/d/a/c;->b:Z
:goto_15
const-string v1, "id"
invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v0, :cond_29
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
new-instance v0, Lcom/bbm/d/a/d;
invoke-direct {v0, v3, v1}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:goto_28
return-object v0
:cond_29
new-instance v0, Lcom/bbm/d/a/d;
invoke-direct {v0, v3}, Lcom/bbm/d/a/d;-><init>(Ljava/lang/String;)V
goto :goto_28
:cond_2f
move v0, v1
goto :goto_15
.end method
.method public final a(Lcom/bbm/d/a/c;)V
.registers 4
iget-object v0, p0, Lcom/bbm/d/a/h;->a:Ljava/util/Map;
iget-object v1, p1, Lcom/bbm/d/a/c;->a:Ljava/lang/String;
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method