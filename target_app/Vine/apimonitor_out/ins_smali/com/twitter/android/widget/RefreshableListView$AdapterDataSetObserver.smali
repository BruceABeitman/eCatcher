.class  Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "RefreshableListView.java"
.field private final mObservers:Ljava/util/ArrayList;
.field final synthetic this$0:Lcom/twitter/android/widget/RefreshableListView;
.method public constructor <init>(Lcom/twitter/android/widget/RefreshableListView;)V
.registers 3
iput-object p1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
return-void
.end method
.method public onChanged()V
.registers 4
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->updateItemCount()V
iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
monitor-enter v2
:try_start_8
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_10
if-ltz v0, :cond_20
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/DataSetObserver;
invoke-virtual {v1}, Landroid/database/DataSetObserver;->onChanged()V
add-int/lit8 v0, v0, -0x1
goto :goto_10
:cond_20
monitor-exit v2
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_27
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->requestLayout()V
return-void
:catchall_27
move-exception v1
:try_start_28
monitor-exit v2
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_27
throw v1
.end method
.method public onInvalidated()V
.registers 4
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;
const/4 v2, 0x0
iput v2, v1, Lcom/twitter/android/widget/RefreshableListView;->mItemCount:I
iget-object v2, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
monitor-enter v2
:try_start_8
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/lit8 v0, v1, -0x1
:goto_10
if-ltz v0, :cond_20
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/database/DataSetObserver;
invoke-virtual {v1}, Landroid/database/DataSetObserver;->onInvalidated()V
add-int/lit8 v0, v0, -0x1
goto :goto_10
:cond_20
monitor-exit v2
:try_end_21
.catchall {:try_start_8 .. :try_end_21} :catchall_27
iget-object v1, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->this$0:Lcom/twitter/android/widget/RefreshableListView;
invoke-virtual {v1}, Lcom/twitter/android/widget/RefreshableListView;->requestLayout()V
return-void
:catchall_27
move-exception v1
:try_start_28
monitor-exit v2
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_27
throw v1
.end method
.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
.registers 3
iget-object v0, p0, Lcom/twitter/android/widget/RefreshableListView$AdapterDataSetObserver;->mObservers:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
return-void
.end method