.class final Landroid/support/v4/util/MapCollections$KeySet;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Set;
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public add(Ljava/lang/Object;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public addAll(Ljava/util/Collection;)Z
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V
throw v0
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colClear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public containsAll(Ljava/util/Collection;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Landroid/support/v4/util/MapCollections;->equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
add-int/lit8 v0, v0, -0x1
move v2, v0
move v3, v1
:goto_b
if-ltz v2, :cond_20
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
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
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public iterator()Ljava/util/Iterator;
.registers 4
new-instance v0, Landroid/support/v4/util/MapCollections$ArrayIterator;
iget-object v1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/support/v4/util/MapCollections$ArrayIterator;-><init>(Landroid/support/v4/util/MapCollections;I)V
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfKey(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_f
iget-object v1, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetMap()Ljava/util/Map;
move-result-object v0
invoke-static {v0, p1}, Landroid/support/v4/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
move-result v0
return v0
.end method
.method public size()I
.registers 2
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
return v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/util/MapCollections$KeySet;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method