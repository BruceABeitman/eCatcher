.class public Lus/pinguo/androidsdk/pgedit/PGEditRotateView;
.super Landroid/widget/ImageView;
.source "PGEditRotateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
    }
.end annotation


# instance fields
.field private isRotateX:Z

.field private isRotateY:Z

.field private linearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mAbleOnClick:Z

.field private mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

.field private mNowDegree:I

.field private mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

.field private mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

.field private scale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;-><init>()V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;

    invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$1;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;)V

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    return-void
.end method

.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView;Z)V
    .registers 2

    iput-boolean p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    return-void
.end method

.method private figureLeftRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)V
    .registers 3

    const/16 v0, 0x10e

    invoke-direct {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    return-void
.end method

.method private figureRightRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)V
    .registers 3

    const/16 v0, 0x5a

    invoke-direct {p0, p1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    return-void
.end method

.method private figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;IZ)V

    return-void
.end method

.method private figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;IZ)V
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v3

    if-nez v3, :cond_2e

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v3

    if-nez v3, :cond_2e

    move v0, v2

    :goto_f
    if-eqz p2, :cond_30

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I

    move-result v1

    add-int/2addr v1, p2

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    if-eqz v0, :cond_24

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    :cond_24
    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    move v0, v1

    goto :goto_f

    :cond_30
    if-eqz p3, :cond_61

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v3

    if-eqz v3, :cond_39

    move v1, v2

    :cond_39
    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    :goto_3c
    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v1

    if-eqz v1, :cond_2d

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v1

    if-eqz v1, :cond_2d

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorX:Z
    invoke-static {p1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z
    invoke-static {p1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I

    move-result v1

    add-int/lit16 v1, v1, 0xb4

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->rotate:I
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;I)V

    goto :goto_2d

    :cond_61
    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z
    invoke-static {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)Z

    move-result v3

    if-eqz v3, :cond_68

    move v1, v2

    :cond_68
    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->mirrorY:Z
    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    goto :goto_3c
.end method

.method private figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;IZ)V

    return-void
.end method

.method private rotateScale(Lcom/nineoldandroids/animation/ObjectAnimator;)V
    .registers 12

    const/high16 v9, 0x3f80

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_4f

    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v3, "scaleY"

    new-array v4, v8, [F

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    aput v5, v4, v6

    aput v9, v4, v7

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    :goto_2b
    new-instance v0, Lcom/nineoldandroids/animation/AnimatorSet;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    new-array v3, v3, [Lcom/nineoldandroids/animation/Animator;

    aput-object p1, v3, v6

    aput-object v1, v3, v7

    aput-object v2, v3, v8

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->playTogether([Lcom/nineoldandroids/animation/Animator;)V

    const-wide/16 v3, 0x15e

    invoke-virtual {v0, v3, v4}, Lcom/nineoldandroids/animation/AnimatorSet;->setDuration(J)Lcom/nineoldandroids/animation/AnimatorSet;

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v3}, Lcom/nineoldandroids/animation/AnimatorSet;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/AnimatorSet;->start()V

    return-void

    :cond_4f
    const-string/jumbo v3, "scaleX"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    const-string/jumbo v3, "scaleY"

    new-array v4, v8, [F

    aput v9, v4, v6

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    aput v5, v4, v7

    invoke-static {p0, v3, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v2

    goto :goto_2b
.end method


# virtual methods
.method public getRamib()Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    return-object v0
.end method

.method init(IIII)V
    .registers 10

    int-to-float v3, p4

    int-to-float v4, p1

    div-float v0, v3, v4

    int-to-float v3, p3

    int-to-float v4, p2

    div-float v2, v3, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v3, p1

    mul-float/2addr v3, v1

    int-to-float v4, p4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1d

    int-to-float v3, p2

    mul-float/2addr v3, v1

    int-to-float v4, p3

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1d

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    :goto_1c
    return-void

    :cond_1d
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->scale:F

    goto :goto_1c
.end method

.method rotateLeft()V
    .registers 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/high16 v7, 0x42b4

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    if-eqz v4, :cond_3b

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    if-eqz v4, :cond_3e

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v4, :cond_3c

    move v0, v2

    :goto_13
    const-string/jumbo v4, "rotation"

    const/4 v5, 0x2

    new-array v5, v5, [F

    iget v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v6, v6

    aput v6, v5, v2

    if-eqz v0, :cond_46

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    :goto_24
    aput v2, v5, v3

    invoke-static {p0, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v0, :cond_4b

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    :goto_33
    invoke-direct {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateScale(Lcom/nineoldandroids/animation/ObjectAnimator;)V

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {p0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureLeftRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)V

    :cond_3b
    return-void

    :cond_3c
    move v0, v3

    goto :goto_13

    :cond_3e
    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v4, :cond_44

    move v0, v3

    goto :goto_13

    :cond_44
    move v0, v2

    goto :goto_13

    :cond_46
    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    goto :goto_24

    :cond_4b
    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v2, v2

    sub-float/2addr v2, v7

    float-to-int v2, v2

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    goto :goto_33
.end method

.method rotateRight()V
    .registers 9

    const/4 v3, 0x1

    const/high16 v7, 0x42b4

    const/4 v2, 0x0

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    if-eqz v4, :cond_43

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    if-eqz v4, :cond_46

    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v4, :cond_44

    move v0, v2

    :goto_13
    const-string/jumbo v5, "rotation"

    const/4 v4, 0x2

    new-array v6, v4, [F

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v4, v4

    aput v4, v6, v2

    if-eqz v0, :cond_4e

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    :goto_24
    aput v4, v6, v3

    invoke-static {p0, v5, v6}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v1

    if-eqz v0, :cond_53

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    :goto_33
    invoke-direct {p0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->rotateScale(Lcom/nineoldandroids/animation/ObjectAnimator;)V

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {p0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRightRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;)V

    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    rem-int/lit16 v3, v3, 0x168

    if-nez v3, :cond_43

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    :cond_43
    return-void

    :cond_44
    move v0, v3

    goto :goto_13

    :cond_46
    iget-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v4, :cond_4c

    move v0, v3

    goto :goto_13

    :cond_4c
    move v0, v2

    goto :goto_13

    :cond_4e
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v4, v4

    add-float/2addr v4, v7

    goto :goto_24

    :cond_53
    iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v3, v3

    add-float/2addr v3, v7

    float-to-int v3, v3

    iput v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    goto :goto_33
.end method

.method public rotateRightNoWithAnimation()V
    .registers 12

    const/4 v6, 0x1

    const/high16 v10, 0x42b4

    const/4 v1, 0x0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_3f

    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v10}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {p0, v8}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :goto_2f
    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v2, v2

    add-float/2addr v2, v10

    float-to-int v2, v2

    iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    rem-int/lit16 v2, v2, 0x168

    if-nez v2, :cond_3e

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    :cond_3e
    return-void

    :cond_3f
    const-string/jumbo v2, "rotation"

    new-array v3, v6, [F

    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mNowDegree:I

    int-to-float v4, v4

    add-float/2addr v4, v10

    aput v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v2, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v9}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_2f
.end method

.method rotateX()V
    .registers 8

    const/4 v6, 0x2

    const/high16 v1, 0x4334

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    if-eqz v0, :cond_59

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_32

    const-string/jumbo v0, "rotationY"

    new-array v4, v6, [F

    fill-array-data v4, :array_5e

    invoke-static {p0, v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    :cond_32
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v5, v6, [F

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_3b
    aput v0, v5, v2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    if-eqz v0, :cond_43

    const/high16 v1, 0x43b4

    :cond_43
    aput v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateXAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    if-eqz v0, :cond_5c

    move v0, v2

    :goto_52
    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateX:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {p0, v0, v3}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    :cond_59
    return-void

    :cond_5a
    const/4 v0, 0x0

    goto :goto_3b

    :cond_5c
    move v0, v3

    goto :goto_52

    :array_5e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x34t 0x43t
    .end array-data
.end method

.method rotateY()V
    .registers 8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/high16 v1, -0x3ccc

    const/4 v2, 0x0

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    if-eqz v0, :cond_59

    iput-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAbleOnClick:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    if-nez v0, :cond_32

    const-string/jumbo v0, "rotationX"

    new-array v4, v6, [F

    fill-array-data v4, :array_5e

    invoke-static {p0, v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->linearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mAnimatorListenerAdapter:Lcom/nineoldandroids/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v4}, Lcom/nineoldandroids/animation/ObjectAnimator;->addListener(Lcom/nineoldandroids/animation/Animator$AnimatorListener;)V

    :cond_32
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    new-array v5, v6, [F

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v0, :cond_5a

    move v0, v1

    :goto_3b
    aput v0, v5, v2

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v0, :cond_43

    const/high16 v1, -0x3c4c

    :cond_43
    aput v1, v5, v3

    invoke-virtual {v4, v5}, Lcom/nineoldandroids/animation/ObjectAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRotateYAnimator:Lcom/nineoldandroids/animation/ObjectAnimator;

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    if-eqz v0, :cond_5c

    move v0, v2

    :goto_52
    iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->isRotateY:Z

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->mRamib:Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;

    invoke-direct {p0, v0, v2}, Lus/pinguo/androidsdk/pgedit/PGEditRotateView;->figureRotateAndMirrorInfoBean(Lus/pinguo/androidsdk/pgedit/PGEditRotateView$RotateAndMirrorInfoBean;Z)V

    :cond_59
    return-void

    :cond_5a
    const/4 v0, 0x0

    goto :goto_3b

    :cond_5c
    move v0, v3

    goto :goto_52

    :array_5e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x34t 0xc3t
    .end array-data
.end method
