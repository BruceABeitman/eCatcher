.class public abstract Lcom/pinguo/camera360/shop/view/AbsIndicator;
.super Landroid/view/View;
.source "AbsIndicator.java"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private mCurrentItem:I

.field private mGapWidth:I

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mContext:Landroid/content/Context;

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->setGap(I)V

    return-void
.end method

.method private drawCell(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellWidth:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellHeight:I

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v0, v1, :cond_64

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_1a
    iput v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellWidth:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-le v0, v1, :cond_6d

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_36
    iput v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellHeight:I

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellWidth:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mGapWidth:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mWidth:I

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellHeight:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mHeight:I

    return-void

    :cond_64
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_1a

    :cond_6d
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_36
.end method


# virtual methods
.method public abstract getCount()I
.end method

.method public getCurrentItem()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCurrentItem:I

    return v0
.end method

.method public abstract getHighlight()Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIndicator()Landroid/graphics/drawable/Drawable;
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    :goto_11
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_1b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1b
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getIndicator()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->drawCell(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    iget v1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCurrentItem:I

    if-ne v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getHighlight()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->drawCell(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    :cond_2d
    iget v1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCellWidth:I

    iget v2, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mGapWidth:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_11
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->init()V

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mWidth:I

    iget v1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCurrentItem:I

    if-ne p1, v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    if-gez p1, :cond_12

    const/4 p1, 0x0

    :cond_8
    :goto_8
    iput p1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCurrentItem:I

    iget v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mCurrentItem:I

    if-ltz v0, :cond_4

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->invalidate()V

    goto :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_8

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/AbsIndicator;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_8
.end method

.method public setGap(I)V
    .registers 4

    int-to-float v0, p1

    iget-object v1, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/shop/view/AbsIndicator;->mGapWidth:I

    return-void
.end method
