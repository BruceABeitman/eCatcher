.class public Lcom/coremedia/iso/boxes/SampleTableBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "SampleTableBox.java"
.field public static final TYPE:Ljava/lang/String; = "stbl"
.method public constructor <init>()V
.registers 2
const-string v0, "stbl"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/ChunkOffsetBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/ChunkOffsetBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getCompositionTimeToSample()Lcom/coremedia/iso/boxes/CompositionTimeToSample;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/CompositionTimeToSample;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSampleDependencyTypeBox()Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/SampleDependencyTypeBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleSizeBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/SampleSizeBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/SampleToChunkBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getSyncSampleBox()Lcom/coremedia/iso/boxes/SyncSampleBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/SyncSampleBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/SyncSampleBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public getTimeToSampleBox()Lcom/coremedia/iso/boxes/TimeToSampleBox;
.registers 4
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_19
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v2, v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;
if-eqz v2, :cond_6
check-cast v0, Lcom/coremedia/iso/boxes/TimeToSampleBox;
:goto_18
return-object v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public setChunkOffsetBox(Lcom/coremedia/iso/boxes/ChunkOffsetBox;)V
.registers 4
const/4 v0, 0x0
move v1, v0
:goto_2
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_1f
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
instance-of v0, v0, Lcom/coremedia/iso/boxes/ChunkOffsetBox;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleTableBox;->boxes:Ljava/util/List;
invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
:cond_1b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2
:cond_1f
return-void
.end method