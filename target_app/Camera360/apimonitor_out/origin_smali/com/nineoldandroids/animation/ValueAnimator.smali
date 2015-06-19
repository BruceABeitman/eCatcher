.class public Lcom/nineoldandroids/animation/ValueAnimator;
.super Lcom/nineoldandroids/animation/Animator;
.source "ValueAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;,
        Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;
    }
.end annotation


# static fields
.field static final ANIMATION_FRAME:I = 0x1

.field static final ANIMATION_START:I = 0x0

.field private static final DEFAULT_FRAME_DELAY:J = 0xaL

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field static final RUNNING:I = 0x1

.field static final SEEKED:I = 0x2

.field static final STOPPED:I

.field private static sAnimationHandler:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sDefaultInterpolator:Landroid/view/animation/Interpolator;

.field private static final sDelayedAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sEndingAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static sFrameDelay:J

.field private static final sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

.field private static final sPendingAnimations:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sReadyAnims:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mCurrentFraction:F

.field private mCurrentIteration:I

.field private mDelayStartTime:J

.field private mDuration:J

.field mInitialized:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mPlayingBackwards:Z

.field mPlayingState:I

.field private mRepeatCount:I

.field private mRepeatMode:I

.field private mRunning:Z

.field mSeekTime:J

.field private mStartDelay:J

.field mStartTime:J

.field private mStarted:Z

.field private mStartedDelay:Z

.field private mUpdateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

.field mValuesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/nineoldandroids/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sIntEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    new-instance v0, Lcom/nineoldandroids/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sFloatEvaluator:Lcom/nineoldandroids/animation/TypeEvaluator;

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/nineoldandroids/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sDefaultInterpolator:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$10(Lcom/nineoldandroids/animation/ValueAnimator;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    return-void
.end method

.method static synthetic access$11(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void
.end method

.method static synthetic access$12()J
    .registers 2

    sget-wide v0, Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method static synthetic access$2()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$4()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$5(Lcom/nineoldandroids/animation/ValueAnimator;)J
    .registers 3

    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .registers 1

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    return-void
.end method

.method static synthetic access$7()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sReadyAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$8()Ljava/lang/ThreadLocal;
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sEndingAnims:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$9(Lcom/nineoldandroids/animation/ValueAnimator;J)Z
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->delayedAnimationFrame(J)Z

    move-result v0

    return v0
.end method

.method public static clearAllAnimations()V
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private delayedAnimationFrame(J)Z
    .registers 8

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    if-nez v3, :cond_b

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    :cond_9
    const/4 v2, 0x0

    :goto_a
    return v2

    :cond_b
    iget-wide v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDelayStartTime:J

    sub-long v0, p1, v3

    iget-wide v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    cmp-long v3, v0, v3

    if-lez v3, :cond_9

    iget-wide v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    sub-long v3, v0, v3

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    goto :goto_a
.end method

.method private endAnimation()V
    .registers 6

    const/4 v4, 0x0

    sget-object v3, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v3, Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iget-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_3b

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_39
    if-lt v0, v1, :cond_40

    :cond_3b
    iput-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    iput-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return-void

    :cond_40
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_39
.end method

.method public static getCurrentAnimationsCount()I
    .registers 1

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .registers 2

    sget-wide v0, Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-wide v0
.end method

.method public static varargs ofFloat([F)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 2

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 2

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 3

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lcom/nineoldandroids/animation/PropertyValuesHolder;)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 2

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0, p0}, Lcom/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .registers 2

    sput-wide p0, Lcom/nineoldandroids/animation/ValueAnimator;->sFrameDelay:J

    return-void
.end method

.method private start(Z)V
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-nez v4, :cond_11

    new-instance v4, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v5, "Animators may only be run on Looper threads"

    invoke-direct {v4, v5}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_11
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    iput v8, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iput v8, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v9, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    iput-boolean v8, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    sget-object v4, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_4c

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lcom/nineoldandroids/animation/ValueAnimator;->setCurrentPlayTime(J)V

    iput v8, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v9, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_4c

    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_4a
    if-lt v1, v2, :cond_65

    :cond_4c
    sget-object v4, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_61

    new-instance v0, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;

    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;-><init>(Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;)V

    sget-object v4, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimationHandler:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_61
    invoke-virtual {v0, v8}, Lcom/nineoldandroids/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    return-void

    :cond_65
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4a
.end method

.method private startAnimation()V
    .registers 8

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    sget-object v3, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_29

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_29

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_27
    if-lt v0, v1, :cond_2a

    :cond_29
    return-void

    :cond_2a
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27
.end method


# virtual methods
.method public addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    :cond_b
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method animateValue(F)V
    .registers 6

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v3

    const/4 v0, 0x0

    :goto_c
    if-lt v0, v2, :cond_1c

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_1b

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_19
    if-lt v0, v1, :cond_26

    :cond_1b
    return-void

    :cond_1c
    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->calculateValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_26
    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v3, p0}, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_19
.end method

.method animationFrame(J)Z
    .registers 14

    const-wide/16 v9, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v0, 0x0

    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v4, :cond_14

    iput v5, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    cmp-long v4, v7, v9

    if-gez v4, :cond_1a

    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :cond_14
    :goto_14
    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    packed-switch v4, :pswitch_data_8e

    :goto_19
    return v0

    :cond_1a
    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    sub-long v7, p1, v7

    iput-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    const-wide/16 v7, -0x1

    iput-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    goto :goto_14

    :pswitch_25
    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    cmp-long v4, v7, v9

    if-lez v4, :cond_75

    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v7, p1, v7

    long-to-float v4, v7

    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    long-to-float v7, v7

    div-float v1, v4, v7

    :goto_35
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_6b

    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iget v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lt v4, v7, :cond_44

    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    const/4 v7, -0x1

    if-ne v4, v7, :cond_87

    :cond_44
    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_51

    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v2, 0x0

    :goto_4f
    if-lt v2, v3, :cond_77

    :cond_51
    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5d

    iget-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_85

    const/4 v4, 0x0

    :goto_5b
    iput-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    :cond_5d
    iget v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    float-to-int v5, v1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    rem-float/2addr v1, v6

    iget-wide v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    iget-wide v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    add-long/2addr v4, v7

    iput-wide v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :cond_6b
    :goto_6b
    iget-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v4, :cond_71

    sub-float v1, v6, v1

    :cond_71
    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_19

    :cond_75
    move v1, v6

    goto :goto_35

    :cond_77
    iget-object v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/nineoldandroids/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4f

    :cond_85
    move v4, v5

    goto :goto_5b

    :cond_87
    const/4 v0, 0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_6b

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public cancel()V
    .registers 5

    iget v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v2, :cond_20

    sget-object v2, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    sget-object v2, Lcom/nineoldandroids/animation/ValueAnimator;->sDelayedAnims:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    :cond_20
    iget-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3e

    :cond_3a
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    :cond_3d
    return-void

    :cond_3e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/Animator$AnimatorListener;

    invoke-interface {v0, p0}, Lcom/nineoldandroids/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/nineoldandroids/animation/Animator;)V

    goto :goto_34
.end method

.method public bridge synthetic clone()Lcom/nineoldandroids/animation/Animator;
    .registers 2

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->clone()Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 11

    const/4 v9, 0x0

    invoke-super {p0}, Lcom/nineoldandroids/animation/Animator;->clone()Lcom/nineoldandroids/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/ValueAnimator;

    iget-object v7, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-eqz v7, :cond_1b

    iget-object v5, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_19
    if-lt v1, v3, :cond_3d

    :cond_1b
    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    iput-boolean v9, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    iput v9, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentIteration:I

    iput-boolean v9, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    iput v9, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    iput-boolean v9, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    iget-object v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v6, :cond_3c

    array-length v4, v6

    new-array v7, v4, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    iput-object v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_3a
    if-lt v1, v4, :cond_4b

    :cond_3c
    return-object v0

    :cond_3d
    iget-object v8, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_4b
    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->clone()Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    iget-object v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aput-object v2, v7, v1

    iget-object v7, v0, Lcom/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a
.end method

.method public end()V
    .registers 3

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    sget-object v0, Lcom/nineoldandroids/animation/ValueAnimator;->sPendingAnimations:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartedDelay:Z

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->startAnimation()V

    :cond_22
    :goto_22
    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    if-lez v0, :cond_3d

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    :goto_31
    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->endAnimation()V

    return-void

    :cond_35
    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    goto :goto_22

    :cond_3d
    const/high16 v0, 0x3f80

    invoke-virtual {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->animateValue(F)V

    goto :goto_31
.end method

.method public getAnimatedFraction()F
    .registers 2

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mCurrentFraction:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4

    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getCurrentPlayTime()J
    .registers 5

    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-nez v0, :cond_b

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0

    :cond_b
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_a
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .registers 2

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .registers 2

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return v0
.end method

.method public getRepeatMode()I
    .registers 2

    iget v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return v0
.end method

.method public getStartDelay()J
    .registers 3

    iget-wide v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-wide v0
.end method

.method public getValues()[Lcom/nineoldandroids/animation/PropertyValuesHolder;
    .registers 2

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    return-object v0
.end method

.method initAnimation()V
    .registers 4

    iget-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    if-nez v2, :cond_d

    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v1, :cond_e

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    :cond_d
    return-void

    :cond_e
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->init()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public isRunning()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-eq v1, v0, :cond_a

    iget-boolean v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRunning:Z

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :cond_a
    return v0
.end method

.method public isStarted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStarted:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .registers 2

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public removeUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V
    .registers 3

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mUpdateListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public reverse()V
    .registers 9

    const/4 v7, 0x1

    iget-boolean v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    if-eqz v6, :cond_1d

    const/4 v6, 0x0

    :goto_6
    iput-boolean v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingBackwards:Z

    iget v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    if-ne v6, v7, :cond_1f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    sub-long v0, v2, v6

    iget-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    sub-long v4, v6, v0

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    :goto_1c
    return-void

    :cond_1d
    move v6, v7

    goto :goto_6

    :cond_1f
    invoke-direct {p0, v7}, Lcom/nineoldandroids/animation/ValueAnimator;->start(Z)V

    goto :goto_1c
.end method

.method public setCurrentPlayTime(J)V
    .registers 7

    invoke-virtual {p0}, Lcom/nineoldandroids/animation/ValueAnimator;->initAnimation()V

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_11

    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mSeekTime:J

    const/4 v2, 0x2

    iput v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mPlayingState:I

    :cond_11
    sub-long v2, v0, p1

    iput-wide v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartTime:J

    invoke-virtual {p0, v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->animationFrame(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/nineoldandroids/animation/Animator;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mDuration:J

    return-object p0
.end method

.method public setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V
    .registers 4

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v0, v0

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setEvaluator(Lcom/nineoldandroids/animation/TypeEvaluator;)V

    :cond_13
    return-void
.end method

.method public varargs setFloatValues([F)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_22

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_1f
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_6

    :cond_22
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1f
.end method

.method public varargs setIntValues([I)V
    .registers 6

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_22

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    invoke-static {v2, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_1f
    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_6

    :cond_22
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v3

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1f
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3

    if-eqz p1, :cond_5

    iput-object p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .registers 7

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    array-length v1, p1

    if-nez v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v1, v1

    if-nez v1, :cond_23

    :cond_10
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/nineoldandroids/animation/PropertyValuesHolder;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-static {v2, v3, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/nineoldandroids/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/nineoldandroids/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V

    :goto_20
    iput-boolean v4, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    goto :goto_6

    :cond_23
    iget-object v1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v0, v1, v4

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_20
.end method

.method public setRepeatCount(I)V
    .registers 2

    iput p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatCount:I

    return-void
.end method

.method public setRepeatMode(I)V
    .registers 2

    iput p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mRepeatMode:I

    return-void
.end method

.method public setStartDelay(J)V
    .registers 3

    iput-wide p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mStartDelay:J

    return-void
.end method

.method public varargs setValues([Lcom/nineoldandroids/animation/PropertyValuesHolder;)V
    .registers 7

    array-length v1, p1

    iput-object p1, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v1, :cond_11

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mInitialized:Z

    return-void

    :cond_11
    aget-object v2, p1, v0

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValuesMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nineoldandroids/animation/ValueAnimator;->start(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ValueAnimator@"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    if-eqz v2, :cond_22

    const/4 v0, 0x0

    :goto_1d
    iget-object v2, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    array-length v2, v2

    if-lt v0, v2, :cond_23

    :cond_22
    return-object v1

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "\n    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/nineoldandroids/animation/ValueAnimator;->mValues:[Lcom/nineoldandroids/animation/PropertyValuesHolder;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/nineoldandroids/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method
