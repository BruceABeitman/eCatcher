.class final Lcom/devsmart/android/ui/HorizontalListView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Lcom/devsmart/android/ui/HorizontalListView;
.method constructor <init>(Lcom/devsmart/android/ui/HorizontalListView;)V
.registers 2
iput-object p1, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public final onChanged()V
.registers 3
iget-object v1, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->a(Lcom/devsmart/android/ui/HorizontalListView;)Z
monitor-exit v1
:try_end_9
.catchall {:try_start_3 .. :try_end_9} :catchall_14
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->invalidate()V
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V
return-void
:catchall_14
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final onInvalidated()V
.registers 2
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-static {v0}, Lcom/devsmart/android/ui/HorizontalListView;->b(Lcom/devsmart/android/ui/HorizontalListView;)V
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->invalidate()V
iget-object v0, p0, Lcom/devsmart/android/ui/HorizontalListView$1;->a:Lcom/devsmart/android/ui/HorizontalListView;
invoke-virtual {v0}, Lcom/devsmart/android/ui/HorizontalListView;->requestLayout()V
return-void
.end method