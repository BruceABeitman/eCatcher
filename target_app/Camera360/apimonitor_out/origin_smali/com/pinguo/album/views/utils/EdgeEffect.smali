.class public Lcom/pinguo/album/views/utils/EdgeEffect;
.super Ljava/lang/Object;
.source "EdgeEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;
    }
.end annotation


# static fields
.field private static final EPSILON:F = 0.0010f

.field private static final HELD_EDGE_ALPHA:F = 0.7f

.field private static final HELD_EDGE_SCALE_Y:F = 0.5f

.field private static final HELD_GLOW_ALPHA:F = 0.5f

.field private static final HELD_GLOW_SCALE_Y:F = 0.5f

.field private static final MAX_ALPHA:F = 0.8f

.field private static final MAX_GLOW_HEIGHT:F = 4.0f

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x3e8

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 1.1f

.field private static final PULL_DISTANCE_EDGE_FACTOR:I = 0x7

.field private static final PULL_DISTANCE_GLOW_FACTOR:I = 0x7

.field private static final PULL_EDGE_BEGIN:F = 0.6f

.field private static final PULL_GLOW_BEGIN:F = 1.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RECEDE_TIME:I = 0x3e8

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "EdgeEffect"

.field private static final VELOCITY_EDGE_FACTOR:I = 0x8

.field private static final VELOCITY_GLOW_FACTOR:I = 0x10


# instance fields
.field private final MIN_WIDTH:I

.field private mDuration:F

.field private final mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

.field private mEdgeAlpha:F

.field private mEdgeAlphaFinish:F

.field private mEdgeAlphaStart:F

.field private mEdgeScaleY:F

.field private mEdgeScaleYFinish:F

.field private mEdgeScaleYStart:F

.field private final mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private mHeight:I

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mMinWidth:I

.field private mPullDistance:F

.field private mStartTime:J

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->MIN_WIDTH:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    new-instance v0, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const v1, 0x7f02000f

    invoke-direct {v0, p1, v1}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    new-instance v0, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const v1, 0x7f020010

    invoke-direct {v0, p1, v1}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4396

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mMinWidth:I

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .registers 13

    const/4 v11, 0x3

    const/high16 v10, 0x447a

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    sub-long v5, v3, v5

    long-to-float v5, v5

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    div-float/2addr v5, v6

    invoke-static {v5, v9}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    iget v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    iget v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    iget v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    const v5, 0x3f7fbe77

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_54

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    packed-switch v5, :pswitch_data_c0

    :cond_54
    :goto_54
    return-void

    :pswitch_55
    iput v11, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    iput v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    :pswitch_78
    const/4 v5, 0x4

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    iput v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    iput v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    goto :goto_54

    :pswitch_9c
    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_b8

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    mul-float/2addr v5, v6

    div-float v0, v9, v5

    :goto_a9
    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iget v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iget v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    sub-float/2addr v6, v7

    mul-float/2addr v6, v1

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v11, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    goto :goto_54

    :cond_b8
    const v0, 0x7f7fffff

    goto :goto_a9

    :pswitch_bc
    const/4 v5, 0x0

    iput v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    goto :goto_54

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_78
        :pswitch_55
        :pswitch_bc
        :pswitch_9c
    .end packed-switch
.end method


# virtual methods
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;)Z
    .registers 14

    invoke-direct {p0}, Lcom/pinguo/album/views/utils/EdgeEffect;->update()V

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->getIntrinsicHeight()I

    move-result v5

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->getIntrinsicWidth()I

    move-result v7

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v8, v5

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    int-to-float v9, v7

    div-float/2addr v8, v9

    const v9, 0x3f19999a

    mul-float/2addr v8, v9

    int-to-float v9, v5

    const/high16 v10, 0x4080

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v4, v8

    iget v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_9d

    iget v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v6, v8, 0x2

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v6

    invoke-virtual {v8, v6, v9, v10, v4}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setBounds(IIII)V

    :goto_5c
    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->draw(Lcom/pinguo/album/opengles/GLESCanvas;)V

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    const/high16 v11, 0x3f80

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    const/high16 v10, 0x437f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {v8, v9}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setAlpha(I)V

    int-to-float v8, v1

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    mul-float/2addr v8, v9

    float-to-int v0, v8

    iget v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mMinWidth:I

    if-ge v8, v9, :cond_a7

    iget v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    iget v9, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mMinWidth:I

    sub-int/2addr v8, v9

    div-int/lit8 v2, v8, 0x2

    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    iget v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    sub-int/2addr v10, v2

    invoke-virtual {v8, v2, v9, v10, v0}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setBounds(IIII)V

    :goto_92
    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    invoke-virtual {v8, p1}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->draw(Lcom/pinguo/album/opengles/GLESCanvas;)V

    iget v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    if-eqz v8, :cond_b1

    const/4 v8, 0x1

    :goto_9c
    return v8

    :cond_9d
    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlow:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v4}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_5c

    :cond_a7
    iget-object v8, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdge:Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    invoke-virtual {v8, v9, v10, v11, v0}, Lcom/pinguo/album/views/utils/EdgeEffect$Drawable;->setBounds(IIII)V

    goto :goto_92

    :cond_b1
    const/4 v8, 0x0

    goto :goto_9c
.end method

.method public finish()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    return-void
.end method

.method public isFinished()Z
    .registers 2

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public onAbsorb(I)V
    .registers 7

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    const/4 v0, 0x2

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    const/16 v0, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    const v0, 0x3dcccccd

    int-to-float v1, p1

    const v2, 0x3cf5c28f

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    iput v3, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iput v3, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iput v3, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iput v3, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    const/4 v0, 0x0

    mul-int/lit8 v1, p1, 0x8

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    mul-int/lit8 v0, p1, 0x8

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    const v0, 0x3ccccccd

    div-int/lit8 v1, p1, 0x64

    mul-int/2addr v1, p1

    int-to-float v1, v1

    const v2, 0x391d4952

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const/high16 v1, 0x3fe0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v1, p1, 0x10

    int-to-float v1, v1

    const v2, 0x3727c5ac

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    return-void
.end method

.method public onPull(F)V
    .registers 13

    const/4 v10, 0x1

    const/high16 v9, 0x40e0

    const/high16 v6, 0x3f80

    const v8, 0x3f4ccccd

    const/4 v7, 0x0

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v2

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1e

    iget-wide v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    sub-long v4, v2, v4

    long-to-float v4, v4

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1e

    :goto_1d
    return-void

    :cond_1e
    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    if-eq v4, v10, :cond_24

    iput v6, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    :cond_24
    iput v10, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    iput-wide v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    const/high16 v4, 0x4327

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    add-float/2addr v4, p1

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v4, 0x3f19999a

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    const/high16 v4, 0x3f00

    mul-float v5, v0, v9

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3f8ccccd

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v4, p1, v7

    if-lez v4, :cond_78

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    cmpg-float v4, v4, v7

    if-gez v4, :cond_78

    neg-float v1, v1

    :cond_78
    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_80

    iput v7, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    :cond_80
    const/high16 v4, 0x4080

    iget v5, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    mul-float v6, v1, v9

    add-float/2addr v5, v6

    invoke-static {v7, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    iget v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    goto/16 :goto_1d
.end method

.method public onRelease()V
    .registers 4

    const/4 v2, 0x0

    iput v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mPullDistance:F

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x3

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mState:I

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlpha:F

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaStart:F

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleY:F

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYStart:F

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlpha:F

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleY:F

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYStart:F

    iput v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeAlphaFinish:F

    iput v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mEdgeScaleYFinish:F

    iput v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowAlphaFinish:F

    iput v2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mStartTime:J

    const/high16 v0, 0x447a

    iput v0, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mDuration:F

    goto :goto_d
.end method

.method public setSize(II)V
    .registers 3

    iput p1, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mWidth:I

    iput p2, p0, Lcom/pinguo/album/views/utils/EdgeEffect;->mHeight:I

    return-void
.end method
