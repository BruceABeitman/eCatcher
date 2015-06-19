.class final Landroid/support/v4/util/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Collection;
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
.registers 2
iput-object p1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
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
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colClear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I
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
.registers 4
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_16
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
invoke-virtual {p0, v1}, Landroid/support/v4/util/MapCollections$ValuesCollection;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4
const/4 v0, 0x0
:goto_15
return v0
:cond_16
const/4 v0, 0x1
goto :goto_15
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
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
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v2, 0x1
invoke-direct {v0, v1, v2}, Landroid/support/v4/util/MapCollections$ArrayIterator;-><init>(Landroid/support/v4/util/MapCollections;I)V
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 4
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0, p1}, Landroid/support/v4/util/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I
move-result v0
if-ltz v0, :cond_f
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
const/4 v0, 0x1
:goto_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public removeAll(Ljava/util/Collection;)Z
.registers 7
const/4 v2, 0x1
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v3
move v1, v0
:goto_9
if-ge v0, v3, :cond_25
iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v4, v0, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v4
invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_22
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v3, -0x1
move v3, v1
move v1, v2
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_25
return v1
.end method
.method public retainAll(Ljava/util/Collection;)Z
.registers 7
const/4 v2, 0x1
const/4 v0, 0x0
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v3
move v1, v0
:goto_9
if-ge v0, v3, :cond_25
iget-object v4, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v4, v0, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v4
invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_22
iget-object v1, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v1, v0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
add-int/lit8 v0, v0, -0x1
add-int/lit8 v1, v3, -0x1
move v3, v1
move v1, v2
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_25
return v1
.end method
.method public size()I
.registers 2
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
invoke-virtual {v0}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
return v0
.end method
.method public toArray()[Ljava/lang/Object;
.registers 3
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
iget-object v0, p0, Landroid/support/v4/util/MapCollections$ValuesCollection;->this$0:Landroid/support/v4/util/MapCollections;
const/4 v1, 0x1
invoke-virtual {v0, p1, v1}, Landroid/support/v4/util/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
move-result-object v0
return-object v0
.end method