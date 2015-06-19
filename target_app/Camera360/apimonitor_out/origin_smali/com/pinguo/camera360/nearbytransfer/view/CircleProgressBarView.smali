.class public Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;
.super Landroid/view/View;
.source "CircleProgressBarView.java"


# static fields
.field private static final DEFAULT_ARC_COLOR:I = -0xd25099

.field private static final DEFAULT_CIRCLE_COLOR:I = -0x303031

.field private static final DEFAULT_TEXT_COLOR:I = -0xd25099


# instance fields
.field private mDensity:F

.field private mRadius:F

.field private max:I

.field private oval:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private strokeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->max:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->max:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x96

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->max:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    const/high16 v0, 0x42c8

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->oval:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mDensity:F

    return-void
.end method


# virtual methods
.method public getProgress()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 16

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v0, v13, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mDensity:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->getRight()I

    move-result v0

    div-int/lit8 v1, v13, 0x2

    sub-int/2addr v0, v1

    int-to-float v7, v0

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->getBottom()I

    move-result v0

    div-int/lit8 v1, v6, 0x2

    sub-int/2addr v0, v1

    int-to-float v8, v0

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const v1, -0x303031

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const v1, -0xd25099

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->oval:Landroid/graphics/RectF;

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    sub-float v1, v7, v1

    iget v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    sub-float v2, v8, v2

    iget v3, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    add-float/2addr v3, v7

    iget v4, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mRadius:F

    add-float/2addr v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->oval:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x41a0

    iget v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const v1, -0xd25099

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->max:I

    if-lt v0, v1, :cond_d0

    const-string/jumbo v9, "100%"

    :goto_aa
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v9, v1, v2, v10}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    div-int/lit8 v0, v13, 0x2

    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int v11, v0, v1

    mul-int/lit8 v0, v6, 0x4

    div-int/lit8 v12, v0, 0x5

    int-to-float v0, v11

    int-to-float v1, v12

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_d0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_aa
.end method

.method public setProgress(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->progress:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->strokeWidth:I

    return-void
.end method
