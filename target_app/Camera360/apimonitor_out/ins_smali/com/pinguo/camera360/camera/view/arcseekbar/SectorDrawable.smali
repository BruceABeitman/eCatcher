.class public Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;
.super Landroid/view/View;
.source "SectorDrawable.java"
.field private arcHeight:I
.field private increaceHeight:I
.field private mAnimScroller:Landroid/widget/Scroller;
.field private mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.field private mArcCenterX:F
.field private mArcCenterY:F
.field private mArcCircleRadius:F
.field private mArcCircleRect:Landroid/graphics/RectF;
.field private mArcCount:I
.field private mArcStartAngleRadian:F
.field private mArcSweepAngleRadian:F
.field private mBonusHeight:I
.field private mCurrentArcIndex:I
.field private mPaint:Landroid/graphics/Paint;
.field private storkeWidth:I
.field private visibility:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->init()V
return-void
.end method
.method private computeCurrentSector(Landroid/graphics/Canvas;)V
.registers 5
const/4 v2, 0x0
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mCurrentArcIndex:I
if-ltz v0, :cond_27
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mCurrentArcIndex:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
if-ge v0, v1, :cond_27
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->storkeWidth:I
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v0, v1
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mCurrentArcIndex:I
mul-int/2addr v0, v1
int-to-float v0, v0
invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V
:goto_1e
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->storkeWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-void
:cond_27
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v0, v1
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
mul-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->storkeWidth:I
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v0, v1
int-to-float v0, v0
const/high16 v1, 0x4000
div-float/2addr v0, v1
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
add-int/lit8 v1, v1, -0x1
int-to-float v1, v1
mul-float/2addr v0, v1
invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V
goto :goto_1e
.end method
.method private dpToPixel(F)I
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, p1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method private init()V
.registers 4
const/4 v2, 0x1
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
const/16 v1, 0x50
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mCurrentArcIndex:I
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
const/high16 v0, 0x4220
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mBonusHeight:I
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
return-void
.end method
.method private initArcParameter()V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
if-nez v0, :cond_d
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "ArcSeekBar must be set by setArc before using this widget!"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getArcCenterX()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterX:F
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getArcCenterY()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterY:F
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getArcRaidus()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRadius:F
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getArcStartAngleRadian()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcStartAngleRadian:F
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getArcSweepAngleRadian()F
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcSweepAngleRadian:F
new-instance v0, Landroid/graphics/RectF;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterX:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRadius:F
sub-float/2addr v1, v2
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterY:F
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRadius:F
sub-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterX:F
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRadius:F
add-float/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterY:F
iget v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRadius:F
add-float/2addr v4, v5
invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRect:Landroid/graphics/RectF;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v0, v1
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
mul-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->storkeWidth:I
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->storkeWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-void
.end method
.method private radianToDegree(F)F
.registers 6
const/high16 v0, 0x4334
mul-float/2addr v0, p1
float-to-double v0, v0
const-wide v2, 0x400921fb54442d18L
div-double/2addr v0, v2
double-to-float v0, v0
return v0
.end method
.method public hide()Z
.registers 7
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-eqz v0, :cond_36
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getContext()Landroid/content/Context;
move-result-object v2
new-instance v3, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcSweepAngleRadian:F
invoke-direct {p0, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->radianToDegree(F)F
move-result v2
const/high16 v3, 0x41f0
add-float/2addr v2, v3
float-to-int v3, v2
const/16 v5, 0x1f4
move v2, v1
move v4, v1
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->invalidate()V
const/4 v1, 0x1
:cond_36
return v1
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 11
const/high16 v4, 0x4334
const/4 v3, 0x0
const-wide v7, 0x400921fb54442d18L
const/4 v6, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v0
if-eqz v0, :cond_64
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I
move-result v6
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->invalidate()V
:cond_1a
if-eqz v6, :cond_27
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
int-to-float v0, v6
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterX:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCenterY:F
invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V
:cond_27
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getPaddingTop()I
move-result v0
int-to-float v0, v0
invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mBonusHeight:I
int-to-float v0, v0
const/high16 v1, 0x4000
div-float/2addr v0, v1
invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->computeCurrentSector(Landroid/graphics/Canvas;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCircleRect:Landroid/graphics/RectF;
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcStartAngleRadian:F
mul-float/2addr v0, v4
float-to-double v2, v0
div-double/2addr v2, v7
double-to-float v0, v2
const/high16 v2, 0x4120
sub-float v2, v0, v2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcSweepAngleRadian:F
mul-float/2addr v0, v4
float-to-double v3, v0
div-double/2addr v3, v7
double-to-float v0, v3
const/high16 v3, 0x41a0
add-float/2addr v3, v0
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->invalidate()V
:goto_63
return-void
:cond_64
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
if-nez v0, :cond_1a
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setVisibility(I)V
goto :goto_63
.end method
.method protected onMeasure(II)V
.registers 8
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->initArcParameter()V
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v3, -0x8000
if-ne v1, v3, :cond_29
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->arcHeight:I
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->increaceHeight:I
add-int/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
mul-int/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mBonusHeight:I
add-int/2addr v3, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getPaddingTop()I
move-result v4
add-int/2addr v3, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getPaddingBottom()I
move-result v4
add-int v0, v3, v4
invoke-virtual {p0, v2, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setMeasuredDimension(II)V
:goto_28
return-void
:cond_29
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
goto :goto_28
.end method
.method public setArc(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArc:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
return-void
.end method
.method public setArcCount(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcCount:I
return-void
.end method
.method public setCurrentArcIndex(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mCurrentArcIndex:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->invalidate()V
return-void
.end method
.method public show()Z
.registers 8
const/4 v6, 0x1
const/high16 v4, 0x41f0
const/4 v2, 0x0
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
if-nez v0, :cond_42
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z
move-result v0
if-eqz v0, :cond_42
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v3, Landroid/view/animation/DecelerateInterpolator;
invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V
invoke-direct {v0, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->setVisibility(I)V
iput-boolean v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->visibility:Z
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mAnimScroller:Landroid/widget/Scroller;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcSweepAngleRadian:F
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->radianToDegree(F)F
move-result v1
add-float/2addr v1, v4
float-to-int v1, v1
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->mArcSweepAngleRadian:F
invoke-direct {p0, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->radianToDegree(F)F
move-result v3
add-float/2addr v3, v4
float-to-int v3, v3
neg-int v3, v3
const/16 v5, 0x1f4
move v4, v2
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/SectorDrawable;->invalidate()V
move v2, v6
:cond_42
return v2
.end method