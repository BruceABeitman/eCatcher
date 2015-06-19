.class public Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;
.super Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;
.source "CircleEdgeCutEraser.java"


# static fields
.field private static final DEFAULT_PAINT_STROKE_W:F


# instance fields
.field protected circlePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->DEFAULT_PAINT_STROKE_W:F

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;-><init>(Lcom/pinguo/camera360/IDPhoto/model/AlphaPicMaker$Brush;I)V

    return-void
.end method

.method private ensurePaint()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_25

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->DEFAULT_PAINT_STROKE_W:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_25
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V
    .registers 3

    if-eqz p1, :cond_8

    invoke-super {p0, p1}, Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;->copyFrom(Lcom/pinguo/camera360/IDPhoto/model/AbsEdgeCutEraser;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    :cond_8
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->center:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->drawWithCenter(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V

    return-void
.end method

.method public drawWithCenter(Landroid/graphics/Canvas;Landroid/graphics/PointF;)V
    .registers 7

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->ensurePaint()V

    iget-boolean v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->isSelected:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    const/16 v1, -0x1fb7

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p2, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_e
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pinguo/camera360/IDPhoto/model/CircleEdgeCutEraser;->setCenter(FF)V

    return-void
.end method
