.class public Lcom/pinguo/camera360/gallery/surpport/OverScroller;
.super Ljava/lang/Object;
.source "OverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private final mFlywheel:Z

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

.field private final mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/high16 v1, 0x3f80

    const/high16 v0, 0x4100

    sput v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->sViscousFluidScale:F

    sput v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->sViscousFluidNormalize:F

    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->viscousFluid(F)F

    move-result v0

    div-float v0, v1, v0

    sput v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->sViscousFluidNormalize:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .registers 4

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .registers 6

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .registers 6

    invoke-direct {p0, p1, p2, p5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    iput-boolean p3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mFlywheel:Z

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    new-instance v0, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-static {p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->initFromContext(Landroid/content/Context;)V

    return-void
.end method

.method static viscousFluid(F)F
    .registers 5

    const/high16 v3, 0x3f80

    sget v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    cmpg-float v1, p0, v3

    if-gez v1, :cond_17

    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    :goto_13
    sget v1, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    return p0

    :cond_17
    const v0, 0x3ebc5ab2

    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_13
.end method


# virtual methods
.method public abortAnimation()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->finish()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .registers 9

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    :goto_7
    return v6

    :cond_8
    iget v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mMode:I

    packed-switch v6, :pswitch_data_84

    :cond_d
    :goto_d
    const/4 v6, 0x1

    goto :goto_7

    :pswitch_f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$7(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    sub-long v1, v4, v6

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$6(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v6, v1, v6

    if-gez v6, :cond_44

    long-to-float v6, v1

    int-to-float v7, v0

    div-float v3, v6, v7

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v6, :cond_3d

    invoke-static {v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->viscousFluid(F)F

    move-result v3

    :goto_32
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->updateScroll(F)V

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6, v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_d

    :cond_3d
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v6, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    goto :goto_32

    :cond_44
    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->abortAnimation()V

    goto :goto_d

    :pswitch_48
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_65

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->finish()V

    :cond_65
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->update()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->finish()V

    goto :goto_d

    nop

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_f
        :pswitch_48
    .end packed-switch
.end method

.method public extendDuration(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->extendDuration(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .registers 20

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v10}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .registers 19

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mFlywheel:Z

    if-eqz v0, :cond_36

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v7

    int-to-float v0, p3

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    int-to-float v0, p4

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    invoke-static {v7}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_36

    int-to-float v0, p3

    add-float/2addr v0, v6

    float-to-int p3, v0

    int-to-float v0, p4

    add-float/2addr v0, v7

    float-to-int p4, v0

    :cond_36
    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    move v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->fling(IIIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    move v1, p2

    move v2, p4

    move v3, p7

    move/from16 v4, p8

    move/from16 v5, p10

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public final forceFinished(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #setter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v1, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$1(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;Z)V

    #setter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$1(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;Z)V

    return-void
.end method

.method public getCurrVelocity()F
    .registers 4

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrVelocity:F
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$3(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    return v1
.end method

.method public final getCurrX()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$2(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mCurrentPosition:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$2(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$6(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mDuration:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$6(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$5(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$5(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$4(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$4(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public isOverScrolled()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$8(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_22

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinished:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$0(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mState:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$8(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_22

    :cond_20
    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public isScrollingInDirection(FF)Z
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$5(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$4(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v0, v2, v3

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mFinal:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$5(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStart:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$4(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)I

    move-result v3

    sub-int v1, v2, v3

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3e

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v0

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    int-to-float v3, v1

    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3e

    const/4 v2, 0x1

    :goto_3d
    return v2

    :cond_3e
    const/4 v2, 0x0

    goto :goto_3d
.end method

.method public notifyHorizontalEdgeReached(III)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->setFriction(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method public springBack(IIIIII)Z
    .registers 11

    const/4 v2, 0x1

    iput v2, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mMode:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p1, p3, p4}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v3, p2, p5, p6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->springback(III)Z

    move-result v1

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    const/4 v2, 0x0

    :cond_14
    return v2
.end method

.method public startScroll(IIII)V
    .registers 11

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .registers 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mMode:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startScroll(III)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    invoke-virtual {v0, p2, p4, p5}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .registers 9

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerX:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$7(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->mScrollerY:Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;

    #getter for: Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->mStartTime:J
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;->access$7(Lcom/pinguo/camera360/gallery/surpport/OverScroller$SplineOverScroller;)J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long v4, v2, v0

    long-to-int v4, v4

    return v4
.end method
