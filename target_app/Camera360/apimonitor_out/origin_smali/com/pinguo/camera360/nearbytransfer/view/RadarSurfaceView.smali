.class public Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
.super Landroid/view/SurfaceView;
.source "RadarSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;
    }
.end annotation


# instance fields
.field private d:I

.field private mAlignView:Landroid/view/View;

.field private mAlignViewLocation:[I

.field private mCenterX:I

.field private mCenterY:I

.field private mColorA:I

.field private mColorB:I

.field private mColorG:I

.field private mColorR:I

.field private mDensity:F

.field private mDiff:I

.field private mLocation:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintStyle:Landroid/graphics/Paint$Style;

.field private mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/16 v2, 0xc4

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaintStyle:Landroid/graphics/Paint$Style;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/16 v2, 0xc4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaintStyle:Landroid/graphics/Paint$Style;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/16 v2, 0xc4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    const/16 v0, 0xff

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iput v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    iput v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaintStyle:Landroid/graphics/Paint$Style;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Landroid/graphics/Canvas;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .registers 16

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignView:Landroid/view/View;

    if-eqz v4, :cond_141

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignViewLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gtz v4, :cond_43

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignView:Landroid/view/View;

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mLocation:[I

    invoke-virtual {p0, v4}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->getLocationInWindow([I)V

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignViewLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignViewLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mLocation:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    :cond_43
    :goto_43
    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget v8, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010

    iget v12, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iget v6, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget v8, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    iget v9, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    mul-int/lit8 v9, v9, 0x1

    add-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010

    iget v12, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iget v6, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    int-to-float v5, v5

    const/high16 v6, 0x3fc0

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget v8, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    iget v9, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010

    iget v12, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iget v6, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    int-to-float v5, v5

    const/high16 v6, 0x4020

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    iget v8, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    iget v9, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    mul-int/lit8 v9, v9, 0x3

    add-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4010

    iget v12, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iget v6, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    int-to-float v4, v4

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    int-to-float v5, v5

    const/high16 v6, 0x4060

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff8

    iget v8, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    float-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    iget v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    if-lt v4, v5, :cond_140

    const/4 v4, 0x0

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->d:I

    :cond_140
    return-void

    :cond_141
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterX:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mCenterY:I

    goto/16 :goto_43
.end method

.method private init(Landroid/content/Context;)V
    .registers 6

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x3f4ccccd

    iget v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/high16 v0, 0x4270

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDensity:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mDiff:I

    new-array v0, v3, [I

    fill-array-data v0, :array_4c

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignViewLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mLocation:[I

    return-void

    nop

    :array_4c
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    const v0, -0x121213

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->doDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAlignView(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mAlignView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->postInvalidate()V

    return-void
.end method

.method public setCirclePaint(Landroid/graphics/Paint$Style;IIII)V
    .registers 7

    iput p2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorA:I

    iput p3, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorR:I

    iput p4, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorG:I

    iput p5, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mColorB:I

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mPaintStyle:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 5

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    invoke-direct {v0, p0, p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;-><init>(Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Landroid/view/SurfaceHolder;)V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mStart:Z

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mStart:Z

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->mSurfaceThread:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->interrupt()V

    return-void
.end method
