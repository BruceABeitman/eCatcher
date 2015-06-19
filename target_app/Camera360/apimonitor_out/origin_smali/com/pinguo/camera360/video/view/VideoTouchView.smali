.class public Lcom/pinguo/camera360/video/view/VideoTouchView;
.super Landroid/view/View;
.source "VideoTouchView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field public mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoTouchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoTouchView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/view/VideoTouchView;->init()V

    return-void
.end method

.method private init()V
    .registers 3

    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/view/VideoTouchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .registers 2

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;

    invoke-interface {v0, p1}, Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method public setGestureListener(Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/view/VideoTouchView;->mListener:Lcom/pinguo/camera360/video/view/VideoTouchView$VideoGestureListener;

    return-void
.end method
