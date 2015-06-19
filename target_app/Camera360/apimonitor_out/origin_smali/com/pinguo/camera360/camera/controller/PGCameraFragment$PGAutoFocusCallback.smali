.class final Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PGAutoFocusCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;-><init>(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 8

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #calls: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getCameraModel()Lcom/pinguo/camera360/lib/camera/model/CameraModel;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$8(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "state in PGAutoFocusCallback ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v1, v2, :cond_29

    sget-object v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-ne v1, v2, :cond_2a

    :cond_29
    :goto_29
    return-void

    :cond_2a
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z

    move-result v0

    if-eqz v0, :cond_41

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/SoundManager;->playFocusSound()V

    :cond_41
    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$PGAutoFocusCallback;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mFocusManager:Lcom/pinguo/camera360/lib/camera/lib/FocusManager;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$9(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/lib/camera/lib/FocusManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/pinguo/camera360/lib/camera/lib/FocusManager;->onAutoFocus(Z)V

    goto :goto_29
.end method
