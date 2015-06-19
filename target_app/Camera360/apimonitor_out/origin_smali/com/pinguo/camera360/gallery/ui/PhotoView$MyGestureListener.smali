.class Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/ui/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PhotoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mAccScale:F

.field private mCanChangeMode:Z

.field private mDeltaY:I

.field private mDownInScrolling:Z

.field private mFirstScrollX:Z

.field private mIgnoreScalingGesture:Z

.field private mIgnoreUpEvent:Z

.field private mModeChanged:Z

.field private mScrolledAfterDown:Z

.field private mSeenScaling:Z

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V

    return-void
.end method

.method private calculateDeltaY(F)I
    .registers 11

    const/high16 v8, 0x3f00

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$27(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_e

    add-float v2, p1, v8

    float-to-int v2, v2

    :goto_d
    return v2

    :cond_e
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I

    move-result v1

    const v2, 0x3e19999a

    int-to-float v3, v1

    mul-float v0, v2, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2f

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2d

    move p1, v0

    :goto_29
    add-float v2, p1, v8

    float-to-int v2, v2

    goto :goto_d

    :cond_2d
    neg-float p1, v0

    goto :goto_29

    :cond_2f
    float-to-double v2, v0

    int-to-float v4, v1

    div-float v4, p1, v4

    float-to-double v4, v4

    const-wide v6, 0x3ff921fb54442d18L

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-float p1, v2

    goto :goto_29
.end method

.method private flingImages(FFF)Z
    .registers 9

    const/high16 v3, 0x3f00

    add-float v2, p1, v3

    float-to-int v0, v2

    add-float v2, p2, v3

    float-to-int v1, v2

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " mFilmMode:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string/jumbo v2, "PhotoView"

    const-string/jumbo v3, " flingPage"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->flingPage(II)Z

    move-result v2

    :goto_3f
    return v2

    :cond_40
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_60

    const-string/jumbo v2, "PhotoView"

    const-string/jumbo v3, " flingFilmX"

    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->flingFilmX(I)Z

    move-result v2

    goto :goto_3f

    :cond_60
    const/4 v2, 0x0

    goto :goto_3f
.end method

.method private startExtraScalingIfNeeded()V
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$29(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$30(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setExtraScalingRange(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$2(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V

    :cond_23
    return-void
.end method

.method private stopExtraScalingIfNeeded()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$29(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHandler:Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$30(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/SynchronizedHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setExtraScalingRange(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mCancelExtraScalingPending:Z
    invoke-static {v0, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$2(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V

    :cond_21
    return-void
.end method


# virtual methods
.method public onDoubleTap(FF)Z
    .registers 8

    const/4 v2, 0x1

    const/high16 v4, 0x3fc0

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mScalable:Z
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$25(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v3

    if-nez v3, :cond_d

    const/4 v2, 0x0

    :goto_c
    return v2

    :cond_d
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageScale()F

    move-result v1

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    const/high16 v3, 0x3f80

    cmpg-float v3, v1, v3

    if-lez v3, :cond_25

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v3

    if-eqz v3, :cond_2f

    :cond_25
    mul-float v3, v1, v4

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v0, p1, p2, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->zoomIn(FFF)V

    goto :goto_c

    :cond_2f
    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->resetToFullView()V

    goto :goto_c
.end method

.method public onDown(FF)V
    .registers 10

    const v6, 0x7fffffff

    const/high16 v5, 0x3f00

    const/4 v4, 0x0

    iput v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDeltaY:I

    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v3

    or-int/lit8 v3, v3, 0x1

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$20(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_87

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isScrolling()Z

    move-result v2

    if-eqz v2, :cond_87

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->stopScrolling()V

    :goto_35
    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_a6

    add-float v2, p1, v5

    float-to-int v0, v2

    add-float v2, p2, v5

    float-to-int v1, v2

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->hitTest(II)I

    move-result v3

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$31(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$14(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v3

    if-lt v2, v3, :cond_70

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$15(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v3

    if-le v2, v3, :cond_8a

    :cond_70
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v6}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$31(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    :goto_75
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v2

    if-eqz v2, :cond_86

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onDown()V

    :cond_86
    return-void

    :cond_87
    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    goto :goto_35

    :cond_8a
    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPictures:Lcom/pinguo/camera360/gallery/util/RangeArray;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$32(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/util/RangeArray;

    move-result-object v2

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;->isDeletable()Z

    move-result v2

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxDeletable:Z
    invoke-static {v3, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$33(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V

    goto :goto_75

    :cond_a6
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v2, v6}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$31(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    goto :goto_75
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 8

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    if-eqz v0, :cond_6

    :goto_5
    return v2

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->swipeImages(FF)Z
    invoke-static {v0, p3, p4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$28(Lcom/pinguo/camera360/gallery/ui/PhotoView;FF)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, " swipeImages"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    goto :goto_5

    :cond_1a
    const-string/jumbo v0, "PhotoView"

    const-string/jumbo v1, " flingImages"

    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p3, p4, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->flingImages(FFF)Z

    goto :goto_5
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onLongPress()V

    return-void
.end method

.method public onScale(FFF)Z
    .registers 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v4, :cond_7

    :cond_6
    :goto_6
    return v3

    :cond_7
    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v4, :cond_6

    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_17

    invoke-static {p3}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_17
    move v3, v2

    goto :goto_6

    :cond_19
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, p3, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->scaleBy(FFF)I

    move-result v1

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    mul-float/2addr v4, p3

    iput v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f7851ec

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_76

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    const v5, 0x3f83d70a

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_76

    move v0, v2

    :goto_3b
    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    if-eqz v4, :cond_7a

    if-eqz v0, :cond_7a

    if-gez v1, :cond_4b

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_4b
    if-lez v1, :cond_7a

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_7a

    :cond_55
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v5

    and-int/lit8 v5, v5, -0x2

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v4, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$20(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v5

    if-eqz v5, :cond_78

    :goto_6d
    #calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->setFilmMode(Z)V
    invoke-static {v4, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$22(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->onScaleEnd()V

    iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    goto :goto_6

    :cond_76
    move v0, v3

    goto :goto_3b

    :cond_78
    move v2, v3

    goto :goto_6d

    :cond_7a
    if-eqz v1, :cond_80

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->startExtraScalingIfNeeded()V

    goto :goto_6

    :cond_80
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->stopExtraScalingIfNeeded()V

    goto :goto_6
.end method

.method public onScaleBegin(FF)Z
    .registers 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->beginScale(FF)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->isAtMinimalScale()Z

    move-result v0

    if-nez v0, :cond_3c

    move v0, v1

    :goto_20
    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mCanChangeMode:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mSeenScaling:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mAccScale:F

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onScaleBegin()V

    :cond_3b
    return v2

    :cond_3c
    move v0, v2

    goto :goto_20
.end method

.method public onScaleEnd()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreScalingGesture:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mModeChanged:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->endScale()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onScaleEnd()V

    goto :goto_4
.end method

.method public onScroll(FFFF)Z
    .registers 13

    const/high16 v7, 0x3f00

    const/4 v5, 0x1

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    if-nez v4, :cond_18

    iput-boolean v5, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mScrolledAfterDown:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_3d

    move v4, v5

    :goto_16
    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    :cond_18
    neg-float v4, p1

    add-float/2addr v4, v7

    float-to-int v1, v4

    neg-float v4, p2

    add-float/2addr v4, v7

    float-to-int v2, v4

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v4

    if-eqz v4, :cond_6f

    iget-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mFirstScrollX:Z

    if-eqz v4, :cond_3f

    const-string/jumbo v4, "PhotoView"

    const-string/jumbo v6, " scrollFilmX"

    invoke-static {v4, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->scrollFilmX(I)V

    :cond_3c
    :goto_3c
    return v5

    :cond_3d
    const/4 v4, 0x0

    goto :goto_16

    :cond_3f
    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v4

    const v6, 0x7fffffff

    if-eq v4, v6, :cond_3c

    invoke-direct {p0, p4}, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->calculateDeltaY(F)I

    move-result v3

    iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDeltaY:I

    sub-int v0, v3, v4

    if-eqz v0, :cond_3c

    const-string/jumbo v4, "PhotoView"

    const-string/jumbo v6, " scrollFilmY"

    invoke-static {v4, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v4

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTouchBoxIndex:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$26(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v6

    invoke-virtual {v4, v6, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->scrollFilmY(II)V

    iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDeltaY:I

    goto :goto_3c

    :cond_6f
    const-string/jumbo v4, "PhotoView"

    const-string/jumbo v6, " scrollPage"

    invoke-static {v4, v6}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->scrollPage(II)V

    goto :goto_3c
.end method

.method public onSingleTapConfirmed(FF)Z
    .registers 9

    const/high16 v5, 0x3f00

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$20(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mFilmMode:Z
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$21(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mDownInScrolling:Z

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    const/4 v1, 0x0

    #calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->setFilmMode(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$22(Lcom/pinguo/camera360/gallery/ui/PhotoView;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    const/high16 v3, 0x3f80

    invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->setScaledFactor(IIF)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    add-float v1, p1, v5

    float-to-int v1, v1

    add-float v2, p2, v5

    float-to-int v2, v2

    #calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->switchToHitPicture(II)V
    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$23(Lcom/pinguo/camera360/gallery/ui/PhotoView;II)V

    iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    :cond_3a
    :goto_3a
    return v4

    :cond_3b
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-interface {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onSingleTapConfirmed(II)V

    goto :goto_3a
.end method

.method public onUp()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$19(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    #setter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mHolding:I
    invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$20(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->mIgnoreUpEvent:Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->snapback()V
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$34(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mViewListener:Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$24(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ViewListener;->onDown()V

    goto :goto_12
.end method
