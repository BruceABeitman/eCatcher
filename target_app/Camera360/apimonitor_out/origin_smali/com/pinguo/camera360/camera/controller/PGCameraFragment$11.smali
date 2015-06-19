.class Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;
.super Ljava/lang/Object;
.source "PGCameraFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/view/ZoomControlBarView$OnZoomChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->updateZoomControlView()V
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

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZoomValueChanged(I)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onZoomValueChanged index = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setZoom(I)V

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "GAdapter.IS_MI_2A = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mModeCameraModel.isFrontCamera() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_RENDER_ZOOM_INCURRECT:Z

    if-nez v0, :cond_6c

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_2A:Z

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    #getter for: Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->mModeCameraModel:Lcom/pinguo/camera360/camera/model/ModeCameraModel;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->access$12(Lcom/pinguo/camera360/camera/controller/PGCameraFragment;)Lcom/pinguo/camera360/camera/model/ModeCameraModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/model/ModeCameraModel;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_6c
    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateRenderZoomParameter()V

    :goto_7d
    return-void

    :cond_7e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/PGCameraFragment$11;->this$0:Lcom/pinguo/camera360/camera/controller/PGCameraFragment;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/camera/controller/PGCameraFragment;->setCameraParametersWhenIdle(I)V

    goto :goto_7d
.end method
