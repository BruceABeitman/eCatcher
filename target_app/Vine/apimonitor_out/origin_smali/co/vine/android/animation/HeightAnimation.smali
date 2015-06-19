.class public Lco/vine/android/animation/HeightAnimation;
.super Landroid/view/animation/Animation;
.source "HeightAnimation.java"


# instance fields
.field private final mAnimatedView:Landroid/view/View;

.field private final mFinalHeight:I

.field private final mIsExpansion:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;ZJ)V
    .registers 12

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput-object p2, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    iput-boolean p3, p0, Lco/vine/android/animation/HeightAnimation;->mIsExpansion:Z

    invoke-virtual {p0, p4, p5}, Lco/vine/android/animation/HeightAnimation;->setDuration(J)V

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v4, 0x4000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget-object v3, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    iget-object v3, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    iget-boolean v3, p0, Lco/vine/android/animation/HeightAnimation;->mIsExpansion:Z

    if-eqz v3, :cond_45

    iget-object v3, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_45
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 6

    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    iget-object v1, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_21

    const/high16 v1, 0x3f80

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2d

    iget-boolean v1, p0, Lco/vine/android/animation/HeightAnimation;->mIsExpansion:Z

    if-eqz v1, :cond_22

    iget v1, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1c
    iget-object v1, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    iget v1, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    iget v2, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1c

    :cond_2d
    iget-boolean v1, p0, Lco/vine/android/animation/HeightAnimation;->mIsExpansion:Z

    if-eqz v1, :cond_3b

    iget v1, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_21

    :cond_3b
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lco/vine/android/animation/HeightAnimation;->mAnimatedView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget v1, p0, Lco/vine/android/animation/HeightAnimation;->mFinalHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_21
.end method
