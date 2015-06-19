.class final Landroid/support/v4/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;
.field  mEnd:I
.field  mEntryValid:Z
.field  mIndex:I
.field final synthetic this$0:Landroid/support/v4/util/MapCollections;
.method constructor <init>(Landroid/support/v4/util/MapCollections;)V
.registers 3
iput-object p1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I
move-result v0
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I
const/4 v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
return-void
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 7
const/4 v0, 0x1
const/4 v1, 0x0
iget-boolean v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v2, :cond_e
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This container does not support retaining Map.Entry objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_e
instance-of v2, p1, Ljava/util/Map$Entry;
if-nez v2, :cond_13
:goto_12
return v1
:cond_13
check-cast p1, Ljava/util/Map$Entry;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v4, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
invoke-virtual {v3, v4, v1}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3b
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
iget-object v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v4, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v3
invoke-static {v2, v3}, Landroid/support/v4/util/ContainerHelpers;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_3b
:goto_39
move v1, v0
goto :goto_12
:cond_3b
move v0, v1
goto :goto_39
.end method
.method public getKey()Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This container does not support retaining Map.Entry objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This container does not support retaining Map.Entry objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public hasNext()Z
.registers 3
iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I
if-ge v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final hashCode()I
.registers 6
const/4 v0, 0x0
iget-boolean v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v1, :cond_d
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This container does not support retaining Map.Entry objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
invoke-virtual {v1, v2, v0}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v3, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
const/4 v4, 0x1
invoke-virtual {v2, v3, v4}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;
move-result-object v2
if-nez v1, :cond_25
move v1, v0
:goto_21
if-nez v2, :cond_2a
:goto_23
xor-int/2addr v0, v1
return v0
:cond_25
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_21
:cond_2a
invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_23
.end method
.method public bridge synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;
move-result-object v0
return-object v0
.end method
.method public next()Ljava/util/Map$Entry;
.registers 2
iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
const/4 v0, 0x1
iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
return-object p0
.end method
.method public remove()V
.registers 3
iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
invoke-virtual {v0, v1}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V
iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
iget v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEnd:I
const/4 v0, 0x0
iput-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
return-void
.end method
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mEntryValid:Z
if-nez v0, :cond_c
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "This container does not support retaining Map.Entry objects"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_c
iget-object v0, p0, Landroid/support/v4/util/MapCollections$MapIterator;->this$0:Landroid/support/v4/util/MapCollections;
iget v1, p0, Landroid/support/v4/util/MapCollections$MapIterator;->mIndex:I
invoke-virtual {v0, v1, p1}, Landroid/support/v4/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/support/v4/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method