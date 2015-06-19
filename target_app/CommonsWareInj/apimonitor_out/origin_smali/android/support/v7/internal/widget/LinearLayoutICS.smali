.class public Landroid/support/v7/internal/widget/LinearLayoutICS;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutICS.java"


# static fields
.field private static final SHOW_DIVIDER_BEGINNING:I = 0x1

.field private static final SHOW_DIVIDER_END:I = 0x4

.field private static final SHOW_DIVIDER_MIDDLE:I = 0x2

.field private static final SHOW_DIVIDER_NONE:I


# instance fields
.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerHeight:I

.field private final mDividerPadding:I

.field private final mDividerWidth:I

.field private final mShowDividers:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Landroid/support/v7/appcompat/R$styleable;->LinearLayoutICS:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3d

    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    :goto_25
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mShowDividers:I

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerPadding:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_42

    :goto_39
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->setWillNotDraw(Z)V

    return-void

    :cond_3d
    iput v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    iput v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    goto :goto_25

    :cond_42
    move v1, v2

    goto :goto_39
.end method


# virtual methods
.method drawSupportDividersHorizontal(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_2e

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2b

    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, p1, v5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_2e
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    sub-int v4, v5, v6

    :goto_4a
    invoke-virtual {p0, p1, v4}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportVerticalDivider(Landroid/graphics/Canvas;I)V

    :cond_4d
    return-void

    :cond_4e
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    goto :goto_4a
.end method

.method drawSupportDividersVertical(Landroid/graphics/Canvas;)V
    .registers 9

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_2e

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2b

    invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, p1, v5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2e
    invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_4d

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_4e

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    sub-int v0, v5, v6

    :goto_4a
    invoke-virtual {p0, p1, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportHorizontalDivider(Landroid/graphics/Canvas;I)V

    :cond_4d
    return-void

    :cond_4e
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_4a
.end method

.method drawSupportHorizontalDivider(Landroid/graphics/Canvas;I)V
    .registers 7

    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerPadding:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerPadding:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    add-int/2addr v3, p2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method drawSupportVerticalDivider(Landroid/graphics/Canvas;I)V
    .registers 8

    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerPadding:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    add-int/2addr v2, p2

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerPadding:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getSupportDividerWidth()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_d

    iget v4, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mShowDividers:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_b

    :cond_a
    :goto_a
    return v2

    :cond_b
    move v2, v3

    goto :goto_a

    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v4

    if-ne p1, v4, :cond_1b

    iget v4, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mShowDividers:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_a

    move v2, v3

    goto :goto_a

    :cond_1b
    iget v2, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mShowDividers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_38

    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    :goto_24
    if-ltz v1, :cond_33

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_35

    const/4 v0, 0x1

    :cond_33
    move v2, v0

    goto :goto_a

    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_24

    :cond_38
    move v2, v3

    goto :goto_a
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11

    iget-object v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_23

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_36

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_27

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_23
    :goto_23
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void

    :cond_27
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_23

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerHeight:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_23

    :cond_36
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_41

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_23

    :cond_41
    add-int/lit8 v3, v1, -0x1

    if-ne v0, v3, :cond_23

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->hasSupportDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_23

    iget v3, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDividerWidth:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_23
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/widget/LinearLayoutICS;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/LinearLayoutICS;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportDividersVertical(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_10
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/LinearLayoutICS;->drawSupportDividersHorizontal(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method
