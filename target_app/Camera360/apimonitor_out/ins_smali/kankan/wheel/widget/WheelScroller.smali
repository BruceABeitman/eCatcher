.class public Lkankan/wheel/widget/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1
.field private static final SCROLLING_DURATION:I = 0x190
.field private final MESSAGE_JUSTIFY:I
.field private final MESSAGE_SCROLL:I
.field private animationHandler:Landroid/os/Handler;
.field private context:Landroid/content/Context;
.field private gestureDetector:Landroid/view/GestureDetector;
.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
.field private isScrollingPerformed:Z
.field private lastScrollY:I
.field private lastTouchedY:F
.field private listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
.field private scroller:Landroid/widget/Scroller;
.method public constructor <init>(Landroid/content/Context;Lkankan/wheel/widget/WheelScroller$ScrollingListener;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lkankan/wheel/widget/WheelScroller$1;
invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelScroller$1;-><init>(Lkankan/wheel/widget/WheelScroller;)V
iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
iput v2, p0, Lkankan/wheel/widget/WheelScroller;->MESSAGE_SCROLL:I
const/4 v0, 0x1
iput v0, p0, Lkankan/wheel/widget/WheelScroller;->MESSAGE_JUSTIFY:I
new-instance v0, Lkankan/wheel/widget/WheelScroller$2;
invoke-direct {v0, p0}, Lkankan/wheel/widget/WheelScroller$2;-><init>(Lkankan/wheel/widget/WheelScroller;)V
iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
new-instance v0, Landroid/view/GestureDetector;
iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;
invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V
new-instance v0, Landroid/widget/Scroller;
invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
iput-object p2, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
iput-object p1, p0, Lkankan/wheel/widget/WheelScroller;->context:Landroid/content/Context;
return-void
.end method
.method static synthetic access$0(Lkankan/wheel/widget/WheelScroller;I)V
.registers 2
iput p1, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
return-void
.end method
.method static synthetic access$1(Lkankan/wheel/widget/WheelScroller;)Landroid/widget/Scroller;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
return-object v0
.end method
.method static synthetic access$2(Lkankan/wheel/widget/WheelScroller;)I
.registers 2
iget v0, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
return v0
.end method
.method static synthetic access$3(Lkankan/wheel/widget/WheelScroller;I)V
.registers 2
invoke-direct {p0, p1}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V
return-void
.end method
.method static synthetic access$4(Lkankan/wheel/widget/WheelScroller;)Lkankan/wheel/widget/WheelScroller$ScrollingListener;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
return-object v0
.end method
.method static synthetic access$5(Lkankan/wheel/widget/WheelScroller;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic access$6(Lkankan/wheel/widget/WheelScroller;)V
.registers 1
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->justify()V
return-void
.end method
.method private clearMessages()V
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method private justify()V
.registers 2
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onJustify()V
const/4 v0, 0x1
invoke-direct {p0, v0}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V
return-void
.end method
.method private setNextMessage(I)V
.registers 3
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->clearMessages()V
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->animationHandler:Landroid/os/Handler;
invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method private startScrolling()V
.registers 2
iget-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z
if-nez v0, :cond_c
const/4 v0, 0x1
iput-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onStarted()V
:cond_c
return-void
.end method
.method  finishScrolling()V
.registers 2
iget-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z
if-eqz v0, :cond_c
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
invoke-interface {v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onFinished()V
const/4 v0, 0x0
iput-boolean v0, p0, Lkankan/wheel/widget/WheelScroller;->isScrollingPerformed:Z
:cond_c
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 6
const/4 v3, 0x1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
packed-switch v1, :pswitch_data_42
:pswitch_8
:goto_8
:cond_8
iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
if-nez v1, :cond_19
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v1
if-ne v1, v3, :cond_19
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->justify()V
:cond_19
return v3
:pswitch_1a
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F
iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->clearMessages()V
goto :goto_8
:pswitch_29
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iget v2, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F
sub-float/2addr v1, v2
float-to-int v0, v1
if-eqz v0, :cond_8
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->startScrolling()V
iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->listener:Lkankan/wheel/widget/WheelScroller$ScrollingListener;
invoke-interface {v1, v0}, Lkankan/wheel/widget/WheelScroller$ScrollingListener;->onScroll(I)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
iput v1, p0, Lkankan/wheel/widget/WheelScroller;->lastTouchedY:F
goto :goto_8
:pswitch_data_42
.packed-switch 0x0
:pswitch_1a
:pswitch_8
:pswitch_29
.end packed-switch
.end method
.method public scroll(II)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V
iput v1, p0, Lkankan/wheel/widget/WheelScroller;->lastScrollY:I
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
if-eqz p2, :cond_1b
move v5, p2
:goto_e
move v2, v1
move v3, v1
move v4, p1
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
invoke-direct {p0, v1}, Lkankan/wheel/widget/WheelScroller;->setNextMessage(I)V
invoke-direct {p0}, Lkankan/wheel/widget/WheelScroller;->startScrolling()V
return-void
:cond_1b
const/16 v5, 0x190
goto :goto_e
.end method
.method public setInterpolator(Landroid/view/animation/Interpolator;)V
.registers 4
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V
new-instance v0, Landroid/widget/Scroller;
iget-object v1, p0, Lkankan/wheel/widget/WheelScroller;->context:Landroid/content/Context;
invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
return-void
.end method
.method public stopScrolling()V
.registers 3
iget-object v0, p0, Lkankan/wheel/widget/WheelScroller;->scroller:Landroid/widget/Scroller;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V
return-void
.end method