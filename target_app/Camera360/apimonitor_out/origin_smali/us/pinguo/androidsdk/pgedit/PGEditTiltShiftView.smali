.class public Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
.super Landroid/view/View;
.source "PGEditTiltShiftView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;,
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$HorizontalDrawView;,
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$LineDrawView;,
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;,
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;,
        Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$VerticalDrawView;
    }
.end annotation


# static fields
.field private static final HIDE_TILTSHIFT_VIEW:I = 0x1

.field private static final HIDE_TIME:J = 0x320L

.field private static final MIN_VALUE:I = 0xa

.field private static final RADIAN:D = 57.32


# instance fields
.field private diagonalLine:J

.field private height:I

.field private isShowCropView:Z

.field private mHandler:Landroid/os/Handler;

.field private mInSidePaint:Landroid/graphics/Paint;

.field private mIsPointer2:Z

.field private mLastDistance:D

.field private mLastTouch:J

.field private mLastVectorX:F

.field private mLastVectorY:F

.field private mLastX:F

.field private mLastY:F

.field private mMinRoundRate:F

.field private mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

.field private mOutSidePaint:Landroid/graphics/Paint;

.field private mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

.field private mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

.field private photoBottom:I

.field private photoHeight:I

.field private photoLeft:I

.field private photoRight:I

.field private photoTop:I

.field private photoWidth:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/high16 v3, 0x4000

    const/16 v2, 0xff

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    const/high16 v3, 0x4000

    const/16 v2, 0xff

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    const/high16 v3, 0x4000

    const/16 v2, 0xff

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    const/16 v1, 0x3f

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->init()V

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
    .registers 3

    iget-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J

    return-wide v0
.end method

.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    return-void
.end method

.method static synthetic access$10(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$11(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$12(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mIsPointer2:Z

    return v0
.end method

.method static synthetic access$13(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;Landroid/view/MotionEvent;)D
    .registers 4

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->distanceBetweenFingers(Landroid/view/MotionEvent;)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$14(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)D
    .registers 3

    iget-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D

    return-wide v0
.end method

.method static synthetic access$15(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mMinRoundRate:F

    return v0
.end method

.method static synthetic access$16(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;D)V
    .registers 3

    iput-wide p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D

    return-void
.end method

.method static synthetic access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    return-object v0
.end method

.method static synthetic access$18(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F

    return v0
.end method

.method static synthetic access$19(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F

    return v0
.end method

.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
    .registers 1

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->startHandler()V

    return-void
.end method

.method static synthetic access$20(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F

    return-void
.end method

.method static synthetic access$21(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F

    return-void
.end method

.method static synthetic access$22(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I

    return v0
.end method

.method static synthetic access$23(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoRight:I

    return v0
.end method

.method static synthetic access$24(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoBottom:I

    return v0
.end method

.method static synthetic access$25(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F

    return v0
.end method

.method static synthetic access$26(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F

    return v0
.end method

.method static synthetic access$27(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F

    return-void
.end method

.method static synthetic access$28(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V
    .registers 2

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F

    return-void
.end method

.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z
    .registers 2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    return v0
.end method

.method static synthetic access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    return-object v0
.end method

.method static synthetic access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I

    return v0
.end method

.method static synthetic access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I

    return v0
.end method

.method static synthetic access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I

    return v0
.end method

.method static synthetic access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I

    return v0
.end method

.method static synthetic access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J
    .registers 3

    iget-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J

    return-wide v0
.end method

.method private distanceBetweenFingers(Landroid/view/MotionEvent;)D
    .registers 8

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method private init()V
    .registers 1

    invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->startHandler()V

    return-void
.end method

.method private startHandler()V
    .registers 5

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public cancelHandler()V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;->drawView(Landroid/graphics/Canvas;)V

    :cond_9
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v3, 0x1

    const/high16 v2, -0x4080

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->refreshStatus()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    sparse-switch v0, :sswitch_data_36

    :cond_d
    :goto_d
    :sswitch_d
    return v3

    :sswitch_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F

    goto :goto_d

    :sswitch_1b
    iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mIsPointer2:Z

    invoke-direct {p0, p2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->distanceBetweenFingers(Landroid/view/MotionEvent;)D

    move-result-wide v1

    iput-wide v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D

    goto :goto_d

    :sswitch_24
    const/4 v1, 0x0

    iput-boolean v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mIsPointer2:Z

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorX:F

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastVectorY:F

    goto :goto_d

    :sswitch_2c
    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    invoke-virtual {v1, p2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;->move(Landroid/view/MotionEvent;)V

    goto :goto_d

    :sswitch_data_36
    .sparse-switch
        0x0 -> :sswitch_e
        0x1 -> :sswitch_24
        0x2 -> :sswitch_2c
        0x6 -> :sswitch_d
        0x105 -> :sswitch_1b
    .end sparse-switch
.end method

.method public refreshStatus()V
    .registers 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastTouch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z

    return-void
.end method

.method setTilfShiftViewListener(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    return-void
.end method

.method setWidthHeight(IIII)V
    .registers 8

    iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->width:I

    iput p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->height:I

    iput p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I

    iput p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I

    sub-int v0, p1, p3

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I

    sub-int v0, p2, p4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I

    add-int/2addr v0, p3

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoRight:I

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I

    add-int/2addr v0, p4

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoBottom:I

    mul-int v0, p3, p3

    mul-int v1, p4, p4

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J

    const/high16 v0, 0x4120

    iget-wide v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mMinRoundRate:F

    return-void
.end method

.method showTiltShift(Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;)V
    .registers 4

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->roundTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v0, v1, :cond_1e

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V

    return-void

    :cond_1e
    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->verticalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v0, v1, :cond_37

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$VerticalDrawView;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$VerticalDrawView;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V

    goto :goto_1a

    :cond_37
    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getEffect()Ljava/lang/Enum;

    move-result-object v0

    sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;->horizontalTiltShift:Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$secondMenu;

    if-ne v0, v1, :cond_1a

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$HorizontalDrawView;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$HorizontalDrawView;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mNowDrawView:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V

    goto :goto_1a
.end method
