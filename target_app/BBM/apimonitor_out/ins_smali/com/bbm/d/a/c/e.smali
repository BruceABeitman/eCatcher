.class public final Lcom/bbm/d/a/c/e;
.super Ljava/lang/Object;
.source "SparseListManager.java"
.implements Lcom/bbm/f/ac;
.field public final a:Ljava/util/Map;
.field public final b:Lcom/bbm/d/a/h;
.field public final c:Lcom/bbm/f/a;
.field public final d:Lcom/bbm/util/dc;
.method public constructor <init>(Lcom/bbm/f/a;Lcom/bbm/d/a/h;Lcom/bbm/util/dc;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/b/c/q;
invoke-direct {v0}, Lcom/google/b/c/q;-><init>()V
invoke-virtual {v0}, Lcom/google/b/c/q;->f()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->c()Lcom/google/b/c/q;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/c/q;->g()Ljava/util/concurrent/ConcurrentMap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;
iput-object p2, p0, Lcom/bbm/d/a/c/e;->b:Lcom/bbm/d/a/h;
iput-object p1, p0, Lcom/bbm/d/a/c/e;->c:Lcom/bbm/f/a;
iput-object p3, p0, Lcom/bbm/d/a/c/e;->d:Lcom/bbm/util/dc;
invoke-interface {p1, p0}, Lcom/bbm/f/a;->a(Lcom/bbm/f/ac;)V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/d;
iget-object v2, p0, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/c/a;
invoke-virtual {v0}, Lcom/bbm/d/a/c/a;->a()V
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/bbm/d/a/c/a;->a(Z)V
goto :goto_a
:cond_26
return-void
.end method
.method public final a(Lcom/bbm/f/ab;)V
.registers 6
iget-object v0, p0, Lcom/bbm/d/a/c/e;->a:Ljava/util/Map;
iget-object v1, p0, Lcom/bbm/d/a/c/e;->b:Lcom/bbm/d/a/h;
invoke-virtual {v1, p1}, Lcom/bbm/d/a/h;->a(Lcom/bbm/f/ab;)Lcom/bbm/d/a/d;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/a/c/a;
if-eqz v0, :cond_1f
iget-object v1, p1, Lcom/bbm/f/ab;->b:Ljava/lang/String;
iget-object v2, p1, Lcom/bbm/f/ab;->a:Lorg/json/JSONObject;
const-string v3, "sparseChange"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_20
invoke-virtual {v0, v2}, Lcom/bbm/d/a/c/a;->c(Lorg/json/JSONObject;)V
:cond_1f
:goto_1f
return-void
:cond_20
const-string v3, "sparseChunk"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_2c
invoke-virtual {v0, v2}, Lcom/bbm/d/a/c/a;->a(Lorg/json/JSONObject;)V
goto :goto_1f
:cond_2c
const-string v3, "sparseElements"
invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-virtual {v0, v2}, Lcom/bbm/d/a/c/a;->b(Lorg/json/JSONObject;)V
goto :goto_1f
.end method