.class public Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;
.super Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field static final FLIP_ANIMATION_DURATION:I = 0x96


# instance fields
.field private mEnabled:Z

.field private final mResetRotateAnimation:Landroid/view/animation/Animation;

.field private final mRotateAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V
    .registers 13

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/handmark/pulltorefresh/library/internal/LoadingLayout;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/m;Landroid/content/res/TypedArray;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    sget-object v0, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;

    if-ne p2, v0, :cond_54

    const/16 v0, -0xb4

    move v7, v0

    :goto_d
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v7

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void

    :cond_54
    const/16 v0, 0xb4

    move v7, v0

    goto :goto_d
.end method

.method private getDrawableRotationAngle()F
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    sget-object v1, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout$1;->$SwitchMap$com$handmark$pulltorefresh$library$PullToRefreshBase$Mode:[I

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mMode:Lcom/handmark/pulltorefresh/library/g;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/g;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2a

    goto :goto_5

    :pswitch_14
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/m;

    sget-object v1, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;

    if-ne v0, v1, :cond_1d

    const/high16 v0, 0x42b4

    goto :goto_5

    :cond_1d
    const/high16 v0, 0x4334

    goto :goto_5

    :pswitch_20
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mScrollDirection:Lcom/handmark/pulltorefresh/library/m;

    sget-object v2, Lcom/handmark/pulltorefresh/library/m;->b:Lcom/handmark/pulltorefresh/library/m;

    if-ne v1, v2, :cond_5

    const/high16 v0, 0x4387

    goto :goto_5

    nop

    :pswitch_data_2a
    .packed-switch 0x1
        :pswitch_14
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public disableAnimation()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    return-void
.end method

.method public enableAnimation()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    return-void
.end method

.method protected getDefaultDrawableResId()I
    .registers 2

    sget v0, Lcom/handmark/pulltorefresh/library/ac;->default_ptr_flip:I

    return v0
.end method

.method protected onLoadingDrawableSet(Landroid/graphics/drawable/Drawable;)V
    .registers 8

    const/high16 v5, 0x4000

    if-eqz p1, :cond_4e

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    iget-object v3, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int v1, v4, v1

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v0, v4, v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    invoke-virtual {v3, v1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-direct {p0}, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->getDrawableRotationAngle()F

    move-result v0

    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    div-float/2addr v1, v5

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v2, v2

    div-float/2addr v2, v5

    invoke-virtual {v3, v0, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_4e
    return-void
.end method

.method protected onPullImpl(F)V
    .registers 2

    return-void
.end method

.method protected pullToRefreshImpl()V
    .registers 3

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mResetRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_15
    return-void
.end method

.method protected refreshingImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method protected releaseToRefreshImpl()V
    .registers 3

    iget-boolean v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mEnabled:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_4
.end method

.method protected resetImpl()V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/internal/VariableLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
