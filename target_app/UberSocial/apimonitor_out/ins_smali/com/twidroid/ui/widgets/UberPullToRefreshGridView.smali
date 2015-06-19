.class public Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;
.source "SourceFile"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->q()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->q()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->q()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshGridView;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
invoke-direct {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->q()V
return-void
.end method
.method private q()V
.registers 2
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->setDisableScrollingWhileRefreshing(Z)V
return-void
.end method
.method public getFirstVisiblePosition()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I
move-result v0
return v0
.end method
.method public getLastVisiblePosition()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
invoke-virtual {v0}, Landroid/widget/GridView;->getLastVisiblePosition()I
move-result v0
return v0
.end method
.method public setNumColumns(I)V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
invoke-virtual {v0, p1}, Landroid/widget/GridView;->setNumColumns(I)V
return-void
.end method
.method public setSelection(I)V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/ui/widgets/UberPullToRefreshGridView;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/GridView;
invoke-virtual {v0, p1}, Landroid/widget/GridView;->setSelection(I)V
return-void
.end method