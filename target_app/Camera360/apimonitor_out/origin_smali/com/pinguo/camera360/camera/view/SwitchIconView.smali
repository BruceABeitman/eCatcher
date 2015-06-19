.class public Lcom/pinguo/camera360/camera/view/SwitchIconView;
.super Landroid/view/View;
.source "SwitchIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;
    }
.end annotation


# instance fields
.field private deltaY:I

.field private fRate:F

.field private mBgId:I

.field private mBgSx:F

.field private mBgSy:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mFadeoutRunnable:Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

.field private mIconId:I

.field private mIconImg:Landroid/graphics/Bitmap;

.field private mIconSx:F

.field private mIconSy:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mNextIconImg:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private transY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f020410

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    const v0, 0x7f0200c1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f020410

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    const v0, 0x7f0200c1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initImgSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f020410

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    const v0, 0x7f0200c1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgId:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    iput v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    iput v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initImgSize(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/SwitchIconView;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    return-void
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/SwitchIconView;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I

    return v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/camera/view/SwitchIconView;F)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    return-void
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/camera/view/SwitchIconView;)F
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/camera/view/SwitchIconView;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/camera/view/SwitchIconView;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initIcon()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/camera/view/SwitchIconView;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->stop()V

    return-void
.end method

.method private drawWithFadeout(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x437f

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    iget v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    iget v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    iget v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->deltaY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->fRate:F

    mul-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :cond_12c
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mMatrix:Landroid/graphics/Matrix;

    new-instance v0, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;-><init>(Lcom/pinguo/camera360/camera/view/SwitchIconView;Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mFadeoutRunnable:Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

    return-void
.end method

.method private initIcon()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    :cond_c
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    return-void
.end method

.method private initImgSize(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13

    const/4 v9, -0x1

    const/4 v8, 0x4

    new-array v0, v8, [I

    fill-array-data v0, :array_5e

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    const/4 v8, 0x3

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    move v2, v6

    move v1, v5

    mul-int/lit8 v8, v6, 0x2

    div-int/lit8 v4, v8, 0x3

    mul-int/lit8 v8, v5, 0x2

    div-int/lit8 v3, v8, 0x3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgId:I

    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initIcon()V

    int-to-float v8, v2

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    int-to-float v8, v1

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    int-to-float v8, v4

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    int-to-float v8, v3

    iget-object v9, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    return-void

    :array_5e
    .array-data 0x4
        0xd0t 0x0t 0x1t 0x1t
        0xd4t 0x0t 0x1t 0x1t
        0xf4t 0x0t 0x1t 0x1t
        0xf5t 0x0t 0x1t 0x1t
    .end array-data
.end method

.method private initNextIcon(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    :cond_c
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mNextIconImg:Landroid/graphics/Bitmap;

    iput p1, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    return-void
.end method

.method private stop()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mFadeoutRunnable:Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public initImgSize(I)V
    .registers 10

    move v5, p1

    move v4, p1

    move v1, v5

    move v0, v4

    mul-int/lit8 v6, v5, 0x2

    div-int/lit8 v3, v6, 0x3

    mul-int/lit8 v6, v4, 0x2

    div-int/lit8 v2, v6, 0x3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgId:I

    invoke-static {v6, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initIcon()V

    int-to-float v6, v1

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSx:F

    int-to-float v6, v0

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mBgSy:F

    int-to-float v6, v3

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSx:F

    int-to-float v6, v2

    iget-object v7, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconSy:F

    mul-int/lit8 v6, v4, 0x5

    div-int/lit8 v6, v6, 0x6

    iput v6, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->transY:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconImg:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->drawWithFadeout(Landroid/graphics/Canvas;)V

    goto :goto_4
.end method

.method public rotateTo(I)V
    .registers 3

    iget v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mIconId:I

    if-ne v0, p1, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initIcon()V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->initNextIcon(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->start()V

    goto :goto_4
.end method

.method public start()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mFadeoutRunnable:Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/SwitchIconView;->mFadeoutRunnable:Lcom/pinguo/camera360/camera/view/SwitchIconView$FadeoutRunnable;

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/SwitchIconView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
