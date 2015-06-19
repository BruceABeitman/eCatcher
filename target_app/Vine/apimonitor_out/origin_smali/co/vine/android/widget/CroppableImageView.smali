.class public Lco/vine/android/widget/CroppableImageView;
.super Lco/vine/android/widget/MultiTouchImageView;
.source "CroppableImageView.java"


# static fields
.field public static final CROP_NAME_ORIGINAL_ASPECT_RATION:Ljava/lang/String; = "original_aspect"

.field public static final CROP_NAME_SQUARE:Ljava/lang/String; = "square_aspect"

.field public static final CROP_TYPE_EDIT_PROFILE:I = 0x0

.field public static final CROP_TYPE_ORIGINAL_ASPECT_RATIO:I = 0x1

.field public static final CROP_TYPE_SQUARE:I = 0x2


# instance fields
.field private mCropRectPadding:I

.field private mCropType:I

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRect:Landroid/graphics/RectF;

.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lco/vine/android/widget/MultiTouchImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lco/vine/android/widget/CroppableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v2, 0x7f090091

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lco/vine/android/widget/CroppableImageView;->init(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x7f01001d

    invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/CroppableImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Lco/vine/android/widget/MultiTouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v5, Lco/vine/android/R$styleable;->CroppableImageView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    if-lez v1, :cond_12

    iput v1, p0, Lco/vine/android/widget/CroppableImageView;->mCropRectPadding:I

    :cond_12
    invoke-virtual {p0}, Lco/vine/android/widget/CroppableImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x1

    const v6, 0x7f090083

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    const/4 v5, 0x2

    const v6, 0x7f090091

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, v2, v4}, Lco/vine/android/widget/CroppableImageView;->init(II)V

    return-void
.end method

.method private init(II)V
    .registers 6

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iput-object v1, p0, Lco/vine/android/widget/CroppableImageView;->mStrokePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput-object v0, p0, Lco/vine/android/widget/CroppableImageView;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lco/vine/android/widget/CroppableImageView;->mShadowRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iput v2, p0, Lco/vine/android/widget/CroppableImageView;->mCropType:I

    return-void
.end method


# virtual methods
.method public getCropRect()Landroid/graphics/RectF;
    .registers 4

    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lco/vine/android/widget/CroppableImageView;->mTransformBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v2, p0, Lco/vine/android/widget/CroppableImageView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter

    const/4 v9, 0x0

    invoke-super {p0, p1}, Lco/vine/android/widget/MultiTouchImageView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lco/vine/android/widget/CroppableImageView;->mTransformBounds:Landroid/graphics/RectF;

    iget-object v5, p0, Lco/vine/android/widget/CroppableImageView;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    iget-object v2, p0, Lco/vine/android/widget/CroppableImageView;->mShadowPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lco/vine/android/widget/CroppableImageView;->mShadowRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->top:F

    iget v6, v1, Landroid/graphics/RectF;->left:F

    iget v7, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v9, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    int-to-float v5, v4

    iget v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v3, v9, v9, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, v1, Landroid/graphics/RectF;->top:F

    int-to-float v7, v4

    iget v8, v1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, v4

    int-to-float v7, v0

    invoke-virtual {v3, v9, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8

    invoke-super/range {p0 .. p5}, Lco/vine/android/widget/MultiTouchImageView;->onLayout(ZIIII)V

    iget v0, p0, Lco/vine/android/widget/CroppableImageView;->mCropRectPadding:I

    iget v1, p0, Lco/vine/android/widget/CroppableImageView;->mCropType:I

    invoke-virtual {p0, v0, v1}, Lco/vine/android/widget/CroppableImageView;->setCropPadding(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    invoke-super {p0, p1, p2}, Lco/vine/android/widget/MultiTouchImageView;->onMeasure(II)V

    return-void
.end method

.method public setCropPadding(II)V
    .registers 14

    iput p2, p0, Lco/vine/android/widget/CroppableImageView;->mCropType:I

    iput p1, p0, Lco/vine/android/widget/CroppableImageView;->mCropRectPadding:I

    invoke-virtual {p0}, Lco/vine/android/widget/CroppableImageView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lco/vine/android/widget/CroppableImageView;->getMeasuredHeight()I

    move-result v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v7, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapWidth:F

    iget v8, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapHeight:F

    div-float v1, v7, v8

    int-to-float v7, v6

    int-to-float v8, v0

    div-float v5, v7, v8

    cmpl-float v7, v5, v1

    if-lez v7, :cond_39

    int-to-float v7, p1

    div-float/2addr v7, v1

    float-to-int v7, v7

    sub-int v2, v0, v7

    iget v7, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapHeight:F

    int-to-float v8, v0

    div-float v4, v7, v8

    iget v7, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapWidth:F

    div-float/2addr v7, v4

    float-to-int v7, v7

    sub-int v3, v7, p1

    :goto_2c
    if-nez p2, :cond_4a

    div-int/lit8 v2, v3, 0x2

    :cond_30
    :goto_30
    int-to-float v7, v3

    int-to-float v8, v2

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    const/4 v10, 0x0

    invoke-virtual {p0, v7, v8, v9, v10}, Lco/vine/android/widget/CroppableImageView;->setTransformDimensions(FFLandroid/widget/ImageView$ScaleType;Z)V

    return-void

    :cond_39
    sub-int v3, v6, p1

    iget v7, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapWidth:F

    int-to-float v8, v6

    div-float v4, v7, v8

    iget v7, p0, Lco/vine/android/widget/CroppableImageView;->mBitmapHeight:F

    div-float/2addr v7, v4

    float-to-int v7, v7

    int-to-float v8, p1

    div-float/2addr v8, v1

    float-to-int v8, v8

    sub-int v2, v7, v8

    goto :goto_2c

    :cond_4a
    const/4 v7, 0x2

    if-ne p2, v7, :cond_30

    if-ge v2, v3, :cond_51

    move v3, v2

    goto :goto_30

    :cond_51
    move v2, v3

    goto :goto_30
.end method

.method public setCropType(I)V
    .registers 3

    iget v0, p0, Lco/vine/android/widget/CroppableImageView;->mCropType:I

    if-eq v0, p1, :cond_9

    iput p1, p0, Lco/vine/android/widget/CroppableImageView;->mCropType:I

    invoke-virtual {p0}, Lco/vine/android/widget/CroppableImageView;->invalidate()V

    :cond_9
    return-void
.end method
