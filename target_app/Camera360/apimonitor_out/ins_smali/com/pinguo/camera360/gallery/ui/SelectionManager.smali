.class public Lcom/pinguo/camera360/gallery/ui/SelectionManager;
.super Ljava/lang/Object;
.source "SelectionManager.java"
.field public static final ENTER_SELECTION_MODE:I = 0x1
.field public static final LEAVE_SELECTION_MODE:I = 0x2
.field public static final SELECT_ALL_MODE:I = 0x3
.field private static final TAG:Ljava/lang/String; = "SelectionManager"
.field private mAutoLeave:Z
.field private mClickedSet:Ljava/util/Set;
.field private mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;
.field private mInSelectionMode:Z
.field private mInverseSelection:Z
.field private mIsAlbumSet:Z
.field private mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
.field private mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
.field private mTotal:I
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;Z)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mAutoLeave:Z
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getDataManager()Lcom/pinguo/camera360/gallery/data/DataManager;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
iput-boolean p2, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mIsAlbumSet:Z
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mTotal:I
return-void
.end method
.method private static expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
.registers 12
invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSetCount()I
move-result v6
const/4 v2, 0x0
:goto_5
if-lt v2, v6, :cond_11
invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v7
const/16 v0, 0x32
const/4 v3, 0x0
:goto_e
if-lt v3, v7, :cond_1b
return-void
:cond_11
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v8
invoke-static {p0, v8}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_1b
add-int v8, v3, v0
if-ge v8, v7, :cond_30
move v1, v0
:goto_20
invoke-virtual {p1, v3, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_28
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_33
add-int/2addr v3, v0
goto :goto_e
:cond_30
sub-int v1, v7, v3
goto :goto_20
:cond_33
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v9
invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_28
.end method
.method public deSelectAll()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V
:cond_15
return-void
.end method
.method public enterSelectionMode()V
.registers 3
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
if-eqz v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public getSelected(Z)Ljava/util/ArrayList;
.registers 14
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
iget-boolean v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mIsAlbumSet:Z
if-eqz v9, :cond_6e
iget-boolean v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
if-eqz v9, :cond_49
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v8
const-string/jumbo v9, "SelectionManager"
new-instance v10, Ljava/lang/StringBuilder;
const-string/jumbo v11, "toatal ="
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x0
:goto_28
if-lt v1, v8, :cond_2b
:cond_2a
return-object v6
:cond_2b
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v9, v1}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v7
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v2
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v9, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_42
if-eqz p1, :cond_45
invoke-static {v6, v7}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
:goto_42
:cond_42
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_45
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_42
:cond_49
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_4f
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_2a
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/data/Path;
if-eqz p1, :cond_6a
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mDataManager:Lcom/pinguo/camera360/gallery/data/DataManager;
const-string/jumbo v11, ""
invoke-virtual {v10, v2, v11}, Lcom/pinguo/camera360/gallery/data/DataManager;->getMediaSet(Lcom/pinguo/camera360/gallery/data/Path;Ljava/lang/String;)Lcom/pinguo/camera360/gallery/data/MediaSet;
move-result-object v10
invoke-static {v6, v10}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->expandMediaSet(Ljava/util/ArrayList;Lcom/pinguo/camera360/gallery/data/MediaSet;)V
goto :goto_4f
:cond_6a
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4f
:cond_6e
iget-boolean v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
if-eqz v9, :cond_a9
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v8
const/4 v3, 0x0
:goto_77
if-ge v3, v8, :cond_2a
sub-int v9, v8, v3
const/16 v10, 0x1f4
invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I
move-result v0
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v9, v3, v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;
move-result-object v5
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_8b
:cond_8b
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_93
add-int/2addr v3, v0
goto :goto_77
:cond_93
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/pinguo/camera360/gallery/data/MediaItem;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/MediaItem;->getPath()Lcom/pinguo/camera360/gallery/data/Path;
move-result-object v2
iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v10, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v10
if-nez v10, :cond_8b
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_8b
:cond_a9
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_af
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-eqz v10, :cond_2a
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/data/Path;
invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_af
.end method
.method public getSelectedCount()I
.registers 3
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1}, Ljava/util/Set;->size()I
move-result v0
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
if-eqz v1, :cond_10
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v1
sub-int v0, v1, v0
:cond_10
return v0
.end method
.method public getSourceMediaSet()Lcom/pinguo/camera360/gallery/data/MediaSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
return-object v0
.end method
.method public getTotalCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
if-nez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mTotal:I
if-ltz v0, :cond_e
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mIsAlbumSet:Z
if-eqz v0, :cond_1a
:cond_e
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mIsAlbumSet:Z
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getSubMediaSetCount()I
move-result v0
:goto_18
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mTotal:I
:cond_1a
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mTotal:I
goto :goto_5
:cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/data/MediaSet;->getMediaItemCount()I
move-result v0
goto :goto_18
.end method
.method public inSelectAllMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
return v0
.end method
.method public inSelectionMode()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
return v0
.end method
.method public isItemSelected(Lcom/pinguo/camera360/gallery/data/Path;)Z
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
xor-int/2addr v0, v1
return v0
.end method
.method public leaveSelectionMode()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
if-nez v0, :cond_6
:cond_5
:goto_5
return-void
:cond_6
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInSelectionMode:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
const/4 v1, 0x2
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V
goto :goto_5
.end method
.method public selectAll()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mInverseSelection:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->enterSelectionMode()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
const/4 v1, 0x3
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionModeChange(I)V
:cond_15
return-void
.end method
.method public setAutoLeaveSelectionMode(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mAutoLeave:Z
return-void
.end method
.method public setSelectionListener(Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
return-void
.end method
.method public setSourceMediaSet(Lcom/pinguo/camera360/gallery/data/MediaSet;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mSourceMediaSet:Lcom/pinguo/camera360/gallery/data/MediaSet;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mTotal:I
return-void
.end method
.method public toggle(Lcom/pinguo/camera360/gallery/data/Path;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_2d
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:goto_d
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelectedCount()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v1
if-ne v0, v1, :cond_1a
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->selectAll()V
:cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionChange()V
:cond_23
if-nez v0, :cond_2c
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mAutoLeave:Z
if-eqz v1, :cond_2c
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V
:cond_2c
return-void
:cond_2d
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->enterSelectionMode()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method public toggle(Lcom/pinguo/camera360/gallery/data/Path;Z)V
.registers 5
if-nez p2, :cond_27
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
:goto_7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getSelectedCount()I
move-result v0
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->getTotalCount()I
move-result v1
if-ne v0, v1, :cond_14
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->selectAll()V
:cond_14
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
if-eqz v1, :cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mListener:Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;
invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/SelectionManager$SelectionListener;->onSelectionChange()V
:cond_1d
if-nez v0, :cond_26
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mAutoLeave:Z
if-eqz v1, :cond_26
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->leaveSelectionMode()V
:cond_26
return-void
:cond_27
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->enterSelectionMode()V
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SelectionManager;->mClickedSet:Ljava/util/Set;
invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
goto :goto_7
.end method