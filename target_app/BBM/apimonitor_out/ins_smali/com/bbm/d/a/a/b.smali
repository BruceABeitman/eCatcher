.class public abstract Lcom/bbm/d/a/a/b;
.super Lcom/google/b/c/g;
.source "KeyedList.java"
.implements Ljava/util/RandomAccess;
.field final a:Ljava/util/List;
.field  b:Ljava/util/Map;
.field private c:Z
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/google/b/c/g;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/a/b;->a:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
return-void
.end method
.method public final a(Ljava/lang/Object;)I
.registers 7
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
if-eqz v0, :cond_27
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
move v0, v1
:goto_b
invoke-virtual {p0}, Lcom/bbm/d/a/a/b;->size()I
move-result v3
if-ge v0, v3, :cond_23
invoke-virtual {p0, v0}, Lcom/bbm/d/a/a/b;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-virtual {p0, v3}, Lcom/bbm/d/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_b
:cond_23
iput-object v2, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
iput-boolean v1, p0, Lcom/bbm/d/a/a/b;->c:Z
:cond_27
iget-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-nez v0, :cond_33
const/4 v0, -0x1
:goto_32
return v0
:cond_33
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_32
.end method
.method protected final a()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/b;->a:Ljava/util/List;
return-object v0
.end method
.method public add(ILjava/lang/Object;)V
.registers 4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
invoke-super {p0, p1, p2}, Lcom/google/b/c/g;->add(ILjava/lang/Object;)V
return-void
.end method
.method public add(Ljava/lang/Object;)Z
.registers 5
iget-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
if-nez v0, :cond_15
iget-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lcom/bbm/d/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/d/a/a/b;->size()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_15
invoke-super {p0, p1}, Lcom/google/b/c/g;->add(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public addAll(ILjava/util/Collection;)Z
.registers 7
const/4 v0, 0x0
invoke-interface {p0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;
move-result-object v1
invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_18
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V
const/4 v0, 0x1
goto :goto_9
:cond_18
return v0
.end method
.method public addAll(Ljava/util/Collection;)Z
.registers 3
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-static {p0, v0}, Lcom/google/b/c/m;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z
move-result v0
return v0
.end method
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
invoke-virtual {p0, p1}, Lcom/bbm/d/a/a/b;->a(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_11
invoke-virtual {p0}, Lcom/bbm/d/a/a/b;->size()I
move-result v1
if-ge v0, v1, :cond_11
invoke-virtual {p0, v0}, Lcom/bbm/d/a/a/b;->get(I)Ljava/lang/Object;
move-result-object v0
:goto_10
return-object v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method protected final bridge synthetic b()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/b;->a:Ljava/util/List;
return-object v0
.end method
.method protected final bridge synthetic c()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/b;->a:Ljava/util/List;
return-object v0
.end method
.method public abstract c(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method public clear()V
.registers 2
iget-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
if-nez v0, :cond_9
iget-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
:cond_9
invoke-super {p0}, Lcom/google/b/c/g;->clear()V
return-void
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
invoke-virtual {p0}, Lcom/bbm/d/a/a/b;->listIterator()Ljava/util/ListIterator;
move-result-object v0
return-object v0
.end method
.method public listIterator()Ljava/util/ListIterator;
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/d/a/a/b;->listIterator(I)Ljava/util/ListIterator;
move-result-object v0
return-object v0
.end method
.method public listIterator(I)Ljava/util/ListIterator;
.registers 4
iget-object v0, p0, Lcom/bbm/d/a/a/b;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;
move-result-object v0
new-instance v1, Lcom/bbm/d/a/a/c;
invoke-direct {v1, p0, v0}, Lcom/bbm/d/a/a/c;-><init>(Lcom/bbm/d/a/a/b;Ljava/util/ListIterator;)V
return-object v1
.end method
.method public remove(I)Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
if-nez v0, :cond_1e
invoke-virtual {p0}, Lcom/bbm/d/a/a/b;->size()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_1e
iget-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-virtual {p0, p1}, Lcom/bbm/d/a/a/b;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0, v1}, Lcom/bbm/d/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
:goto_19
invoke-super {p0, p1}, Lcom/google/b/c/g;->remove(I)Ljava/lang/Object;
move-result-object v0
return-object v0
:cond_1e
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
goto :goto_19
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 3
invoke-virtual {p0}, Lcom/google/b/c/e;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-static {v0, p1}, Lcom/google/b/c/m;->a(Ljava/util/Iterator;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public set(ILjava/lang/Object;)Ljava/lang/Object;
.registers 6
iget-boolean v0, p0, Lcom/bbm/d/a/a/b;->c:Z
if-nez v0, :cond_24
invoke-virtual {p0, p1}, Lcom/bbm/d/a/a/b;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/bbm/d/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, p2}, Lcom/bbm/d/a/a/b;->c(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_24
iget-object v2, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/d/a/a/b;->b:Ljava/util/Map;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_24
invoke-super {p0, p1, p2}, Lcom/google/b/c/g;->set(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method