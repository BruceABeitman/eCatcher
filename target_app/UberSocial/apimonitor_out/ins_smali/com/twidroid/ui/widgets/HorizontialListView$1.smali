.class  Lcom/twidroid/ui/widgets/HorizontialListView$1;
.super Landroid/database/DataSetObserver;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/ui/widgets/HorizontialListView;
.method constructor <init>(Lcom/twidroid/ui/widgets/HorizontialListView;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V
return-void
.end method
.method public onChanged()V
.registers 4
iget-object v1, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
const/4 v2, 0x1
invoke-static {v0, v2}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Lcom/twidroid/ui/widgets/HorizontialListView;Z)Z
monitor-exit v1
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_15
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->invalidate()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
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
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-static {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->a(Lcom/twidroid/ui/widgets/HorizontialListView;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->invalidate()V
iget-object v0, p0, Lcom/twidroid/ui/widgets/HorizontialListView$1;->a:Lcom/twidroid/ui/widgets/HorizontialListView;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/HorizontialListView;->requestLayout()V
return-void
.end method