.class public Lcom/pinguo/camera360/camera/view/AnimCircleView;
.super Landroid/view/View;
.source "AnimCircleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/view/AnimCircleView$BreathInterpolator;
    }
.end annotation


# static fields
.field public static final ANIM_TIME:I = 0x190

.field private static final COLORS:[I = null

.field private static final END_DEGREE:I = 0x10e

.field public static final STATE_CLOSE:I = 0x0

.field public static final STATE_OPEN:I = 0x1

.field private static final mStartDegreeCorrection:F = 89.5f


# instance fields
.field private final mCircleCount:I

.field private mCircleRadius:F

.field private mCurrentState:I

.field private mEndX:I

.field private mHeight:I

.field private mMoveRate:F

.field private mPadding:I

.field private mPaint:Landroid/graphics/Paint;

.field private mScroller:Landroid/widget/Scroller;

.field private mStartDegree:I

.field private mStartX:I

.field private mStillnessDegree:I

.field private mStillnessX:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->COLORS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0xc9t 0x56t 0x5et 0xd9t
        0xe1t 0xbet 0x5et 0xd9t
        0x40t 0xdet 0x8et 0xd9t
        0x2at 0xe1t 0xfct 0xd9t
        0x61t 0x4ft 0xe9t 0xd9t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->COLORS:[I

    array-length v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleCount:I

    const v0, 0x400ccccd

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mMoveRate:F

    const/high16 v0, 0x41a0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPadding:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartDegree:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->init()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :goto_1b
    return-void

    :cond_1c
    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1b
.end method

.method private init()V
    .registers 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPadding:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessDegree:I

    return-void
.end method


# virtual methods
.method public close()V
    .registers 8

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    if-eqz v0, :cond_36

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    const/16 v0, 0x10e

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessDegree:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartX:I

    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartDegree:I

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartDegree:I

    rsub-int v4, v4, 0x10e

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->invalidate()V

    :cond_36
    return-void
.end method

.method public getCurrentState()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const/high16 v5, 0x4000

    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    iput v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/high16 v2, 0x42b3

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_51

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    :goto_39
    const/4 v1, 0x0

    :goto_3a
    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleCount:I

    if-lt v1, v2, :cond_60

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_50

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->invalidate()V

    :cond_50
    return-void

    :cond_51
    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessDegree:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v5

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mHeight:I

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto :goto_39

    :cond_60
    iget-object v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Lcom/pinguo/camera360/camera/view/AnimCircleView;->COLORS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPadding:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->drawCircle(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    const/high16 v2, 0x43b4

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleCount:I

    int-to-float v3, v3

    div-float v0, v2, v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p1, v0, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method protected onMeasure(II)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mWidth:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mHeight:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mPadding:I

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartX:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iget v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCircleRadius:F

    iget v2, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mMoveRate:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    return-void
.end method

.method public open()V
    .registers 8

    const/4 v1, 0x1

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    if-eq v0, v1, :cond_36

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartX:I

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessX:I

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartDegree:I

    iput v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStillnessDegree:I

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    const/16 v2, 0x10e

    iget v3, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartX:I

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mEndX:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mStartDegree:I

    add-int/lit16 v4, v4, -0x10e

    const/16 v5, 0x190

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->invalidate()V

    :cond_36
    return-void
.end method

.method public switchState()V
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/view/AnimCircleView;->mCurrentState:I

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->open()V

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/AnimCircleView;->close()V

    goto :goto_7
.end method
