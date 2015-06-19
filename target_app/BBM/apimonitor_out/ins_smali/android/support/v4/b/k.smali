.class final Landroid/support/v4/b/k;
.super Ljava/lang/Object;
.source "MapCollections.java"
.implements Ljava/util/Set;
.field final synthetic a:Landroid/support/v4/b/h;
.method constructor <init>(Landroid/support/v4/b/h;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final add(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final addAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public final clear()V
.registers 2
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->c()V
return-void
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0, p1}, Landroid/support/v4/b/h;->a(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final containsAll(Ljava/util/Collection;)Z
.registers 5
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_1c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_a
const/4 v0, 0x0
:goto_1b
return v0
:cond_1c
const/4 v0, 0x1
goto :goto_1b
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/b/h;->a(Ljava/util/Set;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v2, v0
move v3, v1
:goto_b
if-ltz v2, :cond_20
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0, v2, v1}, Landroid/support/v4/b/h;->a(II)Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_1b
move v0, v1
:goto_16
add-int/2addr v3, v0
add-int/lit8 v0, v2, -0x1
move v2, v0
goto :goto_b
:cond_1b
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_16
:cond_20
return v3
.end method
.method public final isEmpty()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 4
new-instance v0, Landroid/support/v4/b/i;
iget-object v1, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/support/v4/b/i;-><init>(Landroid/support/v4/b/h;I)V
return-object v0
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0, p1}, Landroid/support/v4/b/h;->a(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_f
iget-object v1, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v1, v0}, Landroid/support/v4/b/h;->a(I)V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public final removeAll(Ljava/util/Collection;)Z
.registers 6
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_e
:cond_1c
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-eq v1, v0, :cond_24
const/4 v0, 0x1
:goto_23
return v0
:cond_24
const/4 v0, 0x0
goto :goto_23
.end method
.method public final retainAll(Ljava/util/Collection;)Z
.registers 6
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->b()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v1
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v2
invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_12
:goto_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_12
invoke-interface {v2}, Ljava/util/Iterator;->remove()V
goto :goto_12
:cond_26
invoke-interface {v0}, Ljava/util/Map;->size()I
move-result v0
if-eq v1, v0, :cond_2e
const/4 v0, 0x1
:goto_2d
return v0
:cond_2e
const/4 v0, 0x0
goto :goto_2d
.end method
.method public final size()I
.registers 2
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
invoke-virtual {v0}, Landroid/support/v4/b/h;->a()I
move-result v0
return v0
.end method
.method public final toArray()[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/b/h;->b(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/b/k;->a:Landroid/support/v4/b/h;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/support/v4/b/h;->a([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method