.class final Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;
.super Landroid/widget/HorizontalScrollView;
.source "PullToRefreshHorizontalScrollView.java"
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
invoke-direct {p0, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method private getScrollRange()I
.registers 7
const/4 v5, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildCount()I
move-result v2
if-lez v2, :cond_23
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getChildAt(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingLeft()I
move-result v4
sub-int/2addr v3, v4
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getPaddingRight()I
move-result v4
sub-int/2addr v3, v4
sub-int/2addr v2, v3
invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I
move-result v1
:cond_23
return v1
.end method
.method protected overScrollBy(IIIIIIIIZ)Z
.registers 18
invoke-super/range {p0 .. p9}, Landroid/widget/HorizontalScrollView;->overScrollBy(IIIIIIIIZ)Z
move-result v7
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView$InternalHorizontalScrollViewSDK9;->getScrollRange()I
move-result v5
move v1, p1
move v2, p3
move v3, p2
move v4, p4
move/from16 v6, p9
invoke-static/range {v0 .. v6}, Lcom/handmark/pulltorefresh/library/OverscrollHelper;->overScrollBy(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIIIIZ)V
return v7
.end method