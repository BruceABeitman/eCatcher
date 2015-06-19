.class public Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;
.super Landroid/view/ViewGroup;
.source "CameraMenuBarPopupView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraMenuBarPopupView"


# instance fields
.field private mAlignCenter:Z

.field private mAncorTopPoint:Landroid/graphics/Point;

.field private mAncorView:Landroid/widget/ImageView;

.field private mContentTopPoint:Landroid/graphics/Point;

.field private mContentView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAlignCenter:Z

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAlignCenter:Z

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAlignCenter:Z

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method private initCustomedChilds(Landroid/content/Context;)V
    .registers 5

    const/4 v2, -0x2

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    if-nez v1, :cond_1e

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    const v2, 0x7f0202ba

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1e
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .registers 16

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    if-nez v8, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    iget v3, v8, Landroid/graphics/Point;->y:I

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int v0, v3, v8

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int v1, v8, v9

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    add-int v2, v1, v8

    move v7, v0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v4, v7, v8

    iget-boolean v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAlignCenter:Z

    if-eqz v8, :cond_67

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v1, v8

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v5, v8, v9

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int v6, v5, v8

    :goto_5c
    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_8

    :cond_67
    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    iget v6, v8, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int v5, v6, v8

    goto :goto_5c
.end method

.method protected onMeasure(II)V
    .registers 15

    const/high16 v11, 0x4000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    if-eqz v8, :cond_16

    if-nez v4, :cond_1f

    :cond_16
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "\u4e0d\u5408\u6cd5\u7684MeasureSpec mode"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_1f
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    :goto_24
    if-lt v6, v3, :cond_2d

    invoke-virtual {p0, v9, v5}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->setMeasuredDimension(II)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_2d
    invoke-virtual {p0, v6}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v10, 0x1

    if-ne v6, v10, :cond_36

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentView:Landroid/view/View;

    :cond_36
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v10, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_24
.end method

.method public redraw()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->requestLayout()V

    return-void
.end method

.method public setAlign(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAlignCenter:Z

    return-void
.end method

.method public setAncorTopPoint(Landroid/graphics/Point;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mAncorTopPoint:Landroid/graphics/Point;

    return-void
.end method

.method public setContentTopPoint(Landroid/graphics/Point;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraMenuBarPopupView;->mContentTopPoint:Landroid/graphics/Point;

    return-void
.end method
