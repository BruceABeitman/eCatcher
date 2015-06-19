.class public Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshScrollView.java"
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
return-void
.end method
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
move-result-object v0
return-object v0
.end method
.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ScrollView;
.registers 6
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v1, v2, :cond_11
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView$InternalScrollViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
:goto_b
sget v1, Lcom/handmark/pulltorefresh/library/R$id;->scrollview:I
invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setId(I)V
return-object v0
:cond_11
new-instance v0, Landroid/widget/ScrollView;
invoke-direct {v0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto :goto_b
.end method
.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
return-object v0
.end method
.method protected isReadyForPullEnd()Z
.registers 6
const/4 v2, 0x0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/widget/ScrollView;
invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_22
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/widget/ScrollView;
invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I
move-result v1
invoke-virtual {v0}, Landroid/view/View;->getHeight()I
move-result v3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->getHeight()I
move-result v4
sub-int/2addr v3, v4
if-lt v1, v3, :cond_20
const/4 v1, 0x1
:goto_1f
return v1
:cond_20
move v1, v2
goto :goto_1f
:cond_22
move v1, v2
goto :goto_1f
.end method
.method protected isReadyForPullStart()Z
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshScrollView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/widget/ScrollView;
invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method