.class Landroid/support/v7/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


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
    const/4 v1, 0x1

    return v1
.end method

.method public getLeftOffset()I
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_c

    iget v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    :cond_c
    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    sget v0, Landroid/support/v7/appcompat/R$id;->up:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/appcompat/R$id;->home:I

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 23

    sub-int v14, p5, p3

    div-int/lit8 v12, v14, 0x2

    sub-int v13, p4, p2

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_47

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v14, v7, 0x2

    sub-int v10, v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v15, 0x0

    add-int v16, v10, v7

    move/from16 v0, v16

    invoke-virtual {v14, v15, v10, v11, v0}, Landroid/widget/ImageView;->layout(IIII)V

    iget v14, v8, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v11

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v9, v14, v15

    sub-int/2addr v13, v9

    add-int p2, p2, v9

    :cond_47
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v6

    sub-int v14, p4, p2

    div-int/lit8 v1, v14, 0x2

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    div-int/lit8 v15, v6, 0x2

    sub-int v15, v1, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    add-int v3, v9, v14

    iget v14, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v15, v2, 0x2

    sub-int v15, v12, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    add-int v15, v3, v6

    add-int v16, v5, v2

    move/from16 v0, v16

    invoke-virtual {v14, v3, v5, v15, v0}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_80

    const/4 v3, 0x0

    :goto_2b
    iget v0, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v6, v0, v1

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    iget v0, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    sparse-switch v11, :sswitch_data_92

    :goto_79
    sparse-switch v7, :sswitch_data_9c

    :goto_7c
    invoke-virtual {p0, v3, v6}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    return-void

    :cond_80
    iget v3, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    goto :goto_2b

    :sswitch_83
    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_79

    :sswitch_88
    move v3, v12

    goto :goto_79

    :sswitch_8a
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_7c

    :sswitch_8f
    move v6, v8

    goto :goto_7c

    nop

    :sswitch_data_92
    .sparse-switch
        -0x80000000 -> :sswitch_83
        0x40000000 -> :sswitch_88
    .end sparse-switch

    :sswitch_data_9c
    .sparse-switch
        -0x80000000 -> :sswitch_8a
        0x40000000 -> :sswitch_8f
    .end sparse-switch
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setUp(Z)V
    .registers 4

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setUpIndicator(I)V
    .registers 4

    iput p1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_e
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_12
    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_e
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    return-void

    :cond_b
    iget-object p1, p0, Landroid/support/v7/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method
