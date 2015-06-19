.class Lcom/pinguo/camera360/sony/SonyCameraFragment$20;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/sony/model/SonyCameraTimer$CameraTimerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/sony/SonyCameraFragment;->startTimerTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerDecrement(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->doTimerDecrement()V

    return-void
.end method

.method public onTimerFinished()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$12(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->takePicture()V

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;Z)V

    return-void
.end method

.method public onTimerStart()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->hideOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;Z)V

    return-void
.end method

.method public onTimerStop()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$20;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;

    #getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mViewHolder:Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;->access$1(Lcom/pinguo/camera360/sony/SonyCameraFragment$ViewHolder;Z)V

    return-void
.end method
