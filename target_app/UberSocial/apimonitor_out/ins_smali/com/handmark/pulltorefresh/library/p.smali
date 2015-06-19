.class  Lcom/handmark/pulltorefresh/library/p;
.super Landroid/widget/ExpandableListView;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/p;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
invoke-direct {p0, p2, p3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public setEmptyView(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/p;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;
invoke-virtual {v0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshExpandableListView;->setEmptyView(Landroid/view/View;)V
return-void
.end method
.method public setEmptyViewInternal(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/ExpandableListView;->setEmptyView(Landroid/view/View;)V
return-void
.end method