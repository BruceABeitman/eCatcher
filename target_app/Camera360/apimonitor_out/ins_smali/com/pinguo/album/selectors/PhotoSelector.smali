.class public Lcom/pinguo/album/selectors/PhotoSelector;
.super Ljava/lang/Object;
.source "PhotoSelector.java"
.implements Lcom/pinguo/album/selectors/ISelector;
.field private mAutoLeave:Z
.field private mCurrentPath:Lcom/pinguo/album/data/MediaPath;
.field private mInSelectionMode:Z
.field private mInverseSelection:Z
.field private mIsAlbum:Z
.field private mListener:Lcom/pinguo/album/selectors/SelectionListener;
.field private mSlotPos:Ljava/util/ArrayList;
.field private mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
.field private mTags:Ljava/util/ArrayList;
.method public constructor <init>(Z)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mAutoLeave:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mIsAlbum:Z
iput-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInverseSelection:Z
iput-boolean p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mIsAlbum:Z
return-void
.end method
.method private findTag(I)Lcom/pinguo/album/data/MediaSet$SortTag;
.registers 6
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v2, :cond_8
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v2, :cond_a
:cond_8
const/4 v1, 0x0
:cond_9
return-object v1
:cond_a
const/4 v1, 0x0
const/4 v0, 0x0
:goto_c
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ge v0, v2, :cond_9
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaSet$SortTag;
iget v2, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
if-ge p1, v2, :cond_2f
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
add-int/lit8 v3, v0, -0x1
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
:goto_2a
:cond_2a
if-nez v1, :cond_9
add-int/lit8 v0, v0, 0x1
goto :goto_c
:cond_2f
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v2, v2, -0x1
if-ne v0, v2, :cond_2a
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
goto :goto_2a
.end method
.method private modifyTagCheckedState(I)V
.registers 6
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v2, :cond_8
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v2, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-direct {p0, p1}, Lcom/pinguo/album/selectors/PhotoSelector;->findTag(I)Lcom/pinguo/album/data/MediaSet$SortTag;
move-result-object v1
iget v2, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
iget v3, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
add-int/2addr v2, v3
add-int/lit8 v0, v2, -0x1
:goto_14
iget v2, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
if-ge v0, v2, :cond_1c
const/4 v2, 0x1
iput-boolean v2, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_8
:cond_1c
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-boolean v2, v2, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
if-nez v2, :cond_2c
const/4 v2, 0x0
iput-boolean v2, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_8
:cond_2c
add-int/lit8 v0, v0, -0x1
goto :goto_14
.end method
.method private resetAllSCheckedState()V
.registers 6
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v2, :cond_9
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v2, :cond_a
:cond_9
return-void
:cond_a
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_2b
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_9
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
iput-boolean v4, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_1c
:cond_2b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean v4, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
goto :goto_10
.end method
.method public clear()V
.registers 6
const/4 v4, 0x0
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v2, :cond_9
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v2, :cond_a
:cond_9
return-void
:cond_a
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_10
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_2b
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1c
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_9
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
iput-boolean v4, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_1c
:cond_2b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean v4, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
goto :goto_10
.end method
.method public deSelectAll()V
.registers 6
const/4 v4, 0x0
iput-boolean v4, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInverseSelection:Z
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_26
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_2f
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
const/4 v3, 0x3
invoke-interface {v2, v3}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
:cond_25
return-void
:cond_26
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean v4, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
goto :goto_9
:cond_2f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
iput-boolean v4, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_15
.end method
.method public enterSelectionMode()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
if-eqz v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
invoke-interface {v0, v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public getSelectedCount()I
.registers 5
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v3, :cond_9
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v3, :cond_a
:goto_9
:cond_9
return v2
:cond_a
iget-boolean v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mIsAlbum:Z
if-eqz v3, :cond_2a
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_15
:goto_15
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_1d
move v2, v1
goto :goto_9
:cond_1d
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-boolean v3, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
if-eqz v3, :cond_15
add-int/lit8 v1, v1, 0x1
goto :goto_15
:cond_2a
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mCurrentPath:Lcom/pinguo/album/data/MediaPath;
if-eqz v3, :cond_9
const/4 v2, 0x1
goto :goto_9
.end method
.method public getSelectedPaths()Ljava/util/ArrayList;
.registers 5
iget-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mIsAlbum:Z
if-eqz v1, :cond_1b
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v1, :cond_c
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v1, :cond_e
:cond_c
const/4 v0, 0x0
:goto_d
return-object v0
:cond_e
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedCount()I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
move-result-object v0
goto :goto_d
:cond_1b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mCurrentPath:Lcom/pinguo/album/data/MediaPath;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method public getSourceMediaSet()Lcom/pinguo/album/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
return-object v0
.end method
.method public inSelectAllMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInverseSelection:Z
return v0
.end method
.method public inSelectionMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
return v0
.end method
.method public isItemSelected(Lcom/pinguo/album/data/MediaPath;I)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v1, :cond_9
iget-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
if-nez v1, :cond_a
:cond_9
:goto_9
return v0
:cond_a
iget-object v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge p2, v1, :cond_9
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-boolean v0, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
goto :goto_9
.end method
.method public leaveSelectionMode()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
if-nez v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInSelectionMode:Z
iput-boolean v1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInverseSelection:Z
invoke-direct {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->resetAllSCheckedState()V
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public selectAll()V
.registers 6
const/4 v4, 0x1
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v2, :cond_9
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v2, :cond_a
:goto_9
:cond_9
return-void
:cond_a
iput-boolean v4, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mInverseSelection:Z
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_12
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_32
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_1e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_3b
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->enterSelectionMode()V
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v2, :cond_9
iget-object v2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
const/4 v3, 0x3
invoke-interface {v2, v3}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
goto :goto_9
:cond_32
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean v4, v0, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
goto :goto_12
:cond_3b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/data/MediaSet$SortTag;
iput-boolean v4, v1, Lcom/pinguo/album/data/MediaSet$SortTag;->checked:Z
goto :goto_1e
.end method
.method public setAutoLeaveSelectionMode(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mAutoLeave:Z
return-void
.end method
.method public setCurrentPhotoPath(Lcom/pinguo/album/data/MediaPath;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mCurrentPath:Lcom/pinguo/album/data/MediaPath;
return-void
.end method
.method public setSelectionListener(Lcom/pinguo/album/selectors/SelectionListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
return-void
.end method
.method public setSourceMediaSet(Lcom/pinguo/album/data/MediaSet;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
return-void
.end method
.method public setTagsAndSlotPos(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
return-void
.end method
.method public toggleTag(IZ)V
.registers 8
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v3, :cond_8
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaSet$SortTag;
iget v1, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
:goto_13
iget v3, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->index:I
iget v4, v2, Lcom/pinguo/album/data/MediaSet$SortTag;->count:I
add-int/2addr v3, v4
if-lt v1, v3, :cond_29
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v3, :cond_23
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
invoke-interface {v3}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionChange()V
:cond_23
if-eqz p2, :cond_36
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->enterSelectionMode()V
goto :goto_8
:cond_29
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean p2, v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_36
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedCount()I
move-result v0
if-nez v0, :cond_8
iget-boolean v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mAutoLeave:Z
if-eqz v3, :cond_8
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->leaveSelectionMode()V
goto :goto_8
.end method
.method public toggleThumbnail(I)V
.registers 6
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
if-eqz v3, :cond_8
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mTags:Ljava/util/ArrayList;
if-nez v3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iget-boolean v3, v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
if-eqz v3, :cond_35
const/4 v0, 0x0
:goto_16
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mSlotPos:Ljava/util/ArrayList;
invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;
iput-boolean v0, v3, Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;->isChecked:Z
invoke-direct {p0, p1}, Lcom/pinguo/album/selectors/PhotoSelector;->modifyTagCheckedState(I)V
const/4 v2, 0x1
if-eqz v0, :cond_37
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->enterSelectionMode()V
:cond_29
:goto_29
if-eqz v2, :cond_8
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v3, :cond_8
iget-object v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
invoke-interface {v3}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionChange()V
goto :goto_8
:cond_35
const/4 v0, 0x1
goto :goto_16
:cond_37
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->getSelectedCount()I
move-result v1
if-nez v1, :cond_29
iget-boolean v3, p0, Lcom/pinguo/album/selectors/PhotoSelector;->mAutoLeave:Z
if-eqz v3, :cond_29
invoke-virtual {p0}, Lcom/pinguo/album/selectors/PhotoSelector;->leaveSelectionMode()V
const/4 v2, 0x0
goto :goto_29
.end method