.class final Lcom/c/a/a/l;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"
.implements Lcom/c/a/a/k;
.field final synthetic a:Lcom/c/a/a/j;
.method private constructor <init>(Lcom/c/a/a/j;)V
.registers 2
iput-object p1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/c/a/a/j;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/c/a/a/l;-><init>(Lcom/c/a/a/j;)V
return-void
.end method
.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
.registers 7
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "$token"
iget-object v2, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v2}, Lcom/c/a/a/j;->f(Lcom/c/a/a/j;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "$distinct_id"
iget-object v2, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v2}, Lcom/c/a/a/j;->d(Lcom/c/a/a/j;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v1, "$time"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0, p1}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;)V
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->c(Lcom/c/a/a/j;)V
:cond_17
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
.registers 6
:try_start_0
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:try_end_8
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_8} :catch_47
:try_start_8
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->d(Lcom/c/a/a/j;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_2e
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v1
if-nez v1, :cond_22
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
new-instance v2, Lcom/c/a/a/n;
invoke-direct {v2}, Lcom/c/a/a/n;-><init>()V
invoke-static {v1, v2}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;Lcom/c/a/a/n;)Lcom/c/a/a/n;
:cond_22
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v1
iget-object v1, v1, Lcom/c/a/a/n;->c:Ljava/util/List;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:goto_2d
return-void
:cond_2e
const-string v1, "$append"
invoke-direct {p0, v1, v0}, Lcom/c/a/a/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->e(Lcom/c/a/a/j;)Lcom/c/a/a/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/c/a/a/a;->a(Lorg/json/JSONObject;)V
:try_end_3d
.catch Lorg/json/JSONException; {:try_start_8 .. :try_end_3d} :catch_3e
goto :goto_2d
:catch_3e
move-exception v0
:try_start_3f
const-string v1, "MixpanelAPI"
const-string v2, "Can\'t create append message"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_46
.catch Lorg/json/JSONException; {:try_start_3f .. :try_end_46} :catch_47
goto :goto_2d
:catch_47
move-exception v0
const-string v1, "MixpanelAPI"
const-string v2, "Exception appending a property"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2d
.end method
.method public final a(Ljava/util/Map;)V
.registers 5
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V
:try_start_5
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->d(Lcom/c/a/a/j;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_29
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v0
if-nez v0, :cond_1f
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
new-instance v1, Lcom/c/a/a/n;
invoke-direct {v1}, Lcom/c/a/a/n;-><init>()V
invoke-static {v0, v1}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;Lcom/c/a/a/n;)Lcom/c/a/a/n;
:cond_1f
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/c/a/a/n;->a(Ljava/util/Map;)V
:goto_28
return-void
:cond_29
const-string v1, "$add"
invoke-direct {p0, v1, v0}, Lcom/c/a/a/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->e(Lcom/c/a/a/j;)Lcom/c/a/a/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/c/a/a/a;->a(Lorg/json/JSONObject;)V
:try_end_38
.catch Lorg/json/JSONException; {:try_start_5 .. :try_end_38} :catch_39
goto :goto_28
:catch_39
move-exception v0
const-string v1, "MixpanelAPI"
const-string v2, "Exception incrementing properties"
invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_28
.end method
.method public final a(Lorg/json/JSONObject;)V
.registers 10
:try_start_0
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->d(Lcom/c/a/a/j;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_72
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
new-instance v1, Lcom/c/a/a/n;
invoke-direct {v1}, Lcom/c/a/a/n;-><init>()V
invoke-static {v0, v1}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;Lcom/c/a/a/n;)Lcom/c/a/a/n;
:cond_1a
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->b(Lcom/c/a/a/j;)Lcom/c/a/a/n;
move-result-object v2
invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;
move-result-object v3
:goto_24
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6c
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
iget-object v1, v2, Lcom/c/a/a/n;->b:Ljava/util/Map;
invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_42
:cond_42
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_64
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lorg/json/JSONObject;
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
invoke-virtual {v1}, Lorg/json/JSONObject;->length()I
move-result v7
if-lez v7, :cond_42
invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_5a
.catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5a} :catch_5b
goto :goto_42
:catch_5b
move-exception v0
const-string v0, "MixpanelAPI"
const-string v1, "Exception setting people properties"
invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
:goto_63
return-void
:cond_64
:try_start_64
iput-object v5, v2, Lcom/c/a/a/n;->c:Ljava/util/List;
iget-object v1, v2, Lcom/c/a/a/n;->a:Lorg/json/JSONObject;
invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
goto :goto_24
:cond_6c
iget-object v0, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v0}, Lcom/c/a/a/j;->a(Lcom/c/a/a/j;)V
goto :goto_63
:cond_72
const-string v0, "$set"
invoke-direct {p0, v0, p1}, Lcom/c/a/a/l;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
move-result-object v0
iget-object v1, p0, Lcom/c/a/a/l;->a:Lcom/c/a/a/j;
invoke-static {v1}, Lcom/c/a/a/j;->e(Lcom/c/a/a/j;)Lcom/c/a/a/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/c/a/a/a;->a(Lorg/json/JSONObject;)V
:try_end_81
.catch Lorg/json/JSONException; {:try_start_64 .. :try_end_81} :catch_5b
goto :goto_63
.end method