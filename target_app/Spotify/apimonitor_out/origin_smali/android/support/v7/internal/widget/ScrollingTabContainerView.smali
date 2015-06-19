.class public final Landroid/support/v7/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/n;


# instance fields
.field a:Ljava/lang/Runnable;

.field b:I

.field c:I

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/support/v7/internal/widget/ab;

.field private f:Z

.field private final g:Landroid/view/LayoutInflater;

.field private h:I

.field private i:I


# direct methods
.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;)Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;
    .registers 6

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->g:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/h;->d:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0, p0, p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/support/v7/app/c;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method static synthetic a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private a(I)V
    .registers 7

    const/4 v1, 0x0

    iput p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    move v2, v1

    :goto_a
    if-ge v2, v3, :cond_3b

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v2, p1, :cond_39

    const/4 v0, 0x1

    :goto_15
    invoke-virtual {v4, v0}, Landroid/view/View;->setSelected(Z)V

    if-eqz v0, :cond_35

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v4, :cond_29

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_29
    new-instance v4, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v4, p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$1;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_35
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a

    :cond_39
    move v0, v1

    goto :goto_15

    :cond_3b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    if-eqz v0, :cond_46

    if-ltz p1, :cond_46

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ab;->a(I)V

    :cond_46
    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ab;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private b()Z
    .registers 6

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v0

    if-nez v0, :cond_8

    :goto_7
    return v4

    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    iget v0, v0, Landroid/support/v7/internal/widget/l;->v:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    goto :goto_7
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    check-cast p1, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView$TabView;->a()Landroid/support/v7/app/c;

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Z

    return-void
.end method

.method public final onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/internal/view/a;->a(Landroid/content/Context;)Landroid/support/v7/internal/view/a;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->d()I

    move-result v1

    iput v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->requestLayout()V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/a;->f()I

    move-result v0

    iput v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_c
    return-void
.end method

.method public final onMeasure(II)V
    .registers 12

    const/4 v8, -0x2

    const/high16 v7, 0x4000

    const/4 v1, 0x1

    const/4 v6, -0x1

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-ne v3, v7, :cond_bf

    move v0, v1

    :goto_d
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-le v4, v1, :cond_cc

    if-eq v3, v7, :cond_1e

    const/high16 v5, -0x8000

    if-ne v3, v5, :cond_cc

    :cond_1e
    const/4 v3, 0x2

    if-le v4, v3, :cond_c2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3ecccccd

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_2d
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    iget v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->c:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    :goto_37
    iget v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->h:I

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    if-nez v0, :cond_d0

    iget-boolean v4, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->f:Z

    if-eqz v4, :cond_d0

    :goto_43
    if-eqz v1, :cond_d7

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-le v1, v4, :cond_d3

    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a()Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    if-nez v1, :cond_78

    new-instance v1, Landroid/support/v7/internal/widget/ab;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Landroid/support/v7/a/c;->e:I

    invoke-direct {v1, v4, v5}, Landroid/support/v7/internal/widget/ab;-><init>(Landroid/content/Context;I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ab;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, p0}, Landroid/support/v7/internal/widget/ab;->b(Landroid/support/v7/internal/widget/n;)V

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    :cond_78
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v4}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    iget-object v1, v1, Landroid/support/v7/internal/widget/AbsSpinnerICS;->a:Landroid/widget/SpinnerAdapter;

    if-nez v1, :cond_97

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    new-instance v4, Landroid/support/v7/internal/widget/aa;

    invoke-direct {v4, p0, v2}, Landroid/support/v7/internal/widget/aa;-><init>(Landroid/support/v7/internal/widget/ScrollingTabContainerView;B)V

    invoke-virtual {v1, v4}, Landroid/support/v7/internal/widget/ab;->a(Landroid/widget/SpinnerAdapter;)V

    :cond_97
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    if-eqz v1, :cond_a3

    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a:Ljava/lang/Runnable;

    :cond_a3
    iget-object v1, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->e:Landroid/support/v7/internal/widget/ab;

    iget v2, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ab;->a(I)V

    :cond_aa
    :goto_aa
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v1

    invoke-super {p0, p1, v3}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v2

    if-eqz v0, :cond_be

    if-eq v1, v2, :cond_be

    iget v0, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->i:I

    invoke-direct {p0, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(I)V

    :cond_be
    return-void

    :cond_bf
    move v0, v2

    goto/16 :goto_d

    :cond_c2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iput v3, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_2d

    :cond_cc
    iput v6, p0, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b:I

    goto/16 :goto_37

    :cond_d0
    move v1, v2

    goto/16 :goto_43

    :cond_d3
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    goto :goto_aa

    :cond_d7
    invoke-direct {p0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->b()Z

    goto :goto_aa
.end method
