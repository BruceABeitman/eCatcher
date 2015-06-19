.class public abstract Lcom/pinguo/album/views/GLAbsScrollWithHeadView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "GLAbsScrollWithHeadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;
    }
.end annotation


# instance fields
.field private mDownInScrolling:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeadView:Lcom/pinguo/album/views/GLBaseView;

.field private mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;-><init>(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Lcom/pinguo/album/views/GLAbsScrollWithHeadView$MyGestureListener;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-direct {v0, p1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Lcom/pinguo/album/views/utils/ViewScrollerHelper;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventWithHead(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/album/views/GLAbsScrollWithHeadView;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->formatEventBack(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private formatEventBack(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_27

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_27

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_27
    return-object p1
.end method

.method private formatEventWithHead(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_27

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_27

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_27
    return-object p1
.end method


# virtual methods
.method protected abstract eventCancelDown(Z)V
.end method

.method protected abstract eventFling()V
.end method

.method protected abstract eventLongPress(Landroid/view/MotionEvent;)V
.end method

.method protected abstract eventScroll(I)V
.end method

.method protected abstract eventShowPress(Landroid/view/MotionEvent;)Z
.end method

.method protected abstract eventSingleTapUp(Landroid/view/MotionEvent;)V
.end method

.method protected abstract getScrollLimit(Z)I
.end method

.method protected getScrollLimitWithHead()I
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v1, :cond_1b

    invoke-virtual {p0, v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getScrollLimit(Z)I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v2

    add-int v0, v1, v2

    :goto_17
    if-gez v0, :cond_1a

    const/4 v0, 0x0

    :cond_1a
    return v0

    :cond_1b
    invoke-virtual {p0, v2}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getScrollLimit(Z)I

    move-result v0

    goto :goto_17
.end method

.method protected getScrollY()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_16

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_15
    return v0

    :cond_16
    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    goto :goto_15
.end method

.method public isBegin()Z
    .registers 2

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected abstract isScrollVertical()Z
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .registers 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_22

    :goto_d
    return v1

    :pswitch_e
    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mDownInScrolling:Z

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->forceFinished()V

    goto :goto_d

    :cond_1f
    move v0, v1

    goto :goto_17

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_e
    .end packed-switch
.end method

.method protected renderParent(Lcom/pinguo/album/opengles/GLESCanvas;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_42

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_42

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollX()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-super {p0}, Lcom/pinguo/album/views/GLBaseView;->getScrollY()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/GLBaseView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/pinguo/album/views/GLBaseView;->layout(IIII)V

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/GLBaseView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V

    invoke-interface {p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    :cond_42
    return-void
.end method

.method protected final scrollerAdvanceAnimation(J)Z
    .registers 4

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->advanceAnimation(J)Z

    move-result v0

    return v0
.end method

.method protected final scrollerGetPosition()I
    .registers 4

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->getPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->getScrollLimitWithHead()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/pinguo/album/utils/Utils;->clamp(III)I

    move-result v0

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_20
    return v0
.end method

.method protected final scrollerGetVelocity()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->getCurrVelocity()F

    move-result v0

    return v0
.end method

.method protected final scrollerSetOverfling(Z)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->setOverfling(Z)V

    return-void
.end method

.method protected final scrollerSetPosition(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_20

    if-nez p1, :cond_13

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->setPosition(I)V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    iget-object v1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v1}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->setPosition(I)V

    goto :goto_12

    :cond_20
    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mScroller:Lcom/pinguo/album/views/utils/ViewScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/utils/ViewScrollerHelper;->setPosition(I)V

    goto :goto_12
.end method

.method public setHeadView(Lcom/pinguo/album/views/GLBaseView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    return-void
.end method

.method protected setScrollY(I)V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->isScrollVertical()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->mHeadView:Lcom/pinguo/album/views/GLBaseView;

    invoke-virtual {v0}, Lcom/pinguo/album/views/GLBaseView;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-super {p0, v0}, Lcom/pinguo/album/views/GLBaseView;->setScrollY(I)V

    :goto_14
    return-void

    :cond_15
    invoke-super {p0, p1}, Lcom/pinguo/album/views/GLBaseView;->setScrollY(I)V

    goto :goto_14
.end method

.method protected setScrollYNotInAnimation(I)V
    .registers 3

    if-nez p1, :cond_7

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/pinguo/album/views/GLBaseView;->setScrollY(I)V

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0, p1}, Lcom/pinguo/album/views/GLAbsScrollWithHeadView;->setScrollY(I)V

    goto :goto_6
.end method
