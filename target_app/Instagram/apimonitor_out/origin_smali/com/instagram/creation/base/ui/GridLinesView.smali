.class public Lcom/instagram/creation/base/ui/GridLinesView;
.super Landroid/view/View;
.source "GridLinesView.java"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private d:I

.field private e:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/creation/base/ui/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/creation/base/ui/GridLinesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    const/4 v0, 0x3

    iput v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff8

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_68

    const/4 v0, 0x2

    :goto_26
    iput v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:Landroid/graphics/Paint;

    const v1, -0x7f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x2700

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    if-eqz p2, :cond_5f

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/facebook/bb;->GridLinesView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/facebook/bb;->GridLinesView_lines:I

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5f
    iget v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    return-void

    :cond_68
    const/4 v0, 0x1

    goto :goto_26
.end method

.method private a(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V
    .registers 14

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v6

    int-to-float v1, p4

    sub-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_12
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_35

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v6

    add-float/2addr v0, v7

    int-to-float v1, p3

    add-float v2, v0, v1

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    add-int/lit8 v1, v6, 0x1

    aget v0, v0, v1

    int-to-float v1, p4

    sub-float v4, v0, v1

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    :cond_35
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-float/2addr v0, v7

    int-to-float v1, p3

    add-float v2, v0, v1

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    move v1, p2

    move v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V
    .registers 13

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v6

    int-to-float v2, p3

    sub-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_12
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ge v6, v0, :cond_33

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v6

    add-float v1, v0, v7

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v2

    int-to-float v2, p3

    sub-float v3, v0, v2

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_12

    :cond_33
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    add-float v1, v0, v7

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    move-object v0, p1

    move v2, p2

    move v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 12

    const/4 v9, 0x1

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move v6, v7

    :goto_8
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v0, v0

    if-ge v6, v0, :cond_25

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v2, v0, v6

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v4, v0, v6

    iget-object v5, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_8

    :cond_25
    move v6, v7

    :goto_26
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v0, v0

    if-ge v6, v0, :cond_3f

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v2, v0, v6

    iget v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/instagram/creation/base/ui/GridLinesView;->a:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/base/ui/GridLinesView;->a(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_26

    :cond_3f
    move v0, v7

    :goto_40
    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_67

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v1, v1, v0

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/instagram/creation/base/ui/GridLinesView;->a(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v1, v1, v0

    add-float/2addr v1, v8

    iget v2, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/instagram/creation/base/ui/GridLinesView;->a(Landroid/graphics/Canvas;FILandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    :cond_67
    :goto_67
    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v0, v0

    if-ge v7, v0, :cond_92

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v7

    iget v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    int-to-float v1, v1

    sub-float v2, v0, v1

    iget v4, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    iget-object v5, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/base/ui/GridLinesView;->a(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    aget v0, v0, v7

    add-float v2, v0, v8

    iget v4, p0, Lcom/instagram/creation/base/ui/GridLinesView;->c:I

    iget-object v5, p0, Lcom/instagram/creation/base/ui/GridLinesView;->b:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/instagram/creation/base/ui/GridLinesView;->a(Landroid/graphics/Canvas;FIILandroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_67

    :cond_92
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/instagram/creation/base/ui/GridLinesView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/base/ui/GridLinesView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    iget-object v1, p0, Lcom/instagram/creation/base/ui/GridLinesView;->e:[F

    add-int/lit8 v2, v0, 0x1

    mul-int/2addr v2, p1

    iget v3, p0, Lcom/instagram/creation/base/ui/GridLinesView;->d:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_1c
    return-void
.end method
