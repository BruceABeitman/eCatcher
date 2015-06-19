.class public Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.source "RotateLoadingLayout.java"


# static fields
.field static final ROTATION_ANIMATION_DURATION:I = 0x4b0


# instance fields
.field private final mRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateDrawableWhilePulling:Z

.field private mRotationPivotX:F

.field private mRotationPivotY:F

.field private repeatRotateAnim:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .registers 13

    const/4 v7, -0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f00

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    const/16 v0, 0x11

    invoke-virtual {p4, v0, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x4434

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v2, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x4b0

    invoke-virtual {v0, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private resetImageRotation()V
    .registers 1

    return-void
.end method


# virtual methods
.method protected getDefaultDrawableResId()I
    .registers 2

    sget v0, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_loading:I

    return v0
.end method

.method public onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    const/high16 v1, 0x4000

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotationPivotX:F

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotationPivotY:F

    :cond_1e
    return-void
.end method

.method protected onPullImpl(F)V
    .registers 6

    const/high16 v3, 0x4334

    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mRotateDrawableWhilePulling:Z

    if-eqz v1, :cond_b

    const/high16 v1, 0x42b4

    mul-float v0, p1, v1

    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    mul-float/2addr v2, p1

    sub-float/2addr v2, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_a
.end method

.method protected pullToRefreshImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_down:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected refreshingImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->repeatRotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected releaseToRefreshImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget v1, Lcom/handmark/pulltorefresh/library/R$drawable;->fetch_at_icon_up:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected resetImpl()V
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/RotateLoadingLayout;->resetImageRotation()V

    return-void
.end method
