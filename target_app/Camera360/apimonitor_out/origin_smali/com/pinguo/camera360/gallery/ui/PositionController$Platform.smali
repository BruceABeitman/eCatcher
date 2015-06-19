.class Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;
.super Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Platform"
.end annotation


# instance fields
.field public mCurrentX:I

.field public mCurrentY:I

.field public mDefaultX:I

.field public mDefaultY:I

.field public mFlingOffset:I

.field public mFromX:I

.field public mFromY:I

.field public mToX:I

.field public mToY:I

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;III)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_a

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_a

    :goto_9
    return v0

    :cond_a
    iput p3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromX:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromY:I

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToX:I

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToY:I

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$17()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationDuration:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFlingOffset:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->advanceAnimation()Z

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private interpolateFlingFilm(F)Z
    .registers 6

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$18(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/surpport/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->computeScrollOffset()Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$18(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/surpport/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getCurrX()I

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFlingOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    const/4 v0, -0x1

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    if-ge v2, v3, :cond_63

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mHasNext:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$5(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v0, 0x3

    :cond_28
    :goto_28
    const/4 v2, -0x1

    if-eq v0, v2, :cond_58

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$18(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/surpport/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->getCurrVelocity()F

    move-result v2

    const/high16 v3, 0x3f00

    add-float/2addr v2, v3

    float-to-int v1, v2

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_4a
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$18(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/surpport/OverScroller;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->forceFinished(Z)V

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    :cond_58
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmScroller:Lcom/pinguo/camera360/gallery/surpport/OverScroller;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$18(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/surpport/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/surpport/OverScroller;->isFinished()Z

    move-result v2

    return v2

    :cond_63
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    if-le v2, v3, :cond_28

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mHasPrev:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$6(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v2

    if-nez v2, :cond_28

    const/4 v0, 0x1

    goto :goto_28
.end method

.method private interpolateFlingPage(F)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f00

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->computeScrollOffset(F)V

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoxes:Lcom/pinguo/camera360/gallery/util/RangeArray;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$2(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/util/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    iget v6, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F

    #calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$20(Lcom/pinguo/camera360/gallery/ui/PositionController;F)V

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundLeft:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$11(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v5

    if-le v1, v5, :cond_67

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundLeft:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$11(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_67

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v5

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    :cond_60
    :goto_60
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_98

    :goto_66
    return v3

    :cond_67
    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundRight:I
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$12(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v5

    if-ge v1, v5, :cond_60

    iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundRight:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$12(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v6

    if-ne v5, v6, :cond_60

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v5

    if-eqz v5, :cond_60

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->onAbsorb(II)V

    goto :goto_60

    :cond_98
    move v3, v4

    goto :goto_66
.end method

.method private interpolateLinear(F)Z
    .registers 8

    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_13

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToX:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToY:I

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_1b

    invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/CaptureAnimation;->calculateSlide(F)F

    move-result p1

    :cond_1b
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToX:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToY:I

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_3d

    move v0, v1

    goto :goto_12

    :cond_3d
    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToX:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mToY:I

    if-eq v2, v3, :cond_12

    :cond_49
    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method protected interpolate(F)Z
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->interpolateFlingPage(F)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_9

    :cond_14
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_9
.end method

.method public startSnapback()Z
    .registers 14

    const/4 v8, 0x0

    iget-wide v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationStartTime:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-eqz v9, :cond_a

    :cond_9
    :goto_9
    return v8

    :cond_a
    iget v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mAnimationKind:I

    if-nez v9, :cond_22

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v9

    if-eqz v9, :cond_22

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;

    move-result-object v9

    invoke-interface {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->isHoldingDown()Z

    move-result v9

    if-nez v9, :cond_9

    :cond_22
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mInScaling:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$1(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoxes:Lcom/pinguo/camera360/gallery/util/RangeArray;
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$2(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/util/RangeArray;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$3(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_8f

    iget v9, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F

    const v10, 0x3f333333

    mul-float v5, v9, v10

    :goto_45
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mExtraScalingRange:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$3(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_92

    iget v9, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMax:F

    const v10, 0x3fb33333

    mul-float v4, v9, v10

    :goto_54
    iget v9, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F

    invoke-static {v9, v5, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F

    move-result v2

    iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    iget v7, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultY:I

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmMode:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$4(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-eqz v9, :cond_95

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mHasNext:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$5(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_74

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    :cond_74
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mHasPrev:Z
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$6(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v9

    if-nez v9, :cond_80

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_80
    :goto_80
    iget v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentX:I

    if-ne v9, v6, :cond_88

    iget v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mCurrentY:I

    if-eq v9, v7, :cond_9

    :cond_88
    const/4 v8, 0x2

    invoke-direct {p0, v6, v7, v8}, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->doAnimation(III)Z

    move-result v8

    goto/16 :goto_9

    :cond_8f
    iget v5, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F

    goto :goto_45

    :cond_92
    iget v4, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMax:F

    goto :goto_54

    :cond_95
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$7()I

    move-result v10

    #calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->calculateStableBound(FI)V
    invoke-static {v9, v2, v10}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$8(Lcom/pinguo/camera360/gallery/ui/PositionController;FI)V

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->viewWiderThanScaledImage(F)Z
    invoke-static {v9, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$9(Lcom/pinguo/camera360/gallery/ui/PositionController;F)Z

    move-result v9

    if-nez v9, :cond_b6

    iget v9, v0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F

    sub-float v3, v9, v2

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFocusX:F
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$10(Lcom/pinguo/camera360/gallery/ui/PositionController;)F

    move-result v9

    mul-float/2addr v9, v3

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v6, v9

    :cond_b6
    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundLeft:I
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$11(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v9

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundRight:I
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$12(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v10

    invoke-static {v6, v9, v10}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I

    move-result v6

    goto :goto_80
.end method

.method public updateDefaultXY()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mConstrained:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$13(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$14(Lcom/pinguo/camera360/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$14(Lcom/pinguo/camera360/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mViewW:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$15(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$4(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_32
    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultY:I

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$14(Lcom/pinguo/camera360/gallery/ui/PositionController;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mViewH:I
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$16(Lcom/pinguo/camera360/gallery/ui/PositionController;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_32

    :cond_49
    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultX:I

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Platform;->mDefaultY:I

    goto :goto_34
.end method
