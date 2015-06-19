.class public Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;
.super Landroid/view/View;
.source "FocusIndicatorRotateLayout.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/focus/IFocusIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;,
        Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;
    }
.end annotation


# static fields
.field private static final CIRCLE_ANGLE:I = 0x168

.field private static final DISAPPEAR_TIMEOUT:I = 0xc8

.field private static final FOCUS_FAIL_COLOR:I = -0xac00

.field private static final FOCUS_START_COLOR:I = -0x1fb7

.field private static final FOCUS_SUC_COLOR:I = -0x6000b7

.field private static final FOCUS_VIEW_MARGIN_TO_PARENT:I = 0x2

.field private static final ROUND_RADIUS:I = 0x5

.field private static final ROUND_REC_RADIUS:I = 0x8

.field private static final ROUND_REC_STROKE_WIDTH:I = 0x1

.field private static final STATE_FOCUSING:I = 0x1

.field private static final STATE_FOCUS_FAIL:I = 0x3

.field private static final STATE_FOCUS_SUCCESS:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STROKE_WIDTH:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static sCanvasFlag:I


# instance fields
.field private mDisappear:Ljava/lang/Runnable;

.field private mDrawFilter:Landroid/graphics/DrawFilter;

.field private mDrawFocusViewDoneCallback:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;

.field private mFocusViewMarginToParent:F

.field private mIsDoingAnimation:Z

.field private mOneThird_RoundRec:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRoundRadius:F

.field private mRoundRecRadius:F

.field private mRoundRecWidth:F

.field mScroller:Landroid/widget/Scroller;

.field private mStartLeftRec:F

.field private mStartRightRec:F

.field private mState:I

.field private mStrokeWidth:F

.field private mSweep:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    const/16 v0, 0x1f

    sput v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->sCanvasFlag:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v3, 0x2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;-><init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$Disappear;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const/high16 v0, 0x4387

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStartLeftRec:F

    const/high16 v0, 0x42b4

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStartRightRec:F

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFilter:Landroid/graphics/DrawFilter;

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    invoke-static {v3}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    invoke-static {v3}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStrokeWidth:F

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecWidth:F

    iget v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    const/high16 v1, 0x4000

    mul-float/2addr v0, v1

    const/high16 v1, 0x4040

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->initPaint()V

    sget-object v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mRoundRadius = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mRoundRecRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mFocusViewMarginToParent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    return-void
.end method

.method private initPaint()V
    .registers 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    :cond_c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private setPaintColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "clear focus View "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$1;-><init>(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->getMeasuredWidth()I

    move-result v24

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->getMeasuredHeight()I

    move-result v16

    shr-int/lit8 v2, v24, 0x1

    int-to-float v15, v2

    shr-int/lit8 v2, v16, 0x1

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    sub-float v2, v15, v2

    float-to-int v0, v2

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    sub-float v2, v14, v2

    float-to-int v0, v2

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    add-float/2addr v2, v15

    float-to-int v0, v2

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecRadius:F

    add-float/2addr v2, v14

    float-to-int v13, v2

    sget-object v2, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "width = "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " height = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "state = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, " mOneThird_RoundRec ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFilter:Landroid/graphics/DrawFilter;

    if-eqz v2, :cond_7f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFilter:Landroid/graphics/DrawFilter;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    :cond_7f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    packed-switch v2, :pswitch_data_2e8

    :goto_86
    return-void

    :pswitch_87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v0, v17

    int-to-float v3, v0

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v5, v0

    int-to-float v6, v13

    const/4 v7, 0x0

    sget v8, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->sCanvasFlag:I

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v22

    new-instance v19, Landroid/graphics/RectF;

    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v8, v13

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v25, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    add-int v2, v2, v17

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    sub-int v2, v21, v2

    int-to-float v5, v2

    int-to-float v6, v13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    add-int v2, v2, v23

    int-to-float v4, v2

    move/from16 v0, v21

    int-to-float v5, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    sub-int v2, v13, v2

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStrokeWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v3, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v6, v8

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v8, v9

    invoke-direct {v3, v2, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStartLeftRec:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    neg-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v6, v8

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v8, v9

    invoke-direct {v5, v2, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStartRightRec:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    neg-float v7, v2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    const/high16 v4, 0x4334

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_1e4

    sget-object v2, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start the focus view animation"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFocusViewDoneCallback:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;

    invoke-interface {v2}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;->drawFocusViewDone()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mIsDoingAnimation:Z

    goto/16 :goto_86

    :cond_1e4
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->invalidate()V

    goto/16 :goto_86

    :pswitch_1e9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mIsDoingAnimation:Z

    if-nez v2, :cond_203

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFocusViewDoneCallback:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;

    invoke-interface {v2}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;->drawFocusViewDone()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mIsDoingAnimation:Z

    sget-object v2, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Not start focus animation. just do it in success or fail state."

    invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRecWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move/from16 v0, v17

    int-to-float v7, v0

    move/from16 v0, v23

    int-to-float v8, v0

    move/from16 v0, v21

    int-to-float v9, v0

    int-to-float v10, v13

    const/4 v11, 0x0

    sget v12, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->sCanvasFlag:I

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v22

    new-instance v20, Landroid/graphics/RectF;

    move/from16 v0, v17

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v21

    int-to-float v6, v0

    int-to-float v8, v13

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mRoundRadius:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2, v4, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v18, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    add-int v2, v2, v17

    int-to-float v7, v2

    move/from16 v0, v23

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    sub-int v2, v21, v2

    int-to-float v9, v2

    int-to-float v10, v13

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v17

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    add-int v2, v2, v23

    int-to-float v8, v2

    move/from16 v0, v21

    int-to-float v9, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mOneThird_RoundRec:I

    sub-int v2, v13, v2

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mStrokeWidth:F

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v7, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    move/from16 v0, v24

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v6, v8

    move/from16 v0, v16

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget v9, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mFocusViewMarginToParent:F

    sub-float/2addr v8, v9

    invoke-direct {v7, v2, v4, v6, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/4 v8, 0x0

    const/high16 v9, 0x43b4

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/16 :goto_86

    nop

    :pswitch_data_2e8
    .packed-switch 0x1
        :pswitch_87
        :pswitch_1e9
        :pswitch_1e9
    .end packed-switch
.end method

.method public setDrawFocusViewDoneCallback(Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDrawFocusViewDoneCallback:Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout$DrawFocusViewDoneListener;

    return-void
.end method

.method public showFail(Z)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show focus View fail "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    const v0, -0xac00

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setPaintColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->invalidate()V

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    return-void
.end method

.method public showStart()V
    .registers 7

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mIsDoingAnimation:Z

    sget-object v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "show focus View start "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mSweep:F

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->clearAnimation()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mScroller:Landroid/widget/Scroller;

    const/16 v3, 0xb4

    const/16 v5, 0xc8

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/16 v0, -0x1fb7

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setPaintColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->invalidate()V

    return-void
.end method

.method public showSuccess(Z)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show focus View success "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mState:I

    const v0, -0x6000b7

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->setPaintColor(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->invalidate()V

    if-eqz p1, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->mDisappear:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/camera/focus/FocusIndicatorRotateLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_31
    return-void
.end method
