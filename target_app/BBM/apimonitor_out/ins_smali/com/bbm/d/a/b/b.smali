.class final Lcom/bbm/d/a/b/b;
.super Ljava/lang/Object;
.source "LiveMap.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/d/a/b/a;
.method constructor <init>(Lcom/bbm/d/a/b/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/a/b/b;->a:Lcom/bbm/d/a/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v4, p0, Lcom/bbm/d/a/b/b;->a:Lcom/bbm/d/a/b/a;
iput-boolean v2, v4, Lcom/bbm/d/a/b/a;->m:Z
iget v0, v4, Lcom/bbm/d/a/b/a;->k:I
iget v3, v4, Lcom/bbm/d/a/b/a;->n:I
if-le v0, v3, :cond_10
iget v0, v4, Lcom/bbm/d/a/b/a;->k:I
iput v0, v4, Lcom/bbm/d/a/b/a;->n:I
:cond_10
iput v2, v4, Lcom/bbm/d/a/b/a;->k:I
iget-boolean v0, v4, Lcom/bbm/d/a/b/a;->i:Z
if-nez v0, :cond_74
iget-boolean v0, v4, Lcom/bbm/d/a/b/a;->i:Z
if-nez v0, :cond_68
move v0, v1
:goto_1b
invoke-static {v0}, Lcom/google/b/a/o;->b(Z)V
iget-object v0, v4, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
invoke-static {v0}, Lcom/google/b/a/o;->b(Z)V
iput-boolean v1, v4, Lcom/bbm/d/a/b/a;->i:Z
const/16 v0, 0x14
iget v1, v4, Lcom/bbm/d/a/b/a;->n:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v5
iput v2, v4, Lcom/bbm/d/a/b/a;->n:I
move v3, v2
:goto_34
if-ge v3, v5, :cond_6a
iget-object v0, v4, Lcom/bbm/d/a/b/a;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
move-result v0
if-nez v0, :cond_6a
iget-object v0, v4, Lcom/bbm/d/a/b/a;->b:Ljava/util/LinkedList;
invoke-virtual {v0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v1, v4, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/a/b/c;
if-eqz v1, :cond_e5
iget-object v1, v1, Lcom/bbm/d/a/b/c;->a:Lcom/bbm/d/a/b/d;
sget-object v6, Lcom/bbm/d/a/b/d;->a:Lcom/bbm/d/a/b/d;
if-ne v1, v6, :cond_e5
iget-object v1, v4, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_e5
add-int/lit8 v1, v3, 0x1
iget-object v3, v4, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;
invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
move v0, v1
:goto_66
move v3, v0
goto :goto_34
:cond_68
move v0, v2
goto :goto_1b
:cond_6a
iget-object v0, v4, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z
move-result v0
if-eqz v0, :cond_75
iput-boolean v2, v4, Lcom/bbm/d/a/b/a;->i:Z
:cond_74
:goto_74
return-void
:cond_75
new-instance v2, Lcom/bbm/f/ab;
const-string v0, "requestListElements"
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
invoke-direct {v2, v0, v1}, Lcom/bbm/f/ab;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
new-instance v3, Lorg/json/JSONArray;
invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V
iget-object v0, v4, Lcom/bbm/d/a/b/a;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_8c
:cond_8c
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_b2
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v1, v0
check-cast v1, Ljava/lang/String;
iget-object v0, v4, Lcom/bbm/d/a/b/a;->a:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/b/c;
if-eqz v0, :cond_8c
iget-object v6, v4, Lcom/bbm/d/a/b/a;->d:Lcom/bbm/d/a/c;
invoke-virtual {v6, v1}, Lcom/bbm/d/a/c;->a(Ljava/lang/String;)Lorg/json/JSONObject;
move-result-object v1
invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
sget-object v1, Lcom/bbm/d/a/b/d;->b:Lcom/bbm/d/a/b/d;
invoke-virtual {v0, v1}, Lcom/bbm/d/a/b/c;->a(Lcom/bbm/d/a/b/d;)V
goto :goto_8c
:try_start_b2
:cond_b2
iget-object v0, v2, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "elements"
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, v2, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "cookie"
iget-object v3, v4, Lcom/bbm/d/a/b/a;->h:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, v2, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "type"
iget-object v3, v4, Lcom/bbm/d/a/b/a;->e:Lcom/bbm/d/a/d;
iget-object v3, v3, Lcom/bbm/d/a/d;->a:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
iget-object v0, v2, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v1, "id"
iget-object v3, v4, Lcom/bbm/d/a/b/a;->e:Lcom/bbm/d/a/d;
iget-object v3, v3, Lcom/bbm/d/a/d;->b:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_d8
.catch Lorg/json/JSONException; {:try_start_b2 .. :try_end_d8} :catch_de
iget-object v0, v4, Lcom/bbm/d/a/b/a;->f:Lcom/bbm/f/a;
invoke-interface {v0, v2}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ab;)V
goto :goto_74
:catch_de
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_e5
move v0, v3
goto :goto_66
.end method