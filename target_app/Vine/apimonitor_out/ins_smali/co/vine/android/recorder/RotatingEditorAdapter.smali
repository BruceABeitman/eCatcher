.class public Lco/vine/android/recorder/RotatingEditorAdapter;
.super Landroid/widget/BaseAdapter;
.source "RotatingEditorAdapter.java"
.implements Landroid/widget/ListAdapter;
.implements Lco/vine/android/dragsort/DragSortWidget$RemoveListener;
.implements Lco/vine/android/dragsort/DragSortWidget$DragListener;
.field  mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
.field private mFirstPosition:I
.method public constructor <init>(Lco/vine/android/recorder/SegmentEditorAdapter;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mFirstPosition:I
iput-object p1, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
return-void
.end method
.method public areAllItemsEnabled()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->areAllItemsEnabled()Z
move-result v0
return v0
.end method
.method public drag(II)V
.registers 6
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {p0, p2}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Lco/vine/android/recorder/SegmentEditorAdapter;->drag(II)V
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItemId(I)J
move-result-wide v0
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getItemViewType(I)I
move-result v0
return v0
.end method
.method public getPositionInAdapter(I)I
.registers 4
iget v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mFirstPosition:I
add-int/2addr v0, p1
iget-object v1, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
rem-int/2addr v0, v1
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1, p2, p3}, Lco/vine/android/recorder/SegmentEditorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public getViewTypeCount()I
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getViewTypeCount()I
move-result v0
return v0
.end method
.method public hasStableIds()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->hasStableIds()Z
move-result v0
return v0
.end method
.method public isEmpty()Z
.registers 2
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->isEmpty()Z
move-result v0
return v0
.end method
.method public isEnabled(I)Z
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->isEnabled(I)Z
move-result v0
return v0
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
if-eqz p1, :cond_5
invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_5
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/SegmentEditorAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method
.method public remove(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {p0, p1}, Lco/vine/android/recorder/RotatingEditorAdapter;->getPositionInAdapter(I)I
move-result v1
invoke-virtual {v0, v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->remove(I)V
return-void
.end method
.method public reset()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mFirstPosition:I
invoke-virtual {p0}, Lco/vine/android/recorder/RotatingEditorAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public setFirstPosition(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v0
add-int/2addr v0, p1
iget-object v1, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v1}, Lco/vine/android/recorder/SegmentEditorAdapter;->getCount()I
move-result v1
rem-int/2addr v0, v1
iput v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mFirstPosition:I
invoke-virtual {p0}, Lco/vine/android/recorder/RotatingEditorAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
if-eqz p1, :cond_5
invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
:cond_5
iget-object v0, p0, Lco/vine/android/recorder/RotatingEditorAdapter;->mAdapter:Lco/vine/android/recorder/SegmentEditorAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/recorder/SegmentEditorAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
return-void
.end method