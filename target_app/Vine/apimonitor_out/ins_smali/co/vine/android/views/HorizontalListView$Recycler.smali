.class  Lco/vine/android/views/HorizontalListView$Recycler;
.super Ljava/lang/Object;
.source "HorizontalListView.java"
.field private mActiveViews:[Landroid/view/View;
.field private mFirstActivePos:I
.field private final mRecycleViews:Ljava/util/ArrayList;
.field final synthetic this$0:Lco/vine/android/views/HorizontalListView;
.method public constructor <init>(Lco/vine/android/views/HorizontalListView;)V
.registers 3
iput-object p1, p0, Lco/vine/android/views/HorizontalListView$Recycler;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
return-void
.end method
.method private pruneRecycleViews()V
.registers 9
iget-object v5, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
array-length v1, v5
iget-object v2, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v3
sub-int v4, v3, v1
add-int/lit8 v3, v3, -0x1
const/4 v0, 0x0
:goto_e
if-ge v0, v4, :cond_21
iget-object v6, p0, Lco/vine/android/views/HorizontalListView$Recycler;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Landroid/view/View;
const/4 v7, 0x0
#calls: Lco/vine/android/views/HorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
invoke-static {v6, v5, v7}, Lco/vine/android/views/HorizontalListView;->access$600(Lco/vine/android/views/HorizontalListView;Landroid/view/View;Z)V
add-int/lit8 v3, v3, -0x1
add-int/lit8 v0, v0, 0x1
goto :goto_e
:cond_21
return-void
.end method
.method public addRecycleView(Landroid/view/View;I)V
.registers 5
invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Lco/vine/android/views/HorizontalListView$LayoutParams;
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iput p2, v0, Lco/vine/android/views/HorizontalListView$LayoutParams;->recycledPosition:I
const/4 v1, 0x1
iput-boolean v1, v0, Lco/vine/android/views/HorizontalListView$LayoutParams;->recycled:Z
iget-object v1, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public clear()V
.registers 7
iget-object v1, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
add-int/lit8 v0, v2, -0x1
:goto_8
if-ltz v0, :cond_19
iget-object v4, p0, Lco/vine/android/views/HorizontalListView$Recycler;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
const/4 v5, 0x0
#calls: Lco/vine/android/views/HorizontalListView;->removeDetachedView(Landroid/view/View;Z)V
invoke-static {v4, v3, v5}, Lco/vine/android/views/HorizontalListView;->access$700(Lco/vine/android/views/HorizontalListView;Landroid/view/View;Z)V
add-int/lit8 v0, v0, -0x1
goto :goto_8
:cond_19
return-void
.end method
.method public fillActiveViews(II)V
.registers 6
iget-object v0, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
if-eqz v0, :cond_7
array-length v2, v0
if-ge v2, p2, :cond_d
:cond_7
new-array v2, p2, [Landroid/view/View;
iput-object v2, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
iget-object v0, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
:cond_d
iput p1, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mFirstActivePos:I
const/4 v1, 0x0
:goto_10
if-ge v1, p2, :cond_1d
iget-object v2, p0, Lco/vine/android/views/HorizontalListView$Recycler;->this$0:Lco/vine/android/views/HorizontalListView;
invoke-virtual {v2, v1}, Lco/vine/android/views/HorizontalListView;->getChildAt(I)Landroid/view/View;
move-result-object v2
aput-object v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_10
:cond_1d
return-void
.end method
.method public getActiveView(I)Landroid/view/View;
.registers 7
const/4 v3, 0x0
iget-object v4, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
if-eqz v4, :cond_15
iget v4, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mFirstActivePos:I
sub-int v1, p1, v4
iget-object v0, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
if-ltz v1, :cond_15
array-length v4, v0
if-ge v1, v4, :cond_15
aget-object v2, v0, v1
aput-object v3, v0, v1
:goto_14
return-object v2
:cond_15
move-object v2, v3
goto :goto_14
.end method
.method public recycleActiveViews()V
.registers 8
iget-object v0, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mActiveViews:[Landroid/view/View;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v4, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
array-length v1, v0
add-int/lit8 v2, v1, -0x1
:goto_a
if-ltz v2, :cond_24
aget-object v5, v0, v2
if-eqz v5, :cond_21
invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v3
check-cast v3, Lco/vine/android/views/HorizontalListView$LayoutParams;
const/4 v6, 0x0
aput-object v6, v0, v2
iget v6, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mFirstActivePos:I
add-int/2addr v6, v2
iput v6, v3, Lco/vine/android/views/HorizontalListView$LayoutParams;->recycledPosition:I
invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_21
add-int/lit8 v2, v2, -0x1
goto :goto_a
:cond_24
invoke-direct {p0}, Lco/vine/android/views/HorizontalListView$Recycler;->pruneRecycleViews()V
goto :goto_4
.end method
.method public removeRecycleView(I)Landroid/view/View;
.registers 7
iget-object v1, p0, Lco/vine/android/views/HorizontalListView$Recycler;->mRecycleViews:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v4
if-eqz v4, :cond_a
const/4 v3, 0x0
:goto_9
return-object v3
:cond_a
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v0, 0x0
:goto_f
if-ge v0, v2, :cond_28
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
check-cast v4, Lco/vine/android/views/HorizontalListView$LayoutParams;
iget v4, v4, Lco/vine/android/views/HorizontalListView$LayoutParams;->recycledPosition:I
if-ne v4, p1, :cond_25
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
goto :goto_9
:cond_25
add-int/lit8 v0, v0, 0x1
goto :goto_f
:cond_28
add-int/lit8 v4, v2, -0x1
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/view/View;
move-object v3, v4
goto :goto_9
.end method