.class public Lcom/pinguo/camera360/gallery/ui/DownUpDetector;
.super Ljava/lang/Object;
.source "DownUpDetector.java"
.field private mListener:Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;
.field private mStillDown:Z
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mListener:Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;
return-void
.end method
.method private setState(ZLandroid/view/MotionEvent;)V
.registers 4
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mStillDown:Z
if-ne p1, v0, :cond_5
:goto_4
return-void
:cond_5
iput-boolean p1, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mStillDown:Z
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mListener:Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;
invoke-interface {v0, p2}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;->onDown(Landroid/view/MotionEvent;)V
goto :goto_4
:cond_f
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mListener:Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;
invoke-interface {v0, p2}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector$DownUpListener;->onUp(Landroid/view/MotionEvent;)V
goto :goto_4
.end method
.method public isDown()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->mStillDown:Z
return v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)V
.registers 3
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
and-int/lit16 v0, v0, 0xff
packed-switch v0, :pswitch_data_14
:pswitch_9
:goto_9
return-void
:pswitch_a
const/4 v0, 0x1
invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V
goto :goto_9
:pswitch_f
const/4 v0, 0x0
invoke-direct {p0, v0, p1}, Lcom/pinguo/camera360/gallery/ui/DownUpDetector;->setState(ZLandroid/view/MotionEvent;)V
goto :goto_9
:pswitch_data_14
.packed-switch 0x0
:pswitch_a
:pswitch_f
:pswitch_9
:pswitch_f
:pswitch_9
:pswitch_f
.end packed-switch
.end method