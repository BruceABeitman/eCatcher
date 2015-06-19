.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/camera/model/PGCameraBase$AntiShakeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->startAntiShakeTakePicture()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .registers 4

    const-string/jumbo v0, "startAntiShake"

    const-string/jumbo v1, "onClose"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->hide()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    const/4 v1, 0x1

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCamera:Lcom/pinguo/camera360/camera/controller/ModeCameraController;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$14(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/ModeCameraController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/controller/ModeCameraController;->preTakePicture()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->takePicture(Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    return-void
.end method

.method public onStart()V
    .registers 5

    const/4 v3, 0x1

    const-string/jumbo v0, "startAntiShake"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/camera/view/DebounceView;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/pinguo/camera360/camera/view/DebounceView;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->root:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    :cond_45
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->show()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->hideOperationView(Z)V
    invoke-static {v0, v3}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$1(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    return-void
.end method

.method public onStop()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "startAntiShake"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->hide()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    return-void
.end method

.method public onTimeout()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "startAntiShake"

    const-string/jumbo v1, "onTimeout"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/DebounceView;->hide()V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->showOperationView(Z)V
    invoke-static {v0, v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->access$0(Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/view/DebounceView;->showToast(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$8(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->IDLE:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->setCameraState(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->closeSensorFocus(Z)V

    return-void
.end method

.method public onUpdate(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$10;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mViewHolder:Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$6(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$ViewHolder;->mDebounceView:Lcom/pinguo/camera360/camera/view/DebounceView;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/camera/view/DebounceView;->setDebounceLevel(I)V

    return-void
.end method
