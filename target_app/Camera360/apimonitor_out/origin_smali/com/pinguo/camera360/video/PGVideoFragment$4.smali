.class Lcom/pinguo/camera360/video/PGVideoFragment$4;
.super Ljava/lang/Object;
.source "PGVideoFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/video/util/TimerStartHelper$TimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/video/PGVideoFragment;->startTimerVideoRecording()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/video/PGVideoFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/video/PGVideoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerDecrement(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;
    invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$8(Lcom/pinguo/camera360/video/PGVideoFragment;)Lcom/pinguo/camera360/video/view/PGVideoView;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->doTimerDecrement()V

    return-void
.end method

.method public onTimerFinished()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #getter for: Lcom/pinguo/camera360/video/PGVideoFragment;->mPGVideoView:Lcom/pinguo/camera360/video/view/PGVideoView;
    invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$8(Lcom/pinguo/camera360/video/PGVideoFragment;)Lcom/pinguo/camera360/video/view/PGVideoView;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/video/view/PGVideoView;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->hide()V

    iget-object v0, p0, Lcom/pinguo/camera360/video/PGVideoFragment$4;->this$0:Lcom/pinguo/camera360/video/PGVideoFragment;

    #calls: Lcom/pinguo/camera360/video/PGVideoFragment;->startVideoRecording()V
    invoke-static {v0}, Lcom/pinguo/camera360/video/PGVideoFragment;->access$9(Lcom/pinguo/camera360/video/PGVideoFragment;)V

    return-void
.end method

.method public onTimerStart()V
    .registers 1

    return-void
.end method

.method public onTimerStop()V
    .registers 1

    return-void
.end method
