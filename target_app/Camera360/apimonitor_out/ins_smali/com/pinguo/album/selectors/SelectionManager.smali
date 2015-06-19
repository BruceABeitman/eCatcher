.class public Lcom/pinguo/album/selectors/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"
.implements Lcom/pinguo/album/selectors/ISelector;
.field private static final TAG:Ljava/lang/String; = "SelectionManager"
.field private mAutoLeave:Z
.field private mClickedSet:Ljava/util/Set;
.field private mDataManager:Lcom/pinguo/album/data/AlbumDataManager;
.field private mInSelectionMode:Z
.field private mInverseSelection:Z
.field private mIsAlbumSet:Z
.field private mListener:Lcom/pinguo/album/selectors/SelectionListener;
.field private mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
.field private mTotal:I
.method public constructor <init>(Lcom/pinguo/album/PGAlbumContext;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mAutoLeave:Z
invoke-interface {p1}, Lcom/pinguo/album/PGAlbumContext;->getDataManager()Lcom/pinguo/album/data/AlbumDataManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mDataManager:Lcom/pinguo/album/data/AlbumDataManager;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
iput-boolean p2, p0, Lcom/pinguo/album/selectors/SelectionManager;->mIsAlbumSet:Z
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
return-void
.end method
.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/album/data/MediaSet;I)Z
.registers 14
const/4 v8, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSetCount()I
move-result v6
const/4 v2, 0x0
:goto_6
if-lt v2, v6, :cond_13
invoke-virtual {p1}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I
move-result v7
const/16 v0, 0x32
const/4 v3, 0x0
:goto_f
if-lt v3, v7, :cond_20
const/4 v8, 0x1
:cond_12
return v8
:cond_13
invoke-virtual {p1, v2}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;
move-result-object v9
invoke-static {p0, v9, p2}, Lcom/pinguo/album/selectors/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/album/data/MediaSet;I)Z
move-result v9
if-eqz v9, :cond_12
add-int/lit8 v2, v2, 0x1
goto :goto_6
:cond_20
add-int v9, v3, v0
if-ge v9, v7, :cond_43
move v1, v0
:goto_25
invoke-virtual {p1, v3, v1}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v5
if-eqz v5, :cond_37
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v9
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v10
sub-int v10, p2, v10
if-gt v9, v10, :cond_12
:cond_37
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_3b
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_46
add-int/2addr v3, v0
goto :goto_f
:cond_43
sub-int v1, v7, v3
goto :goto_25
:cond_46
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/data/MediaItem;
invoke-virtual {v4}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v10
invoke-virtual {p0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_3b
.end method
.method private getTotalCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
if-gez v0, :cond_16
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mIsAlbumSet:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSetCount()I
move-result v0
:goto_14
iput v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
:cond_16
iget v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
goto :goto_5
:cond_19
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I
move-result v0
goto :goto_14
.end method
.method public deSelectAll()V
.registers 2
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->leaveSelectionMode()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
return-void
.end method
.method public enterSelectionMode()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInSelectionMode:Z
if-eqz v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInSelectionMode:Z
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
invoke-interface {v0, v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public getSelected(Z)Ljava/util/ArrayList;
.registers 3
const v0, 0x7fffffff
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/selectors/SelectionManager;->getSelected(ZI)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method public getSelected(ZI)Ljava/util/ArrayList;
.registers 15
const/4 v9, 0x0
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iget-boolean v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mIsAlbumSet:Z
if-eqz v10, :cond_6d
iget-boolean v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
if-eqz v10, :cond_40
invoke-direct {p0}, Lcom/pinguo/album/selectors/SelectionManager;->getTotalCount()I
move-result v8
const/4 v1, 0x0
:goto_13
if-lt v1, v8, :cond_16
:goto_15
:cond_15
return-object v6
:cond_16
iget-object v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v10, v1}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/album/data/MediaSet;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v2
iget-object v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_3d
if-eqz p1, :cond_32
invoke-static {v6, v7, p2}, Lcom/pinguo/album/selectors/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/album/data/MediaSet;I)Z
move-result v10
if-nez v10, :cond_3d
move-object v6, v9
goto :goto_15
:cond_32
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v10
if-le v10, p2, :cond_3d
move-object v6, v9
goto :goto_15
:cond_3d
add-int/lit8 v1, v1, 0x1
goto :goto_13
:cond_40
iget-object v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_46
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_15
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaPath;
if-eqz p1, :cond_62
iget-object v11, p0, Lcom/pinguo/album/selectors/SelectionManager;->mDataManager:Lcom/pinguo/album/data/AlbumDataManager;
invoke-virtual {v11, v2}, Lcom/pinguo/album/data/AlbumDataManager;->getMediaSet(Lcom/pinguo/album/data/MediaPath;)Lcom/pinguo/album/data/MediaSet;
move-result-object v11
invoke-static {v6, v11, p2}, Lcom/pinguo/album/selectors/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/album/data/MediaSet;I)Z
move-result v11
if-nez v11, :cond_46
move-object v6, v9
goto :goto_15
:cond_62
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v11
if-le v11, p2, :cond_46
move-object v6, v9
goto :goto_15
:cond_6d
iget-boolean v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
if-eqz v10, :cond_b0
invoke-direct {p0}, Lcom/pinguo/album/selectors/SelectionManager;->getTotalCount()I
move-result v8
const/4 v3, 0x0
:goto_76
if-ge v3, v8, :cond_15
sub-int v10, v8, v3
const/16 v11, 0x1f4
invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
invoke-virtual {v10, v3, v0}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_8a
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-nez v11, :cond_92
add-int/2addr v3, v0
goto :goto_76
:cond_92
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/album/data/MediaItem;
invoke-virtual {v4}, Lcom/pinguo/album/data/MediaItem;->getPath()Lcom/pinguo/album/data/MediaPath;
move-result-object v2
iget-object v11, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v11, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v11
if-nez v11, :cond_8a
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v11
if-le v11, p2, :cond_8a
move-object v6, v9
goto/16 :goto_15
:cond_b0
iget-object v10, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v10
:cond_b6
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v11
if-eqz v11, :cond_15
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/data/MediaPath;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v11
if-le v11, p2, :cond_b6
move-object v6, v9
goto/16 :goto_15
.end method
.method public getSelectedCount()I
.registers 3
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v0
iget-boolean v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
if-eqz v1, :cond_10
invoke-direct {p0}, Lcom/pinguo/album/selectors/SelectionManager;->getTotalCount()I
move-result v1
sub-int v0, v1, v0
:cond_10
return v0
.end method
.method public inSelectAllMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
return v0
.end method
.method public inSelectionMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInSelectionMode:Z
return v0
.end method
.method public isItemSelected(Lcom/pinguo/album/data/MediaPath;)Z
.registers 4
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public leaveSelectionMode()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInSelectionMode:Z
if-nez v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInSelectionMode:Z
iput-boolean v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public selectAll()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->enterSelectionMode()V
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionModeChange(I)V
:cond_18
return-void
.end method
.method public setAutoLeaveSelectionMode(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mAutoLeave:Z
return-void
.end method
.method public setSelectionListener(Lcom/pinguo/album/selectors/SelectionListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
return-void
.end method
.method public setSourceMediaSet(Lcom/pinguo/album/data/MediaSet;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mSourceMediaSet:Lcom/pinguo/album/data/MediaSet;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/album/selectors/SelectionManager;->mTotal:I
return-void
.end method
.method public toggle(Lcom/pinguo/album/data/MediaPath;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:goto_d
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->getSelectedCount()I
move-result v0
invoke-direct {p0}, Lcom/pinguo/album/selectors/SelectionManager;->getTotalCount()I
move-result v1
if-ne v0, v1, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->selectAll()V
:cond_1a
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mListener:Lcom/pinguo/album/selectors/SelectionListener;
invoke-interface {v1}, Lcom/pinguo/album/selectors/SelectionListener;->onSelectionChange()V
:cond_23
if-nez v0, :cond_2c
iget-boolean v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mAutoLeave:Z
if-eqz v1, :cond_2c
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->leaveSelectionMode()V
:cond_2c
return-void
:cond_2d
invoke-virtual {p0}, Lcom/pinguo/album/selectors/SelectionManager;->enterSelectionMode()V
iget-object v1, p0, Lcom/pinguo/album/selectors/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method