.class public Lcom/pinguo/camera360/camera/view/BubbleView;
.super Landroid/view/ViewGroup;
.source "BubbleView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleView"


# instance fields
.field private mAncorView:Landroid/widget/ImageView;

.field private mContentView:Landroid/view/View;

.field private mOrientation:F

.field private mTop:Z

.field private marginRight:F

.field private pivotYValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mOrientation:F

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->pivotYValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/BubbleView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    const/high16 v1, 0x42b4

    iput v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mOrientation:F

    const v1, 0x3da3d70a

    iput v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->pivotYValue:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    sget-object v1, LvStudio/Android/Camera360/R$styleable;->BubbleView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    if-eqz v0, :cond_29

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_29
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/BubbleView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mOrientation:F

    const v0, 0x3da3d70a

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->pivotYValue:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/BubbleView;->initCustomedChilds(Landroid/content/Context;)V

    return-void
.end method

.method private initCustomedChilds(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    if-eqz v0, :cond_28

    const-string/jumbo v0, "BubbleView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "initCustomedChilds "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    const v1, 0x7f0202bd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_28
    :goto_28
    return-void

    :cond_29
    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    const v1, 0x7f0202cb

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_28
.end method


# virtual methods
.method public getPivotYValue()F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->pivotYValue:F

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 19

    iget v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-lez v8, :cond_f

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    if-nez v8, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    sub-float/2addr v8, v9

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    float-to-int v1, v8

    iget v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->pivotYValue:F

    iget-boolean v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mTop:Z

    if-eqz v8, :cond_bb

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    :goto_46
    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    add-int v2, v1, v8

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    add-int v0, v3, v8

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/lit8 v6, v8, 0x0

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v4, v7, v8

    const-string/jumbo v8, "BubbleView"

    const-string/jumbo v9, "[%d, %d, %d, %d][%d, %d, %d, %d]"

    const/16 v10, 0x8

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v8, v1, v3, v2, v0}, Landroid/widget/ImageView;->layout(IIII)V

    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v8, v5, v7, v6, v4}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_f

    :cond_bb
    iget-object v8, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    goto :goto_46
.end method

.method protected onMeasure(II)V
    .registers 18

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    if-eqz v11, :cond_14

    if-nez v7, :cond_1d

    :cond_14
    new-instance v13, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v14, "\u4e0d\u5408\u6cd5\u7684MeasureSpec mode"

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1d
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/BubbleView;->getChildCount()I

    move-result v6

    const/4 v9, 0x0

    :goto_22
    if-lt v9, v6, :cond_3d

    iget-object v13, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v13, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget-object v13, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    move v12, v5

    add-int v8, v4, v0

    invoke-virtual {p0, v12, v8}, Lcom/pinguo/camera360/camera/view/BubbleView;->setMeasuredDimension(II)V

    return-void

    :cond_3d
    invoke-virtual {p0, v9}, Lcom/pinguo/camera360/camera/view/BubbleView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v9, :cond_45

    iput-object v1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mContentView:Landroid/view/View;

    :cond_45
    const/4 v13, 0x1

    if-ne v9, v13, :cond_4d

    move-object v13, v1

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mAncorView:Landroid/widget/ImageView;

    :cond_4d
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget v13, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v14, 0x4000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_22
.end method

.method public setMarginRight(F)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->marginRight:F

    return-void
.end method

.method public setOrientation(F)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/BubbleView;->mOrientation:F

    return-void
.end method
