.class public Lcom/instagram/camera/SquarePreviewFrameLayout;
.super Landroid/widget/RelativeLayout;
.source "SquarePreviewFrameLayout.java"


# instance fields
.field private a:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 12

    const/high16 v8, 0x4000

    const-wide/high16 v6, 0x3fe0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v4, v0, v2

    sub-int/2addr v1, v3

    if-ge v4, v1, :cond_43

    add-int v0, v4, v2

    int-to-double v1, v4

    iget-wide v4, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->a:D

    div-double/2addr v1, v4

    add-double/2addr v1, v6

    double-to-int v1, v1

    add-int/2addr v1, v3

    :goto_2c
    invoke-static {v0, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-super {p0, v0, v1}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/camera/SquarePreviewFrameLayout;->setMeasuredDimension(II)V

    return-void

    :cond_43
    add-int v0, v1, v2

    int-to-double v1, v1

    iget-wide v4, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->a:D

    div-double/2addr v1, v4

    add-double/2addr v1, v6

    double-to-int v1, v1

    add-int/2addr v1, v3

    goto :goto_2c
.end method

.method public setAspectRatio(D)V
    .registers 5

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_c
    iget-wide v0, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->a:D

    cmpl-double v0, v0, p1

    if-eqz v0, :cond_17

    iput-wide p1, p0, Lcom/instagram/camera/SquarePreviewFrameLayout;->a:D

    invoke-virtual {p0}, Lcom/instagram/camera/SquarePreviewFrameLayout;->requestLayout()V

    :cond_17
    return-void
.end method
