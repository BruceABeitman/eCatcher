.class public Lcom/pinguo/Camera360Lib/ui/ProgressButton;
.super Landroid/widget/TextView;
.source "ProgressButton.java"
.field private static MIN_ANIM_TIME:J
.field private mDrawProgress:I
.field private mPaint:Landroid/graphics/Paint;
.field private mProgress:I
.field private mProgressBackgroundColor:I
.field private mProgressColor:I
.field private mScroller:Landroid/widget/Scroller;
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x3e8
sput-wide v0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->MIN_ANIM_TIME:J
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
const/16 v0, 0x11
invoke-virtual {p0, v0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->setGravity(I)V
return-void
.end method
.method private doDraw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
iget v2, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgressBackgroundColor:I
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->getMeasuredWidth()I
move-result v0
int-to-float v3, v0
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->getMeasuredHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgressColor:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->getMeasuredWidth()I
move-result v6
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->getMeasuredHeight()I
move-result v7
const/4 v8, 0x0
int-to-float v0, v7
iget v1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
int-to-float v1, v1
const/high16 v2, 0x42c8
div-float/2addr v1, v2
int-to-float v2, v7
mul-float/2addr v1, v2
sub-float/2addr v0, v1
float-to-int v9, v0
int-to-float v1, v8
int-to-float v2, v9
int-to-float v3, v6
int-to-float v4, v7
iget-object v5, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
return-void
.end method
.method private increaseProgress(I)V
.registers 10
const/4 v2, 0x0
if-gez p1, :cond_35
const/4 p1, 0x0
:goto_4
:cond_4
iget v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
if-eq v0, p1, :cond_34
iput p1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v4, Landroid/view/animation/LinearInterpolator;
invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-direct {v0, v1, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mScroller:Landroid/widget/Scroller;
iget v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
iget v1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
sub-int v3, v0, v1
int-to-float v0, v3
const/high16 v1, 0x42c8
div-float/2addr v0, v1
sget-wide v6, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->MIN_ANIM_TIME:J
long-to-float v1, v6
mul-float/2addr v0, v1
float-to-int v5, v0
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mScroller:Landroid/widget/Scroller;
iget v1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
move v4, v2
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->invalidate()V
:cond_34
return-void
:cond_35
const/16 v0, 0x64
if-le p1, v0, :cond_4
const/16 p1, 0x64
goto :goto_4
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mScroller:Landroid/widget/Scroller;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v0
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I
move-result v0
iput v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->doDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->invalidate()V
:goto_1a
invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V
return-void
:cond_1e
iget v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
iput v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
invoke-direct {p0, p1}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->doDraw(Landroid/graphics/Canvas;)V
goto :goto_1a
.end method
.method public setProgress(I)V
.registers 3
if-gez p1, :cond_f
const/4 p1, 0x0
:cond_3
:goto_3
iget v0, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
if-eq p1, v0, :cond_e
iput p1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgress:I
iput p1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mDrawProgress:I
invoke-virtual {p0}, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->invalidate()V
:cond_e
return-void
:cond_f
const/16 v0, 0x64
if-le p1, v0, :cond_3
const/16 p1, 0x64
goto :goto_3
.end method
.method public setProgressBackgroundColor(I)V
.registers 2
iput p1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgressBackgroundColor:I
return-void
.end method
.method public setProgressColor(I)V
.registers 2
iput p1, p0, Lcom/pinguo/Camera360Lib/ui/ProgressButton;->mProgressColor:I
return-void
.end method