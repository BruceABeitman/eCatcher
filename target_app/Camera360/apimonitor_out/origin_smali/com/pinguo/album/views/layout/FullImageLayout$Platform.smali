.class Lcom/pinguo/album/views/layout/FullImageLayout$Platform;
.super Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;
.source "FullImageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/layout/FullImageLayout;
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

.field final synthetic this$0:Lcom/pinguo/album/views/layout/FullImageLayout;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Platform;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V

    return-void
.end method

.method static synthetic access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Platform;III)Z
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->doAnimation(III)Z

    move-result v0

    return v0
.end method

.method private doAnimation(III)Z
    .registers 7

    const/4 v0, 0x0

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    if-ne v1, p1, :cond_a

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    if-ne v1, p2, :cond_a

    :goto_9
    return v0

    :cond_a
    iput p3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromY:I

    iput p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I

    iput p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToY:I

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->startTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J

    invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$15()[I

    move-result-object v1

    aget v1, v1, p3

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationDuration:I

    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFlingOffset:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->advanceAnimation()Z

    const/4 v0, 0x1

    goto :goto_9
.end method

.method private interpolateFlingFilm(F)Z
    .registers 5

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$16(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$16(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFlingOffset:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    const/4 v0, -0x1

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    if-ge v1, v2, :cond_44

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mHasNext:Z
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$17(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v0, 0x3

    :cond_28
    :goto_28
    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$16(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/widget/Scroller;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    :cond_39
    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmScroller:Landroid/widget/Scroller;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$16(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    return v1

    :cond_44
    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    if-le v1, v2, :cond_28

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mHasPrev:Z
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$18(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v1

    if-nez v1, :cond_28

    const/4 v0, 0x1

    goto :goto_28
.end method

.method private interpolateFlingPage(F)Z
    .registers 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/high16 v7, 0x3f00

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/pinguo/album/views/utils/FlingScroller;->computeScrollOffset(F)V

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$2(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/utils/RangeArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    iget v6, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F

    #calls: Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
    invoke-static {v5, v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$20(Lcom/pinguo/album/views/layout/FullImageLayout;F)V

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrX()I

    move-result v5

    iput v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$9(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v5

    if-le v1, v5, :cond_5f

    iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
    invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$9(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v6

    if-ne v5, v6, :cond_5f

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrVelocityX()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v2, v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onAbsorb(II)V

    :cond_58
    :goto_58
    const/high16 v5, 0x3f80

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_88

    :goto_5e
    return v3

    :cond_5f
    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$10(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v5

    if-ge v1, v5, :cond_58

    iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
    invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$10(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v6

    if-ne v5, v6, :cond_58

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrVelocityX()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v7

    float-to-int v2, v5

    iget-object v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
    invoke-static {v5}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;

    move-result-object v5

    invoke-interface {v5, v2, v3}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onAbsorb(II)V

    goto :goto_58

    :cond_88
    move v3, v4

    goto :goto_5e
.end method

.method private interpolateLinear(F)Z
    .registers 8

    const/16 v5, 0x9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_13

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToY:I

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    :cond_12
    :goto_12
    return v0

    :cond_13
    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_1b

    invoke-static {p1}, Lcom/pinguo/album/animations/CaptureAnim;->calculateSlide(F)F

    move-result p1

    :cond_1b
    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I

    iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToY:I

    iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mFromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    if-ne v2, v5, :cond_3d

    move v0, v1

    goto :goto_12

    :cond_3d
    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToX:I

    if-ne v2, v3, :cond_49

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mToY:I

    if-eq v2, v3, :cond_12

    :cond_49
    move v0, v1

    goto :goto_12
.end method


# virtual methods
.method protected interpolate(F)Z
    .registers 4

    iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->interpolateFlingPage(F)Z

    move-result v0

    :goto_9
    return v0

    :cond_a
    iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_14

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->interpolateFlingFilm(F)Z

    move-result v0

    goto :goto_9

    :cond_14
    invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->interpolateLinear(F)Z

    move-result v0

    goto :goto_9
.end method

.method public startSnapback()Z
    .registers 13

    const/4 v7, 0x0

    iget-wide v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_a

    :cond_9
    :goto_9
    return v7

    :cond_a
    iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mAnimationKind:I

    if-nez v8, :cond_1a

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->isHoldingDown()Z

    move-result v8

    if-nez v8, :cond_9

    :cond_1a
    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mInScale:Z
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$2(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/utils/RangeArray;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$3(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v8

    if-eqz v8, :cond_6e

    iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F

    const v9, 0x3f333333

    mul-float v4, v8, v9

    :goto_3d
    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$3(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v8

    if-eqz v8, :cond_71

    iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F

    const v9, 0x3fb33333

    mul-float v3, v8, v9

    :goto_4c
    iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F

    invoke-static {v8, v4, v3}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F

    move-result v1

    iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$4(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v8

    if-eqz v8, :cond_74

    iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    :goto_60
    iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentX:I

    if-ne v8, v5, :cond_68

    iget v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mCurrentY:I

    if-eq v8, v6, :cond_9

    :cond_68
    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->doAnimation(III)Z

    move-result v7

    goto :goto_9

    :cond_6e
    iget v4, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F

    goto :goto_3d

    :cond_71
    iget v3, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F

    goto :goto_4c

    :cond_74
    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$5()I

    move-result v9

    #calls: Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(FI)V
    invoke-static {v8, v1, v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$6(Lcom/pinguo/album/views/layout/FullImageLayout;FI)V

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #calls: Lcom/pinguo/album/views/layout/FullImageLayout;->viewWiderThanScaledImage(F)Z
    invoke-static {v8, v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$7(Lcom/pinguo/album/views/layout/FullImageLayout;F)Z

    move-result v8

    if-nez v8, :cond_95

    iget v8, v0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F

    sub-float v2, v8, v1

    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusX:F
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$8(Lcom/pinguo/album/views/layout/FullImageLayout;)F

    move-result v8

    mul-float/2addr v8, v2

    const/high16 v9, 0x3f00

    add-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v5, v8

    :cond_95
    iget-object v8, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundLeft:I
    invoke-static {v8}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$9(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v8

    iget-object v9, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundRight:I
    invoke-static {v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$10(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v9

    invoke-static {v5, v8, v9}, Lcom/pinguo/album/utils/Utils;->clamp(III)I

    move-result v5

    goto :goto_60
.end method

.method public updateDefaultXY()V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrained:Z
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$11(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$12(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$12(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mViewW:I
    invoke-static {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$13(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$4(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_32
    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mConstrainedFrame:Landroid/graphics/Rect;
    invoke-static {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$12(Lcom/pinguo/album/views/layout/FullImageLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mViewH:I
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$14(Lcom/pinguo/album/views/layout/FullImageLayout;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    goto :goto_32

    :cond_49
    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultX:I

    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Platform;->mDefaultY:I

    goto :goto_34
.end method
