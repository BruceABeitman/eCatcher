.class  Lcom/pinguo/camera360/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"
.field final synthetic this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
.method constructor <init>(Lcom/pinguo/camera360/ui/HorizontalListView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
const/4 v2, 0x1
#setter for: Lcom/pinguo/camera360/ui/HorizontalListView;->mDataChanged:Z
invoke-static {v0, v2}, Lcom/pinguo/camera360/ui/HorizontalListView;->access$2(Lcom/pinguo/camera360/ui/HorizontalListView;Z)V
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_15
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->invalidate()V
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->requestLayout()V
return-void
:catchall_15
move-exception v0
:try_start_16
monitor-exit v1
:try_end_17
.catchall {:try_start_16 .. :try_end_17} :catchall_15
throw v0
.end method
.method public onInvalidated()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
#calls: Lcom/pinguo/camera360/ui/HorizontalListView;->reset()V
invoke-static {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->access$3(Lcom/pinguo/camera360/ui/HorizontalListView;)V
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->invalidate()V
iget-object v0, p0, Lcom/pinguo/camera360/ui/HorizontalListView$1;->this$0:Lcom/pinguo/camera360/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HorizontalListView;->requestLayout()V
return-void
.end method