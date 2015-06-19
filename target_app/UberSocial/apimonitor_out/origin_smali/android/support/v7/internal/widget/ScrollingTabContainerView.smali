.class public Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/q;


# static fields
.field private static final d:Ljava/lang/String; = "ScrollingTabContainerView"


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private e:Landroid/support/v7/internal/widget/af;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/support/v7/internal/widget/ag;

.field private h:Z

.field private final i:Landroid/view/LayoutInflater;

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:Landroid/view/LayoutInflater;

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/k;->abc_action_bar_tabbar:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private b(Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .registers 8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/k;->abc_action_bar_tab:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/d;Z)V

    if-eqz p2, :cond_22

    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_21
    return-object v0

    :cond_22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/af;

    if-nez v1, :cond_31

    new-instance v1, Landroid/support/v7/internal/widget/af;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/af;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/af;

    :cond_31
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/af;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_21
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c()V
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-nez v0, :cond_12

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e()Landroid/support/v7/internal/widget/ag;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    :cond_12
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-nez v0, :cond_35

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    new-instance v1, Landroid/support/v7/internal/widget/ae;

    invoke-direct {v1, p0, v4}, Landroid/support/v7/internal/widget/ae;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_35
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    :cond_40
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    iget v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->k:I

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    goto :goto_7
.end method

.method private d()Z
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v4

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->j()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_7
.end method

.method private e()Landroid/support/v7/internal/widget/ag;
    .registers 5

    new-instance v0, Landroid/support/v7/internal/widget/ag;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Landroid/support/v7/a/d;->actionDropDownStyle:I

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v7/internal/widget/ag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ag;->b(Landroid/support/v7/internal/widget/q;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->notifyDataSetChanged()V

    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1b
    return-void
.end method

.method public a(I)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_f
    new-instance v1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Landroid/support/v7/app/d;IZ)V
    .registers 10

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->notifyDataSetChanged()V

    :cond_21
    if-eqz p3, :cond_27

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_27
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2e
    return-void
.end method

.method public a(Landroid/support/v7/app/d;Z)V
    .registers 9

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b(Landroid/support/v7/app/d;Z)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f80

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_21

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->notifyDataSetChanged()V

    :cond_21
    if-eqz p2, :cond_27

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_27
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v0, :cond_2e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2e
    return-void
.end method

.method public a(Landroid/support/v7/internal/widget/n;Landroid/view/View;IJ)V
    .registers 7

    check-cast p2, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p2}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/support/v7/app/d;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/d;->f()V

    return-void
.end method

.method public b(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->notifyDataSetChanged()V

    :cond_1a
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_21
    return-void
.end method

.method public c(I)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_14

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ag;->d()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ae;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ae;->notifyDataSetChanged()V

    :cond_14
    iget-boolean v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1b
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->e()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->g()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public onMeasure(II)V
    .registers 10

    const/high16 v6, 0x4000

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v6, :cond_6c

    move v0, v1

    :goto_b
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_77

    if-eq v3, v6, :cond_1c

    const/high16 v5, -0x8000

    if-ne v3, v5, :cond_77

    :cond_1c
    const/4 v3, 0x2

    if-le v4, v3, :cond_6e

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_2b
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_35
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    if-nez v0, :cond_7b

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    if-eqz v4, :cond_7b

    :goto_41
    if-eqz v1, :cond_81

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    if-le v1, v2, :cond_7d

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c()V

    :goto_57
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_6b

    if-eq v1, v2, :cond_6b

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->k:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_6b
    return-void

    :cond_6c
    move v0, v2

    goto :goto_b

    :cond_6e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto :goto_2b

    :cond_77
    const/4 v3, -0x1

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto :goto_35

    :cond_7b
    move v1, v2

    goto :goto_41

    :cond_7d
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d()Z

    goto :goto_57

    :cond_81
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d()Z

    goto :goto_57
.end method

.method public setAllowCollapse(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:Z

    return-void
.end method

.method public setContentHeight(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->j:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .registers 7

    const/4 v1, 0x0

    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->k:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_23

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_21

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_1d

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    :cond_1d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_21
    move v0, v1

    goto :goto_15

    :cond_23
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    if-eqz v0, :cond_2e

    if-ltz p1, :cond_2e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/support/v7/internal/widget/ag;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ag;->a(I)V

    :cond_2e
    return-void
.end method
