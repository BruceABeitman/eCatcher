.class public Lco/vine/android/widget/CounterView;
.super Landroid/view/View;
.source "CounterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/CounterView$DigitAnimation;,
        Lco/vine/android/widget/CounterView$AnimationMode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_DURATION_MAX:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ANIMATION_DURATION_MIN:I = 0x0

.field private static final DIGIT_SPACING_X:I = 0x3

.field private static final DIGIT_SPACING_Y:I = 0x3

.field private static final FRAME_DELAY:I = 0x14

.field private static final K_INDEX:I = 0xa

.field private static final K_SEPARATOR:Ljava/lang/String; = ","

.field private static final NO_ANIMATE_TO_NEXT_NUMBER:Z = false

.field private static final TAG:Ljava/lang/String; = "CounterView"


# instance fields
.field private mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

.field private mBounds:[Landroid/graphics/Rect;

.field private volatile mCanAnimate:Z

.field private final mDigitAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/widget/CounterView$DigitAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawingCount:J

.field private mExtraCount:J

.field private mIsPaused:Z

.field private mKnownCount:J

.field private mKnownCountRefreshTime:J

.field private final mLOCK:[I

.field private mLastAnimationTime:J

.field private mLastDigitCount:I

.field private mLastPrint:Ljava/lang/String;

.field private mMaxAnimationSeparation:J

.field private mMaxTextHeight:I

.field private mMaxTextWidth:I

.field private mMinAnimationSeparation:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mVelocityPerMS:D


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x96

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lco/vine/android/widget/CounterView;->ANIMATION_DURATION_MAX:I

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lco/vine/android/widget/CounterView;->ANIMATION_DURATION_MIN:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    new-instance v0, Lco/vine/android/widget/CounterView$AnimationMode;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lco/vine/android/widget/CounterView$AnimationMode;-><init>(ZZZ)V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    new-array v0, v2, [I

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->init()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->updateTextSizes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    new-instance v0, Lco/vine/android/widget/CounterView$AnimationMode;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lco/vine/android/widget/CounterView$AnimationMode;-><init>(ZZZ)V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    new-array v0, v2, [I

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->init()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->updateTextSizes()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    new-instance v0, Lco/vine/android/widget/CounterView$AnimationMode;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v2, v1}, Lco/vine/android/widget/CounterView$AnimationMode;-><init>(ZZZ)V

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    new-array v0, v2, [I

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->init()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->updateTextSizes()V

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/CounterView;)Lco/vine/android/widget/CounterView$AnimationMode;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    sget v0, Lco/vine/android/widget/CounterView;->ANIMATION_DURATION_MAX:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    sget v0, Lco/vine/android/widget/CounterView;->ANIMATION_DURATION_MIN:I

    return v0
.end method

.method private getIntrinsicHeightForDigit(II)I
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    add-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private init()Landroid/graphics/Paint;
    .registers 5

    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x41

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    const/16 v1, 0xb

    new-array v1, v1, [Landroid/graphics/Rect;

    const/4 v2, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    const/16 v2, 0xa

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    aput-object v3, v1, v2

    iput-object v1, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    const/high16 v1, 0x4200

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-object v0
.end method

.method private invalidateDigitSize(Z)V
    .registers 27

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_28

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    new-instance v4, Lco/vine/android/widget/CounterView$DigitAnimation;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lco/vine/android/widget/CounterView;->mVelocityPerMS:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lco/vine/android/widget/CounterView;->mDrawingCount:J

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lco/vine/android/widget/CounterView$DigitAnimation;-><init>(Lco/vine/android/widget/CounterView;IDJ)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/CounterView;->getCount()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lco/vine/android/widget/CounterView;->mExtraCount:J

    add-long v13, v4, v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/widget/CounterView;->mDrawingCount:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lco/vine/android/widget/CounterView;->mLastAnimationTime:J

    sub-long v17, v4, v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/widget/CounterView$DigitAnimation;

    iget-wide v4, v4, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimatingCount:J

    cmp-long v4, v13, v4

    if-lez v4, :cond_c6

    const/4 v12, 0x1

    :goto_5e
    if-nez p1, :cond_76

    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/widget/CounterView;->mMinAnimationSeparation:J

    cmp-long v4, v17, v4

    if-ltz v4, :cond_10b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lco/vine/android/widget/CounterView;->mCanAnimate:Z

    if-nez v4, :cond_76

    move-object/from16 v0, p0

    iget-wide v4, v0, Lco/vine/android/widget/CounterView;->mMaxAnimationSeparation:J

    cmp-long v4, v17, v4

    if-ltz v4, :cond_10b

    :cond_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lco/vine/android/widget/CounterView;->mLastAnimationTime:J

    const/4 v6, 0x0

    const-wide/16 v20, 0x0

    :goto_81
    move/from16 v0, v19

    if-lt v6, v0, :cond_87

    if-eqz v12, :cond_d8

    :cond_87
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v4, v6, :cond_a7

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    new-instance v4, Lco/vine/android/widget/CounterView$DigitAnimation;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lco/vine/android/widget/CounterView;->mVelocityPerMS:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lco/vine/android/widget/CounterView;->mDrawingCount:J

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v10}, Lco/vine/android/widget/CounterView$DigitAnimation;-><init>(Lco/vine/android/widget/CounterView;IDJ)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a7
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/widget/CounterView$DigitAnimation;

    move-wide v8, v15

    move-wide v10, v13

    invoke-virtual/range {v7 .. v12}, Lco/vine/android/widget/CounterView$DigitAnimation;->invalidate(JJZ)Z

    move-result v12

    move-wide/from16 v0, v20

    long-to-double v8, v0

    if-nez v6, :cond_c8

    iget v4, v7, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I

    int-to-double v4, v4

    :goto_bf
    add-double/2addr v4, v8

    double-to-long v0, v4

    move-wide/from16 v20, v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    :cond_c6
    const/4 v12, 0x0

    goto :goto_5e

    :cond_c8
    iget v4, v7, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I

    int-to-double v4, v4

    const-wide/high16 v10, 0x4024

    int-to-double v0, v6

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    mul-double/2addr v4, v10

    goto :goto_bf

    :cond_d8
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lco/vine/android/widget/CounterView;->setDrawingCount(JZ)V

    move-object/from16 v0, p0

    iget v4, v0, Lco/vine/android/widget/CounterView;->mLastDigitCount:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v4, v5, :cond_fe

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lco/vine/android/widget/CounterView;->mLastDigitCount:I

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/CounterView;->requestLayout()V

    :cond_fe
    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    iget-boolean v4, v4, Lco/vine/android/widget/CounterView$AnimationMode;->continuousAnimation:Z

    if-nez v4, :cond_10b

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lco/vine/android/widget/CounterView;->mCanAnimate:Z

    :cond_10b
    monitor-exit v22

    return-void

    :catchall_10d
    move-exception v4

    monitor-exit v22
    :try_end_10f
    .catchall {:try_start_7 .. :try_end_10f} :catchall_10d

    throw v4
.end method

.method private setDrawingCount(JZ)V
    .registers 4

    iput-wide p1, p0, Lco/vine/android/widget/CounterView;->mDrawingCount:J

    return-void
.end method

.method private updateTextSizes()V
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput v4, p0, Lco/vine/android/widget/CounterView;->mMaxTextWidth:I

    iput v4, p0, Lco/vine/android/widget/CounterView;->mMaxTextHeight:I

    const/4 v0, 0x0

    :goto_7
    iget-object v1, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    array-length v1, v1

    if-ge v0, v1, :cond_58

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4c

    iget-object v1, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    :goto_1d
    iget v1, p0, Lco/vine/android/widget/CounterView;->mMaxTextWidth:I

    iget-object v2, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_33

    iget-object v1, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/CounterView;->mMaxTextWidth:I

    :cond_33
    iget v1, p0, Lco/vine/android/widget/CounterView;->mMaxTextHeight:I

    iget-object v2, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_49

    iget-object v1, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lco/vine/android/widget/CounterView;->mMaxTextHeight:I

    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_4c
    iget-object v1, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    const-string v2, ","

    iget-object v3, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v4, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto :goto_1d

    :cond_58
    return-void
.end method


# virtual methods
.method public adjustExtraCount(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/widget/CounterView;->mExtraCount:J

    return-void
.end method

.method public getCount()J
    .registers 9

    iget-wide v0, p0, Lco/vine/android/widget/CounterView;->mKnownCount:J

    long-to-double v2, v0

    iget-wide v0, p0, Lco/vine/android/widget/CounterView;->mKnownCountRefreshTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-lez v0, :cond_19

    iget-wide v0, p0, Lco/vine/android/widget/CounterView;->mVelocityPerMS:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lco/vine/android/widget/CounterView;->mKnownCountRefreshTime:J

    sub-long/2addr v4, v6

    long-to-double v4, v4

    mul-double/2addr v0, v4

    :goto_16
    add-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0

    :cond_19
    const-wide/16 v0, 0x0

    goto :goto_16
.end method

.method public incrementExtraCount(I)V
    .registers 6

    iget-wide v0, p0, Lco/vine/android/widget/CounterView;->mExtraCount:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lco/vine/android/widget/CounterView;->adjustExtraCount(J)V

    return-void
.end method

.method public invalidateCounterUI()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/CounterView;->mCanAnimate:Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 28

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/CounterView;->getMeasuredWidth()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/widget/CounterView;->getMeasuredHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v12

    const-string v14, ""

    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v12, :cond_255

    const/16 v20, 0x3

    move/from16 v0, v20

    if-lt v11, v0, :cond_78

    rem-int/lit8 v20, v11, 0x3

    if-nez v20, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v22, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const-string v20, ","

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    shr-int/lit8 v23, v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    move-object/from16 v24, v0

    const/16 v25, 0xa

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    const/16 v22, 0xa

    aget-object v20, v20, v22

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v20

    sub-int v18, v18, v20

    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/widget/CounterView$DigitAnimation;

    iget v8, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mDrawingDigit:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lco/vine/android/widget/CounterView;->getIntrinsicHeightForDigit(II)I

    move-result v19

    iget-boolean v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mIsAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_214

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    iget-wide v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationStartTime:J

    move-wide/from16 v24, v0

    sub-long v6, v22, v24

    long-to-double v0, v6

    move-wide/from16 v22, v0

    iget-wide v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    long-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v15, v22, v24

    iget-wide v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mAnimationDuration:J

    move-wide/from16 v22, v0

    cmp-long v20, v6, v22

    if-gez v20, :cond_ce

    iget v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ne v0, v8, :cond_12b

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lco/vine/android/widget/CounterView$AnimationMode;->pedometerAnimation:Z

    move/from16 v20, v0

    if-nez v20, :cond_12b

    :cond_ce
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v22, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_11d
    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/widget/CounterView;->mMaxTextWidth:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x3

    sub-int v18, v18, v20

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1c

    :cond_12b
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    add-int/lit8 v20, v20, 0x3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v15

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v17, v0

    if-nez v8, :cond_15a

    add-int/lit8 v20, v12, -0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_15a

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v12, v0, :cond_1a0

    :cond_15a
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lco/vine/android/widget/CounterView$AnimationMode;->alphaAnimation:Z

    move/from16 v20, v0

    if-eqz v20, :cond_185

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const-wide/high16 v22, 0x3ff0

    sub-double v22, v22, v15

    const-wide v24, 0x406fe00000000000L

    mul-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_185
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1a0
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    move-object/from16 v20, v0

    aget-object v20, v20, v8

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v20

    add-int v20, v20, v17

    add-int/lit8 v5, v20, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lco/vine/android/widget/CounterView$AnimationMode;->alphaAnimation:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const-wide v22, 0x406fe00000000000L

    mul-double v22, v22, v15

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_1ec
    iget v0, v9, Lco/vine/android/widget/CounterView$DigitAnimation;->mCurrentAnimatingToDigit:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    int-to-float v0, v5

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11d

    :catchall_211
    move-exception v20

    monitor-exit v21
    :try_end_213
    .catchall {:try_start_f .. :try_end_213} :catchall_211

    throw v20

    :cond_214
    :try_start_214
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v22, 0xff

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11d

    :cond_255
    move-object/from16 v0, p0

    iget-object v0, v0, Lco/vine/android/widget/CounterView;->mLastPrint:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_267

    move-object/from16 v0, p0

    iput-object v14, v0, Lco/vine/android/widget/CounterView;->mLastPrint:Ljava/lang/String;

    :cond_267
    monitor-exit v21
    :try_end_268
    .catchall {:try_start_214 .. :try_end_268} :catchall_211

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lco/vine/android/widget/CounterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lco/vine/android/widget/CounterView;->mIsPaused:Z

    move/from16 v20, v0

    if-nez v20, :cond_282

    const-wide/16 v20, 0x14

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/widget/CounterView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_282
    return-void
.end method

.method protected onMeasure(II)V
    .registers 16

    const/high16 v12, 0x4000

    const/high16 v11, -0x8000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-direct {p0}, Lco/vine/android/widget/CounterView;->updateTextSizes()V

    if-ne v5, v12, :cond_51

    const-string v7, "CounterView"

    const-string v8, "onMeasure width exactly"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    :goto_21
    if-ne v2, v12, :cond_95

    const-string v7, "CounterView"

    const-string v8, "onMeasure height exactly"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :goto_2b
    const-string v7, "CounterView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onMeasure "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " * "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v4, v1}, Lco/vine/android/widget/CounterView;->setMeasuredDimension(II)V

    return-void

    :cond_51
    iget v7, p0, Lco/vine/android/widget/CounterView;->mLastDigitCount:I

    iget-wide v8, p0, Lco/vine/android/widget/CounterView;->mDrawingCount:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v7, p0, Lco/vine/android/widget/CounterView;->mMaxTextWidth:I

    add-int/lit8 v7, v7, 0x3

    mul-int/2addr v7, v0

    div-int/lit8 v8, v0, 0x3

    iget-object v9, p0, Lco/vine/android/widget/CounterView;->mBounds:[Landroid/graphics/Rect;

    const/16 v10, 0xa

    aget-object v9, v9, v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->getPaddingLeft()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->getPaddingRight()I

    move-result v8

    add-int v4, v7, v8

    if-ne v2, v11, :cond_8d

    const-string v7, "CounterView"

    const-string v8, "onMeasure width at most"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_21

    :cond_8d
    const-string v7, "CounterView"

    const-string v8, "onMeasure width unspecified"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :cond_95
    iget v7, p0, Lco/vine/android/widget/CounterView;->mMaxTextHeight:I

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->getPaddingBottom()I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v1, v7, 0x3

    if-ne v2, v11, :cond_b2

    const-string v7, "CounterView"

    const-string v8, "onMeasure height at most"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto/16 :goto_2b

    :cond_b2
    const-string v7, "CounterView"

    const-string v8, "onMeasure width unspecified"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b
.end method

.method public pause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/widget/CounterView;->mIsPaused:Z

    invoke-virtual {p0, p0}, Lco/vine/android/widget/CounterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/CounterView;->mLastDigitCount:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/widget/CounterView;->mKnownCount:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/widget/CounterView;->mKnownCountRefreshTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lco/vine/android/widget/CounterView;->mVelocityPerMS:D

    iget-object v0, p0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public resume()V
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/widget/CounterView;->mIsPaused:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/widget/CounterView;->mIsPaused:Z

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->postInvalidate()V

    :cond_a
    return-void
.end method

.method public run()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lco/vine/android/widget/CounterView;->invalidateDigitSize(Z)V

    iget-boolean v0, p0, Lco/vine/android/widget/CounterView;->mIsPaused:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->postInvalidate()V

    :cond_11
    return-void
.end method

.method public setAnimationMode(Lco/vine/android/widget/CounterView$AnimationMode;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/CounterView;->mAnimationMode:Lco/vine/android/widget/CounterView$AnimationMode;

    return-void
.end method

.method public setKnownCount(JDJ)J
    .registers 13

    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_2a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v2, p1

    sub-long v4, v0, p5

    long-to-double v4, v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p0, Lco/vine/android/widget/CounterView;->mKnownCount:J

    iput-wide v0, p0, Lco/vine/android/widget/CounterView;->mKnownCountRefreshTime:J

    :goto_15
    iput-wide p3, p0, Lco/vine/android/widget/CounterView;->mVelocityPerMS:D

    iget-object v3, p0, Lco/vine/android/widget/CounterView;->mLOCK:[I

    monitor-enter v3

    const/4 v2, 0x0

    :try_start_1b
    iput v2, p0, Lco/vine/android/widget/CounterView;->mLastDigitCount:I

    iget-object v2, p0, Lco/vine/android/widget/CounterView;->mDigitAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lco/vine/android/widget/CounterView;->invalidateDigitSize(Z)V

    monitor-exit v3
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_2d

    iget-wide v2, p0, Lco/vine/android/widget/CounterView;->mKnownCount:J

    return-wide v2

    :cond_2a
    iput-wide p1, p0, Lco/vine/android/widget/CounterView;->mKnownCount:J

    goto :goto_15

    :catchall_2d
    move-exception v2

    :try_start_2e
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v2
.end method

.method public setMaxAnimationSeparation(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/widget/CounterView;->mMaxAnimationSeparation:J

    return-void
.end method

.method public setMinAnimationSeparation(J)V
    .registers 3

    iput-wide p1, p0, Lco/vine/android/widget/CounterView;->mMinAnimationSeparation:J

    return-void
.end method

.method public setTextSize(F)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->requestLayout()V

    return-void
.end method

.method public setTypeFace(Landroid/graphics/Typeface;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/widget/CounterView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p0}, Lco/vine/android/widget/CounterView;->requestLayout()V

    return-void
.end method
