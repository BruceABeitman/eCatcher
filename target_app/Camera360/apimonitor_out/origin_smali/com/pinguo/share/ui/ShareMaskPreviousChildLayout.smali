.class public Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;
.super Landroid/widget/LinearLayout;
.source "ShareMaskPreviousChildLayout.java"


# instance fields
.field private mMaskWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x4190

    invoke-static {v0, v1}, Lcom/pinguo/share/util/ShareModuleUtil;->dpToPixel(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->mMaskWidth:I

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->isInEditMode()Z

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 14

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getChildCount()I

    move-result v1

    const/4 v5, 0x0

    :goto_6
    if-lt v5, v1, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v5}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getChildAt(I)Landroid/view/View;

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

    iget v6, p0, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->mMaskWidth:I

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
    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_30

    add-int/lit8 v6, v4, -0x1

    iget v7, p0, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->mMaskWidth:I

    mul-int/2addr v6, v7

    add-int/2addr v6, v3

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getMeasuredWidth()I

    move-result v6

    add-int/lit8 v7, v4, -0x1

    iget v8, p0, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->mMaskWidth:I

    mul-int/2addr v7, v8

    sub-int v5, v6, v7

    invoke-virtual {p0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getMeasuredHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->setMeasuredDimension(II)V

    return-void

    :cond_30
    invoke-virtual {p0, v0}, Lcom/pinguo/share/ui/ShareMaskPreviousChildLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_3c

    add-int/lit8 v4, v4, 0x1

    :cond_3c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method
