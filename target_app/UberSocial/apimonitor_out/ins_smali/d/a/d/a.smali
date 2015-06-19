.class public Ld/a/d/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.implements Ljava/util/Map;
.field private a:Ljava/util/TreeMap;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/TreeMap;
invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V
iput-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
return-void
.end method
.method public a()Ld/a/d/a;
.registers 6
new-instance v2, Ld/a/d/a;
invoke-direct {v2}, Ld/a/d/a;-><init>()V
invoke-virtual {p0}, Ld/a/d/a;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_d
:cond_d
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_39
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "oauth_"
invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_2f
const-string v4, "x_oauth_"
invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_d
:cond_2f
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
invoke-virtual {v2, v1, v0}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;
goto :goto_d
:cond_39
return-object v2
.end method
.method public a(Ljava/lang/Object;Z)Ljava/lang/String;
.registers 5
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
if-eqz v0, :cond_10
invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z
move-result v1
if-eqz v1, :cond_12
:cond_10
const/4 v0, 0x0
:goto_11
:cond_11
return-object v0
:cond_12
invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
if-eqz p2, :cond_11
invoke-static {v0}, Ld/a/c;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_11
.end method
.method public a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
invoke-virtual {p0, p1}, Ld/a/d/a;->b(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "=\""
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "\""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_7
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
.registers 6
if-eqz p3, :cond_6
invoke-static {p1}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_6
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
if-nez v0, :cond_1a
new-instance v0, Ljava/util/TreeSet;
invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V
iget-object v1, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v1, p1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1a
if-eqz p2, :cond_25
if-eqz p3, :cond_22
invoke-static {p2}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object p2
:cond_22
invoke-interface {v0, p2}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
:cond_25
return-object p2
.end method
.method public a(Ljava/lang/Object;)Ljava/util/SortedSet;
.registers 3
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;
.registers 4
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
return-object v0
.end method
.method public a(Ljava/lang/String;Ljava/util/SortedSet;Z)Ljava/util/SortedSet;
.registers 7
if-eqz p3, :cond_1f
invoke-virtual {p0, p1}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
invoke-interface {p2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_9
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const/4 v2, 0x1
invoke-virtual {p0, p1, v0, v2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
goto :goto_9
:cond_1a
invoke-virtual {p0, p1}, Ld/a/d/a;->a(Ljava/lang/Object;)Ljava/util/SortedSet;
move-result-object v0
:goto_1e
return-object v0
:cond_1f
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
goto :goto_1e
.end method
.method public a(Ljava/util/Map;)V
.registers 5
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_8
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p0, v0}, Ld/a/d/a;->a(Ljava/lang/Object;)Ljava/util/SortedSet;
move-result-object v1
if-nez v1, :cond_22
new-instance v1, Ljava/util/TreeSet;
invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V
invoke-virtual {p0, v0, v1}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;
:cond_22
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-interface {v1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z
goto :goto_8
:cond_2c
return-void
.end method
.method public a(Ljava/util/Map;Z)V
.registers 7
if-eqz p2, :cond_21
invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_a
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/SortedSet;
const/4 v3, 0x1
invoke-virtual {p0, v0, v1, v3}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/util/SortedSet;Z)Ljava/util/SortedSet;
goto :goto_a
:cond_21
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
:cond_26
return-void
.end method
.method public a([Ljava/lang/String;Z)V
.registers 6
const/4 v0, 0x0
:goto_1
array-length v1, p1
add-int/lit8 v1, v1, -0x1
if-ge v0, v1, :cond_12
aget-object v1, p1, v0
add-int/lit8 v2, v0, 0x1
aget-object v2, p1, v2
invoke-virtual {p0, v1, v2, p2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
add-int/lit8 v0, v0, 0x2
goto :goto_1
:cond_12
return-void
.end method
.method public b(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Ld/a/d/a;->a(Ljava/lang/Object;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b(Ljava/lang/Object;Z)Ljava/lang/String;
.registers 7
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
if-eqz p2, :cond_d
check-cast p1, Ljava/lang/String;
invoke-static {p1}, Ld/a/c;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object p1
:cond_d
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Set;
if-nez v0, :cond_2b
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2a
return-object v0
:cond_2b
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2f
:cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_61
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v3, "="
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
const-string v0, "&"
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_2f
:cond_61
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_2a
.end method
.method public b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-virtual {p0, p1, p2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public c(Ljava/lang/Object;)Ljava/lang/String;
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Ld/a/d/a;->b(Ljava/lang/Object;Z)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V
return-void
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const/4 v0, 0x0
goto :goto_1d
.end method
.method public d(Ljava/lang/Object;)Ljava/util/SortedSet;
.registers 3
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
return-object v0
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Ld/a/d/a;->a(Ljava/lang/Object;)Ljava/util/SortedSet;
move-result-object v0
return-object v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z
move-result v0
return v0
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v0
return-object v0
.end method
.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Ljava/lang/String;
check-cast p2, Ljava/util/SortedSet;
invoke-virtual {p0, p1, p2}, Ld/a/d/a;->a(Ljava/lang/String;Ljava/util/SortedSet;)Ljava/util/SortedSet;
move-result-object v0
return-object v0
.end method
.method public putAll(Ljava/util/Map;)V
.registers 3
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
return-void
.end method
.method public synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Ld/a/d/a;->d(Ljava/lang/Object;)Ljava/util/SortedSet;
move-result-object v0
return-object v0
.end method
.method public size()I
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
move v1, v0
:goto_c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_27
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v3, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v3, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/SortedSet;
invoke-interface {v0}, Ljava/util/SortedSet;->size()I
move-result v0
add-int/2addr v0, v1
move v1, v0
goto :goto_c
:cond_27
return v1
.end method
.method public values()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Ld/a/d/a;->a:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;
move-result-object v0
return-object v0
.end method