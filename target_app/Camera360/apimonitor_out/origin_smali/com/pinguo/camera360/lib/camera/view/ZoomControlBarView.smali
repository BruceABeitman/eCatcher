.class public Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;
.super Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;
.source "ZoomControlBarView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;
    }
.end annotation


# static fields
.field private static final HIDE_DELAY_MILLIS:I = 0xbb8

.field private static final MSG_ZOOM_CONTROL_HIDE:I = 0x1

.field private static final MSG_ZOOM_CONTROL_SHOW:I = 0x2


# instance fields
.field private mCurrentZoom:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAutoSave:Z

.field private mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

.field private mZoomMax:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mIsAutoSave:Z

    new-instance v0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$1;-><init>(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;)V

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mIsAutoSave:Z

    return v0
.end method


# virtual methods
.method public hide()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    return-void
.end method

.method public onSeekValueChanged(F)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    if-eqz v1, :cond_16

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mZoomMax:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    if-eq v1, v0, :cond_16

    iput v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    iget v2, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;->onZoomValueChanged(I)V

    :cond_16
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->resetCounters()V

    invoke-super {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public resetCounters()V
    .registers 4

    iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mIsAutoSave:Z

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setAutoVisible(ZJ)V

    return-void
.end method

.method public setAutoVisible(ZJ)V
    .registers 7

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mIsAutoSave:Z

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setZoomIndex(I)V
    .registers 4

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    if-eq p1, v0, :cond_1b

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mZoomMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setCurrentSeekValue(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    iget v1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mCurrentZoom:I

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;->onZoomValueChanged(I)V

    :cond_1b
    return-void
.end method

.method public setZoomMax(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mZoomMax:I

    return-void
.end method

.method public updateView(ZIILcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;)V
    .registers 6

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    invoke-virtual {p0, p2}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomMax(I)V

    invoke-virtual {p0, p3}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setZoomIndex(I)V

    iput-object p4, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    :goto_e
    return-void

    :cond_f
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView;->mListener:Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;

    goto :goto_e
.end method
