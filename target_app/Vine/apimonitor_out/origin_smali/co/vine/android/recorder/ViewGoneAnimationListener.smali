.class public Lco/vine/android/recorder/ViewGoneAnimationListener;
.super Ljava/lang/Object;
.source "ViewGoneAnimationListener.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iput-object v2, p0, Lco/vine/android/recorder/ViewGoneAnimationListener;->mView:Landroid/view/View;

    :cond_1d
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 2

    return-void
.end method
