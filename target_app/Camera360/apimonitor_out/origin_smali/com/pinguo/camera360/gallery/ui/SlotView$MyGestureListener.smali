.class Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;
.super Ljava/lang/Object;
.source "SlotView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private isDown:Z

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/SlotView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/SlotView;Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;-><init>(Lcom/pinguo/camera360/gallery/ui/SlotView;)V

    return-void
.end method

.method private cancelDown(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
    invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onUp(Z)V

    goto :goto_4
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getScrollLimit()I

    move-result v0

    if-nez v0, :cond_11

    :goto_10
    return v2

    :cond_11
    move v1, p4

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
    invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$2(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;

    move-result-object v3

    neg-float v4, v1

    float-to-int v4, v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->fling(III)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$3(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mUIListener:Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$3(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/UserInteractionListener;->onUserInteractionBegin()V

    :cond_2e
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    const/4 v2, 0x1

    goto :goto_10
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 6

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$6(Lcom/pinguo/camera360/gallery/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-void

    :cond_d
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->lockRendering()V

    :try_start_12
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onLongTap(I)V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_36

    :cond_30
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->unlockRendering()V

    goto :goto_c

    :catchall_36
    move-exception v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->unlockRendering()V

    throw v1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 11

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    move v0, p4

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mScroller:Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$2(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getScrollLimit()I

    move-result v4

    invoke-virtual {v2, v3, v5, v4}, Lcom/pinguo/camera360/gallery/ui/ScrollerHelper;->startScroll(III)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mOverscrollEffect:I
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$4(Lcom/pinguo/camera360/gallery/ui/SlotView;)I

    move-result v2

    if-nez v2, :cond_31

    if-eqz v1, :cond_31

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mPaper:Lcom/pinguo/camera360/gallery/ui/Paper;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$5(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/Paper;

    move-result-object v2

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/ui/Paper;->overScroll(F)V

    :cond_31
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->invalidate()V

    const/4 v2, 0x1

    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 7

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;

    move-result-object v1

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->lockRenderThread()V

    :try_start_9
    iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->isDown:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_36

    if-eqz v2, :cond_11

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    :goto_10
    return-void

    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotIndexByPosition(FF)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_32

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->isDown:Z

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
    invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onDown(I)V
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_36

    :cond_32
    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    goto :goto_10

    :catchall_36
    move-exception v2

    invoke-interface {v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->unlockRenderThread()V

    throw v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->cancelDown(Z)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mDownInScrolling:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$6(Lcom/pinguo/camera360/gallery/ui/SlotView;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    :goto_e
    return v5

    :cond_f
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;->getSlotIndexByPosition(FF)I

    move-result v0

    if-eq v0, v4, :cond_2d

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onSingleTapUp(I)V

    goto :goto_e

    :cond_2d
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v1

    instance-of v1, v1, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mLayout:Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$0(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/layout/BaseSlotLayout;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/layout/ExpandSlotLayout;->getTagIndexByPosition(FF)I

    move-result v0

    if-eq v0, v4, :cond_e

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/SlotView$MyGestureListener;->this$0:Lcom/pinguo/camera360/gallery/ui/SlotView;

    #getter for: Lcom/pinguo/camera360/gallery/ui/SlotView;->mListener:Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/SlotView;->access$1(Lcom/pinguo/camera360/gallery/ui/SlotView;)Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/pinguo/camera360/gallery/ui/SlotView$Listener;->onSingleTagTapUp(I)V

    goto :goto_e
.end method
