.class public Lcom/pinguo/camera360/shop/view/ScrollGallery;
.super Landroid/widget/Gallery;
.source "ScrollGallery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
    }
.end annotation


# static fields
.field private static final AUTO_SCROLL_TIME:I = 0xbb8

.field private static final HANDLER_MSG:I = 0x64

.field private static final LONG_PRESS_RESPONSETIME:I = 0xc8

.field private static final TOUCH_SLOP:I = 0x14


# instance fields
.field private handler:Landroid/os/Handler;

.field private isAutoScroll:Z

.field private isMoved:Z

.field private isReleased:Z

.field private mAutoScrollTime:I

.field private mCounter:I

.field private mIsInLongPress:Z

.field private mLastMotionX:I

.field private mLastMotionY:I

.field private mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

.field private mLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    new-instance v0, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery$1;-><init>(Lcom/pinguo/camera360/shop/view/ScrollGallery;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->init()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/view/ScrollGallery;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    return v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/shop/view/ScrollGallery;)I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I

    return v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/shop/view/ScrollGallery;I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isReleased:Z

    return v0
.end method

.method static synthetic access$4(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isMoved:Z

    return v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/shop/view/ScrollGallery;)Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    return-object v0
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/shop/view/ScrollGallery;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mIsInLongPress:Z

    return-void
.end method

.method private init()V
    .registers 3

    const/4 v1, 0x0

    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setAnimationDuration(I)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->setFadingEdgeLength(I)V

    new-instance v0, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery$2;-><init>(Lcom/pinguo/camera360/shop/view/ScrollGallery;)V

    iput-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private startAutoScroll()V
    .registers 5

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private stopAutoScroll()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->stopAutoScroll()V

    :cond_7
    invoke-super {p0}, Landroid/widget/Gallery;->onDetachedFromWindow()V

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 9

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_24

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->scrollLeft()V

    :goto_16
    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->handler:Landroid/os/Handler;

    iget v1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    const/4 v0, 0x1

    return v0

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->scrollRight()V

    goto :goto_16
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mIsInLongPress:Z

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    invoke-interface {v0}, Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;->onLongPress()V

    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    const/16 v5, 0x14

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_5a

    :cond_15
    :goto_15
    invoke-super {p0, p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :pswitch_1a
    iput v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLastMotionX:I

    iput v1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLastMotionY:I

    iget v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mCounter:I

    iput-boolean v3, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isReleased:Z

    iput-boolean v3, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isMoved:Z

    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xc8

    invoke-virtual {p0, v2, v3, v4}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_15

    :pswitch_30
    iget-boolean v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isMoved:Z

    if-nez v2, :cond_15

    iget v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLastMotionX:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v5, :cond_46

    iget v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLastMotionY:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v5, :cond_15

    :cond_46
    iput-boolean v4, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isMoved:Z

    goto :goto_15

    :pswitch_49
    iput-boolean v4, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isReleased:Z

    iget-boolean v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mIsInLongPress:Z

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    invoke-interface {v2}, Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;->onLongPressUp()V

    goto :goto_15

    nop

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_49
        :pswitch_30
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/Gallery;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_d

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->startAutoScroll()V

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->stopAutoScroll()V

    goto :goto_c
.end method

.method protected scrollLeft()V
    .registers 6

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getAutoScrollTime(I)I

    move-result v2

    if-lez v2, :cond_28

    iput v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    :cond_28
    return-void
.end method

.method protected scrollRight()V
    .registers 6

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    instance-of v3, v3, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    if-eqz v3, :cond_28

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->getSelectedItemPosition()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getAutoScrollTime(I)I

    move-result v2

    if-lez v2, :cond_28

    iput v2, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    :cond_28
    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    instance-of v2, p1, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    if-eqz v2, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getAutoScrollTime(I)I

    move-result v1

    if-lez v1, :cond_13

    iput v1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mAutoScrollTime:I

    :cond_13
    return-void
.end method

.method public setAutoScroll(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    if-eq p1, v0, :cond_d

    iput-boolean p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    iget-boolean v0, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->isAutoScroll:Z

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->startAutoScroll()V

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-direct {p0}, Lcom/pinguo/camera360/shop/view/ScrollGallery;->stopAutoScroll()V

    goto :goto_d
.end method

.method public setOnLongPressListener(Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/view/ScrollGallery;->mLongPressListener:Lcom/pinguo/camera360/shop/view/ScrollGallery$onLongPressListener;

    return-void
.end method
