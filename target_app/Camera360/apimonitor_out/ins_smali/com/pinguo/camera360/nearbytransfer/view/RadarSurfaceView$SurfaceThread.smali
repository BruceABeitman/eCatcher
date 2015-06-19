.class public Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;
.super Ljava/lang/Thread;
.source "RadarSurfaceView.java"
.field private mRadarSurfaceView:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
.field public mStart:Z
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
.method public constructor <init>(Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Landroid/view/SurfaceHolder;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->this$0:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mStart:Z
iput-object p2, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mRadarSurfaceView:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
iput-object p3, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;
return-void
.end method
.method public run()V
.registers 4
const-wide/16 v1, 0x258
:try_start_2
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:goto_5
iget-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mStart:Z
if-nez v1, :cond_a
:goto_9
return-void
:cond_a
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;
invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;
move-result-object v1
invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z
move-result v1
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;
invoke-interface {v1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;
move-result-object v0
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mRadarSurfaceView:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
#calls: Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->doDraw(Landroid/graphics/Canvas;)V
invoke-static {v1, v0}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->access$0(Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;Landroid/graphics/Canvas;)V
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mSurfaceHolder:Landroid/view/SurfaceHolder;
invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
:try_end_2a
.catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2a} :catch_35
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_3d
const-wide/16 v1, 0x28
:try_start_2c
invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
:try_start_2f
:goto_2f
:try_end_2f
.catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_3f
.catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_3d
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mRadarSurfaceView:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->postInvalidate()V
goto :goto_5
:catch_35
move-exception v1
goto :goto_9
:cond_37
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView$SurfaceThread;->mRadarSurfaceView:Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;
invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/view/RadarSurfaceView;->postInvalidate()V
:try_end_3c
.catch Ljava/lang/InterruptedException; {:try_start_2f .. :try_end_3c} :catch_35
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3c} :catch_3d
goto :goto_2f
:catch_3d
move-exception v1
goto :goto_9
:catch_3f
move-exception v1
goto :goto_2f
.end method