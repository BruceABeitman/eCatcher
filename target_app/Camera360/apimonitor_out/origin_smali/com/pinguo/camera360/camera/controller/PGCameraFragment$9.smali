.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/model/PGCameraBase$TimerCameraListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startTimerTakePicture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimerDecrement(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mTimerCameraView:Lcom/pinguo/camera360/camera/view/TimerCameraView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/TimerCameraView;->doTimerDecrement()V

    return-void
.end method

.method public onTimerFinished()V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTimerFinished"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mIsPausing:Z
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$13(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$14(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preTakePicture()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    :cond_3c
    return-void
.end method

.method public onTimerStart()V
    .registers 4

    const/4 v2, 0x1

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onTimerStart"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->hideOperationView(Z)V
    invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$1(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    return-void
.end method

.method public onTimerStop()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$9;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    return-void
.end method
