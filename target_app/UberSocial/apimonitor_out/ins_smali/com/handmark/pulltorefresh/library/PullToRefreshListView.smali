.class public Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.source "SourceFile"
.field private o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.field private q:Landroid/widget/FrameLayout;
.field private r:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
return-void
.end method
.method static synthetic a(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;)Landroid/widget/FrameLayout;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q:Landroid/widget/FrameLayout;
return-object v0
.end method
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
move-result-object v0
return-object v0
.end method
.method protected a(Landroid/content/res/TypedArray;)V
.registers 9
const/16 v6, 0x8
const/4 v5, 0x1
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Landroid/content/res/TypedArray;)V
const/16 v0, 0xe
invoke-virtual {p1, v0, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r:Z
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r:Z
if-eqz v0, :cond_6f
new-instance v1, Landroid/widget/FrameLayout$LayoutParams;
const/4 v0, -0x1
const/4 v2, -0x2
invoke-direct {v1, v0, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
new-instance v2, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v3, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {p0, v0, v3, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
const/4 v3, 0x0
const/4 v4, 0x0
invoke-virtual {v0, v2, v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
new-instance v0, Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q:Landroid/widget/FrameLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v2, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {p0, v0, v2, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Landroid/content/res/TypedArray;)Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v6}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->q:Landroid/widget/FrameLayout;
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
const/16 v0, 0xd
invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z
move-result v0
if-nez v0, :cond_6f
invoke-virtual {p0, v5}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setScrollingWhileRefreshingEnabled(Z)V
:cond_6f
return-void
.end method
.method protected a(Z)V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;
move-result-object v0
iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r:Z
if-eqz v1, :cond_1b
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getShowViewWhileRefreshing()Z
move-result v1
if-eqz v1, :cond_1b
if-eqz v0, :cond_1b
invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z
move-result v0
if-eqz v0, :cond_1f
:cond_1b
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V
:goto_1e
:cond_1e
return-void
:cond_1f
invoke-super {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Z)V
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/g;
move-result-object v1
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_86
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v4
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I
move-result v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I
move-result v5
add-int/2addr v0, v5
move-object v5, v4
move-object v4, v3
move-object v3, v1
move v1, v2
:goto_46
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->reset()V
invoke-virtual {v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->hideAllViews()V
const/16 v5, 0x8
invoke-virtual {v3, v5}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
invoke-virtual {v4, v2}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->refreshing()V
if-eqz p1, :cond_1e
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o()V
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
invoke-virtual {p0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(I)V
goto :goto_1e
:pswitch_6a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v5
iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I
move-result v0
add-int/lit8 v1, v0, -0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getScrollY()I
move-result v0
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I
move-result v6
sub-int/2addr v0, v6
goto :goto_46
:pswitch_data_86
.packed-switch 0x1
:pswitch_6a
:pswitch_6a
.end packed-switch
.end method
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
.registers 5
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x9
if-lt v0, v1, :cond_c
new-instance v0, Lcom/handmark/pulltorefresh/library/v;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/v;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
:goto_b
return-object v0
:cond_c
new-instance v0, Lcom/handmark/pulltorefresh/library/u;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/u;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V
goto :goto_b
.end method
.method protected b(ZZ)Lcom/handmark/pulltorefresh/library/d;
.registers 6
invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b(ZZ)Lcom/handmark/pulltorefresh/library/d;
move-result-object v0
iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r:Z
if-eqz v1, :cond_26
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getMode()Lcom/handmark/pulltorefresh/library/g;
move-result-object v1
if-eqz p1, :cond_19
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->c()Z
move-result v2
if-eqz v2, :cond_19
iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/d;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_19
if-eqz p2, :cond_26
invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->d()Z
move-result v1
if-eqz v1, :cond_26
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/d;->a(Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;)V
:cond_26
return-object v0
.end method
.method protected c(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
.registers 5
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
move-result-object v0
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V
return-object v0
.end method
.method public c(Lcom/handmark/pulltorefresh/library/g;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->a(Lcom/handmark/pulltorefresh/library/g;)V
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I
invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
:cond_e
:goto_e
return-void
:pswitch_f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V
:cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V
goto :goto_e
:pswitch_22
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V
goto :goto_e
:pswitch_2c
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->enableAnimation()V
goto :goto_e
:pswitch_data_36
.packed-switch 0x2
:pswitch_2c
:pswitch_22
:pswitch_f
.end packed-switch
.end method
.method public d(Lcom/handmark/pulltorefresh/library/g;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->b(Lcom/handmark/pulltorefresh/library/g;)V
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I
invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_36
:cond_e
:goto_e
return-void
:pswitch_f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V
:cond_18
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V
goto :goto_e
:pswitch_22
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V
goto :goto_e
:pswitch_2c
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->disableAnimation()V
goto :goto_e
:pswitch_data_36
.packed-switch 0x2
:pswitch_2c
:pswitch_22
:pswitch_f
.end packed-switch
.end method
.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;
return-object v0
.end method
.method protected j()V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->r:Z
if-nez v0, :cond_a
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->j()V
:goto_9
return-void
:cond_a
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView$1;->a:[I
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getCurrentMode()Lcom/handmark/pulltorefresh/library/g;
move-result-object v3
invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I
move-result v3
aget v0, v0, v3
packed-switch v0, :pswitch_data_8a
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v5
iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->o:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getHeaderSize()I
move-result v0
neg-int v3, v0
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v0
sub-int/2addr v0, v2
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
if-gt v0, v1, :cond_88
:goto_33
move v0, v1
move v1, v3
move-object v3, v4
move-object v4, v5
:goto_37
invoke-virtual {v3}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->getVisibility()I
move-result v5
if-nez v5, :cond_59
invoke-virtual {v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->showInvisibleViews()V
const/16 v4, 0x8
invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;->setVisibility(I)V
if-eqz v0, :cond_59
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getState()Lcom/handmark/pulltorefresh/library/o;
move-result-object v0
sget-object v3, Lcom/handmark/pulltorefresh/library/o;->e:Lcom/handmark/pulltorefresh/library/o;
if-eq v0, v3, :cond_59
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V
invoke-virtual {p0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setHeaderScroll(I)V
:cond_59
invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->j()V
goto :goto_9
:pswitch_5d
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterLayout()Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
move-result-object v6
iget-object v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->p:Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I
move-result v0
add-int/lit8 v3, v0, -0x1
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getFooterSize()I
move-result v4
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->n:Landroid/view/View;
check-cast v0, Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
sub-int/2addr v0, v3
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
if-gt v0, v1, :cond_86
move v0, v1
:goto_81
move v2, v3
move v1, v4
move-object v3, v5
move-object v4, v6
goto :goto_37
:cond_86
move v0, v2
goto :goto_81
:cond_88
move v1, v2
goto :goto_33
:pswitch_data_8a
.packed-switch 0x1
:pswitch_5d
:pswitch_5d
.end packed-switch
.end method