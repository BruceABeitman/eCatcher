.class final Lcom/google/b/c/r;
.super Ljava/util/AbstractMap;
.source "MapMaker.java"
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;
.field private final a:Lcom/google/b/c/y;
.field private final b:Lcom/google/b/c/s;
.method constructor <init>(Lcom/google/b/c/q;)V
.registers 3
invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V
invoke-virtual {p1}, Lcom/google/b/c/q;->a()Lcom/google/b/c/y;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/r;->a:Lcom/google/b/c/y;
iget-object v0, p1, Lcom/google/b/c/q;->j:Lcom/google/b/c/s;
iput-object v0, p0, Lcom/google/b/c/r;->b:Lcom/google/b/c/s;
return-void
.end method
.method public final containsKey(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final containsValue(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final entrySet()Ljava/util/Set;
.registers 2
invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/google/b/c/z;
iget-object v1, p0, Lcom/google/b/c/r;->b:Lcom/google/b/c/s;
invoke-direct {v0, p1, p2, v1}, Lcom/google/b/c/z;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/b/c/s;)V
iget-object v0, p0, Lcom/google/b/c/r;->a:Lcom/google/b/c/y;
const/4 v0, 0x0
return-object v0
.end method
.method public final putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/b/c/r;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
const/4 v0, 0x0
return v0
.end method
.method public final replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
return-object v0
.end method
.method public final replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x0
return v0
.end method