.class Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:I

.field private d:I

.field private e:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Z)V
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public final b(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    return-void

    :cond_b
    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    if-eqz v0, :cond_1a

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->d:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_17
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1a
    return-void

    :cond_1b
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->e:Landroid/graphics/drawable/Drawable;

    goto :goto_17
.end method

.method protected onFinishInflate()V
    .registers 2

    sget v0, Landroid/support/v7/a/f;->G:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/a/f;->n:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->e:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v1, 0x0

    sub-int v0, p5, p3

    div-int/lit8 v2, v0, 0x2

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_35

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v5, v3, 0x2

    sub-int v5, v2, v5

    iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    add-int/2addr v3, v5

    invoke-virtual {v6, v1, v5, v4, v3}, Landroid/widget/ImageView;->layout(IIII)V

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr p2, v0

    move v1, v0

    :cond_35
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v4

    sub-int v5, p4, p2

    div-int/lit8 v5, v5, 0x2

    iget v6, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v1, v5

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v2, v5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    add-int/2addr v4, v1

    add-int/2addr v3, v0

    invoke-virtual {v2, v1, v0, v4, v3}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 13

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_82

    move v7, v3

    :goto_2b
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v0

    iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    move-object v4, p0

    move v6, p1

    move v8, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    add-int v3, v7, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v2, v4

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sparse-switch v4, :sswitch_data_90

    move v2, v3

    :goto_7a
    :sswitch_7a
    sparse-switch v5, :sswitch_data_9a

    move v0, v1

    :goto_7e
    :sswitch_7e
    invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    return-void

    :cond_82
    iget v7, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->c:I

    goto :goto_2b

    :sswitch_85
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_7a

    :sswitch_8a
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7e

    nop

    :sswitch_data_90
    .sparse-switch
        -0x80000000 -> :sswitch_85
        0x40000000 -> :sswitch_7a
    .end sparse-switch

    :sswitch_data_9a
    .sparse-switch
        -0x80000000 -> :sswitch_8a
        0x40000000 -> :sswitch_7e
    .end sparse-switch
.end method
