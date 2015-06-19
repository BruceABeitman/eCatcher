.class public Lco/vine/android/animation/SmoothAnimator;
.super Ljava/lang/Object;
.source "SmoothAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/animation/SmoothAnimator$AnimationListener;
    }
.end annotation


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field protected mDurationF:F

.field private final mPoster:Landroid/view/View;

.field protected mStartTime:J


# direct methods
.method public constructor <init>(Landroid/view/View;FI)V
    .registers 8

    const/high16 v3, 0x4000

    const/high16 v2, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/animation/SmoothAnimator;->mPoster:Landroid/view/View;

    iput p2, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    int-to-float v0, p3

    iput v0, p0, Lco/vine/android/animation/SmoothAnimator;->mDurationF:F

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lco/vine/android/animation/SmoothAnimator;->mD:F

    iput v0, p0, Lco/vine/android/animation/SmoothAnimator;->mA:F

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    iget v1, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lco/vine/android/animation/SmoothAnimator;->mB:F

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lco/vine/android/animation/SmoothAnimator;->mC:F

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lco/vine/android/animation/SmoothAnimator;->mCanceled:Z

    return-void
.end method

.method public onCancel()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    return-void
.end method

.method public onUpdate(FF)V
    .registers 3

    return-void
.end method

.method public run()V
    .registers 7

    const/high16 v5, 0x3f80

    iget-boolean v1, p0, Lco/vine/android/animation/SmoothAnimator;->mCanceled:Z

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lco/vine/android/animation/SmoothAnimator;->onCancel()V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lco/vine/android/animation/SmoothAnimator;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lco/vine/android/animation/SmoothAnimator;->mDurationF:F

    div-float v0, v1, v2

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_21

    invoke-virtual {p0, v5, v5}, Lco/vine/android/animation/SmoothAnimator;->onUpdate(FF)V

    invoke-virtual {p0}, Lco/vine/android/animation/SmoothAnimator;->onStop()V

    goto :goto_9

    :cond_21
    invoke-virtual {p0, v0}, Lco/vine/android/animation/SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/animation/SmoothAnimator;->onUpdate(FF)V

    iget-object v1, p0, Lco/vine/android/animation/SmoothAnimator;->mPoster:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_9
.end method

.method public start()V
    .registers 3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/animation/SmoothAnimator;->mStartTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/animation/SmoothAnimator;->mCanceled:Z

    invoke-virtual {p0}, Lco/vine/android/animation/SmoothAnimator;->onStart()V

    iget-object v0, p0, Lco/vine/android/animation/SmoothAnimator;->mPoster:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public transform(F)F
    .registers 5

    const/high16 v2, 0x3f80

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_d

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    :goto_c
    return v0

    :cond_d
    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1c

    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mB:F

    iget v1, p0, Lco/vine/android/animation/SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_c

    :cond_1c
    iget v0, p0, Lco/vine/android/animation/SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_c
.end method
