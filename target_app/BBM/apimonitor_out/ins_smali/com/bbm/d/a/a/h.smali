.class public final Lcom/bbm/d/a/a/h;
.super Ljava/lang/Object;
.source "LiveListManager.java"
.implements Lcom/bbm/f/ac;
.field public final a:Ljava/util/Map;
.field public final b:Ljava/util/Map;
.field public final c:Lcom/bbm/d/a/h;
.field public final d:Lcom/bbm/f/a;
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/b/c/q;
invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V
invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;
invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
iput-object p1, p0, Lcom/bbm/d/a/a/h;->d:Lcom/bbm/f/a;
iput-object p2, p0, Lcom/bbm/d/a/a/h;->c:Lcom/bbm/d/a/h;
return-void
.end method
.method private static a(Lcom/bbm/f/ab;Lcom/bbm/d/a/a/e;)V
.registers 5
if-eqz p0, :cond_4
if-nez p1, :cond_c
:cond_4
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "message and list need to be non-null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Lcom/bbm/f/ab;->b:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v2, "listAdd"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1c
invoke-virtual {p1, v1}, Lcom/bbm/d/a/a/e;->c(Lorg/json/JSONObject;)V
:goto_1b
:cond_1b
return-void
:cond_1c
const-string v2, "listAll"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_31
sget-object v0, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
iput-object v0, p1, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
iget-object v0, p1, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->clear()V
const/4 v0, 0x0
iput-boolean v0, p1, Lcom/bbm/d/a/a/e;->e:Z
goto :goto_1b
:cond_31
const-string v2, "listChange"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3d
invoke-virtual {p1, v1}, Lcom/bbm/d/a/a/e;->b(Lorg/json/JSONObject;)V
goto :goto_1b
:cond_3d
const-string v2, "listChunk"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_49
invoke-virtual {p1, v1}, Lcom/bbm/d/a/a/e;->a(Lorg/json/JSONObject;)V
goto :goto_1b
:cond_49
const-string v2, "listElements"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6e
const-string v0, "cookie"
invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p1, Lcom/bbm/d/a/a/e;->d:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_69
sget-object v0, Lcom/bbm/d/a/a/f;->b:Lcom/bbm/d/a/a/f;
iput-object v0, p1, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
:goto_63
iget-object v0, p1, Lcom/bbm/d/a/a/e;->b:Lcom/bbm/d/a/a/g;
invoke-virtual {v0}, Lcom/bbm/d/a/a/g;->clear()V
goto :goto_1b
:cond_69
sget-object v0, Lcom/bbm/d/a/a/f;->c:Lcom/bbm/d/a/a/f;
iput-object v0, p1, Lcom/bbm/d/a/a/e;->a:Lcom/bbm/d/a/a/f;
goto :goto_63
:cond_6e
const-string v2, "listRemove"
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1b
invoke-virtual {p1, v1}, Lcom/bbm/d/a/a/e;->d(Lorg/json/JSONObject;)V
goto :goto_1b
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_22
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/d;
iget-object v2, p0, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/e;
invoke-virtual {v0}, Lcom/bbm/d/a/a/e;->a()V
goto :goto_a
:cond_22
iget-object v0, p0, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_2c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_62
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_46
:cond_46
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/w;
instance-of v3, v0, Lcom/bbm/d/a/a/e;
if-eqz v3, :cond_46
check-cast v0, Lcom/bbm/d/a/a/e;
invoke-virtual {v0}, Lcom/bbm/d/a/a/e;->a()V
goto :goto_46
:cond_62
return-void
.end method
.method public final a(Lcom/bbm/d/a/e;Lcom/bbm/j/w;)V
.registers 6
iget-object v0, p0, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;
iget-object v1, p1, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-eqz v0, :cond_12
iget-object v1, p1, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_11
return-void
:cond_12
new-instance v0, Lcom/google/b/c/q;
invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V
invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;
move-result-object v0
iget-object v1, p1, Lcom/bbm/d/a/e;->b:Lcom/bbm/d/a/a/d;
invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;
iget-object v2, p1, Lcom/bbm/d/a/e;->a:Lcom/bbm/d/a/d;
invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_11
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 5
if-nez p1, :cond_3
:cond_2
return-void
:cond_3
iget-object v0, p0, Lcom/bbm/d/a/a/h;->c:Lcom/bbm/d/a/h;
invoke-virtual {v0, p1}, Lcom/bbm/d/a/h;->a(Lcom/bbm/f/ab;)Lcom/bbm/d/a/d;
move-result-object v1
iget-object v0, p0, Lcom/bbm/d/a/a/h;->a:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/a/e;
if-eqz v0, :cond_16
invoke-static {p1, v0}, Lcom/bbm/d/a/a/h;->a(Lcom/bbm/f/ab;Lcom/bbm/d/a/a/e;)V
:cond_16
iget-object v0, p0, Lcom/bbm/d/a/a/h;->b:Ljava/util/Map;
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
if-eqz v0, :cond_2
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_28
:goto_28
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/w;
instance-of v2, v0, Lcom/bbm/d/a/a/e;
if-eqz v2, :cond_28
check-cast v0, Lcom/bbm/d/a/a/e;
if-eqz v0, :cond_28
invoke-static {p1, v0}, Lcom/bbm/d/a/a/h;->a(Lcom/bbm/f/ab;Lcom/bbm/d/a/a/e;)V
goto :goto_28
.end method