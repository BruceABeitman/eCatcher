.class public Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "SourceFile"
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
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
return-void
.end method
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
move-result-object v0
return-object v0
.end method
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/HorizontalScrollView;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_11
new-instance v0, Lcom/handmark/pulltorefresh/library/t;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/t;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;Landroid/content/Context;Landroid/util/AttributeSet;)V
:goto_b
sget v1, Lcom/handmark/pulltorefresh/library/ad;->scrollview:I
invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->setId(I)V
return-object v0
:cond_11
new-instance v0, Landroid/widget/HorizontalScrollView;
invoke-direct {v0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto :goto_b
.end method
.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;
return-object v0
.end method
.method protected k()Z
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/HorizontalScrollView;
invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method protected l()Z
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/HorizontalScrollView;
invoke-virtual {v0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;
move-result-object v2
if-eqz v2, :cond_22
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/HorizontalScrollView;
invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I
move-result v0
invoke-virtual {v2}, Landroid/view/View;->getWidth()I
move-result v2
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshHorizontalScrollView;->getWidth()I
move-result v3
sub-int/2addr v2, v3
if-lt v0, v2, :cond_20
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
move v0, v1
goto :goto_1f
:cond_22
move v0, v1
goto :goto_1f
.end method