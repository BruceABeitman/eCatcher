.class public Lcom/handmark/pulltorefresh/library/u;
.super Landroid/widget/ListView;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.field private b:Z
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-direct {p0, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/u;->b:Z
return-void
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 3
:try_start_0
invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V
:goto_3
:try_end_3
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
goto :goto_3
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
:try_start_0
invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
:try_end_3
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_3} :catch_5
move-result v0
:goto_4
return v0
:catch_5
move-exception v0
invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V
const/4 v0, 0x0
goto :goto_4
.end method
.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
.registers 2
check-cast p1, Landroid/widget/ListAdapter;
invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/u;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setAdapter(Landroid/widget/ListAdapter;)V
.registers 5
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
move-result-object v0
if-eqz v0, :cond_1a
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/u;->b:Z
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
invoke-virtual {p0, v0, v1, v2}, Lcom/handmark/pulltorefresh/library/u;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/u;->b:Z
:cond_1a
invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public setEmptyView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/u;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setEmptyView(Landroid/view/View;)V
return-void
.end method
.method public setEmptyViewInternal(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
return-void
.end method