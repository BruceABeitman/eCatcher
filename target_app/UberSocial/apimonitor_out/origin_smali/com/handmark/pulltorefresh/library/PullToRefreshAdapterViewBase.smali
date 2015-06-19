.class public abstract Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private o:Z

.field private p:Landroid/widget/AbsListView$OnScrollListener;

.field private q:Lcom/handmark/pulltorefresh/library/h;

.field private r:Landroid/view/View;

.field private s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

.field private u:Z

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private static a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_12

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_13

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_12
    :goto_12
    return-object v0

    :cond_13
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_12
.end method

.method private getShowIndicatorInternal()Z
    .registers 2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private q()V
    .registers 8

    const/4 v6, 0x0

    const/4 v5, -0x2

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getMode()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_6d

    new-instance v2, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    invoke-direct {v2, v3, v4}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/handmark/pulltorefresh/library/ab;->indicator_right_padding:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v3, 0x35

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v2

    if-eqz v2, :cond_7f

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-nez v2, :cond_7f

    new-instance v0, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/handmark/pulltorefresh/library/g;->c:Lcom/handmark/pulltorefresh/library/g;

    invoke-direct {v0, v2, v3}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/handmark/pulltorefresh/library/ab;->indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6c
    :goto_6c
    return-void

    :cond_6d
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->c()Z

    move-result v2

    if-nez v2, :cond_3b

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_3b

    :cond_7f
    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/g;->d()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    goto :goto_6c
.end method

.method private r()Z
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v1

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gt v0, v1, :cond_3a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getTop()I

    move-result v0

    if-lt v3, v0, :cond_38

    move v0, v1

    goto :goto_13

    :cond_38
    move v0, v2

    goto :goto_13

    :cond_3a
    move v0, v2

    goto :goto_13
.end method

.method private s()Z
    .registers 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    move v0, v1

    :goto_13
    return v0

    :cond_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v4

    add-int/lit8 v0, v3, -0x1

    if-lt v4, v0, :cond_50

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v3, v4, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getBottom()I

    move-result v0

    if-gt v3, v0, :cond_4e

    move v0, v1

    goto :goto_13

    :cond_4e
    move v0, v2

    goto :goto_13

    :cond_50
    move v0, v2

    goto :goto_13
.end method

.method private t()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    :cond_10
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iput-object v2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    :cond_1f
    return-void
.end method

.method private u()V
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->k()Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    :cond_1d
    :goto_1d
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    if-eqz v0, :cond_3a

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->d()Z

    move-result v0

    if-nez v0, :cond_49

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->l()Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->show()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_1d

    :cond_49
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->hide()V

    goto :goto_3a
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;)V
    .registers 4

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->c()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u:Z

    return-void

    :cond_f
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected a(Z)V
    .registers 3

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Z)V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u()V

    :cond_c
    return-void
.end method

.method public getShowIndicator()Z
    .registers 2

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u:Z

    return v0
.end method

.method protected h()V
    .registers 3

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->h()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_18

    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_18

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected i()V
    .registers 3

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->i()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase$1;->a:[I

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getCurrentMode()Lcom/handmark/pulltorefresh/library/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_26

    :cond_18
    :goto_18
    return-void

    :pswitch_19
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_18

    :pswitch_1f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s:Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_18

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_19
        :pswitch_1f
    .end packed-switch
.end method

.method protected j()V
    .registers 2

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->j()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u()V

    :cond_c
    return-void
.end method

.method protected k()Z
    .registers 2

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->r()Z

    move-result v0

    return v0
.end method

.method protected l()Z
    .registers 2

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->s()Z

    move-result v0

    return v0
.end method

.method protected m()V
    .registers 2

    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->m()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q()V

    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t()V

    goto :goto_c
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q:Lcom/handmark/pulltorefresh/library/h;

    if-eqz v0, :cond_f

    if-lez p4, :cond_22

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_d
    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->o:Z

    :cond_f
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u()V

    :cond_18
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_21
    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onScrollChanged(IIII)V
    .registers 8

    invoke-super {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    neg-int v1, p1

    neg-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_12
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4

    if-nez p2, :cond_f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q:Lcom/handmark/pulltorefresh/library/h;

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->o:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q:Lcom/handmark/pulltorefresh/library/h;

    invoke-interface {v0}, Lcom/handmark/pulltorefresh/library/h;->a()V

    :cond_f
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_18
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .registers 5

    invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz p1, :cond_26

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_19

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_19

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_19
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    instance-of v0, v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;

    invoke-interface {v0, p1}, Lcom/handmark/pulltorefresh/library/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    :goto_33
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->r:Landroid/view/View;

    return-void

    :cond_36
    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_26

    :cond_3a
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    goto :goto_33
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->n:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/h;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q:Lcom/handmark/pulltorefresh/library/h;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->p:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->v:Z

    return-void
.end method

.method public setShowIndicator(Z)V
    .registers 3

    iput-boolean p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->u:Z

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->q()V

    :goto_b
    return-void

    :cond_c
    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshAdapterViewBase;->t()V

    goto :goto_b
.end method
