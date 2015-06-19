.class public Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;
.super Landroid/widget/LinearLayout;
.source "MaskPreviousChildLayout.java"


# instance fields
.field private mMaskWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const v3, 0x7f0b0027

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v1, 0xa

    iput v1, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_10
    return-void

    :cond_11
    if-eqz p2, :cond_2c

    sget-object v1, LvStudio/Android/Camera360/R$styleable;->MaskPreviousChildLayout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_10

    :cond_2c
    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    goto :goto_10
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_6
    if-lt v5, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v5}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_25

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v6, 0x0

    add-int v7, v3, v4

    invoke-virtual {v0, v3, v6, v7, v2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v3, v4

    iget v6, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    sub-int/2addr v3, v6

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_6
.end method

.method protected onMeasure(II)V
    .registers 12

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_30

    add-int/lit8 v6, v4, -0x1

    iget v7, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getMeasuredWidth()I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    iget v8, p0, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->mMaskWidth:I

    mul-int/2addr v7, v8

    sub-int v5, v6, v7

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->setMeasuredDimension(II)V

    return-void

    :cond_30
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/ui/MaskPreviousChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3c

    add-int/lit8 v4, v4, 0x1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
