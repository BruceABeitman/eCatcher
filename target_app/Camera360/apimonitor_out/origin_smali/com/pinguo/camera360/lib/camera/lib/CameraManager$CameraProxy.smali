.class public Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.super Ljava/lang/Object;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraProxy"
.end annotation


# instance fields
.field private facing:I

.field private mCamera:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->release()V

    return-void
.end method

.method private release()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_9
    return-void
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_9
    return-void
.end method

.method public autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_9
    return-void
.end method

.method public cancelAutoFocus()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    :cond_9
    return-void
.end method

.method public getFacing()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->facing:I

    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method public lockCamera(Z)V
    .registers 5

    const-string/jumbo v0, "CameraManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "lockCamera isLock "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mCamera="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_2e

    if-eqz p1, :cond_2f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    goto :goto_2e
.end method

.method public setDisplayOrientation(I)V
    .registers 3

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEIZU_M9:Z

    if-eqz v0, :cond_6

    const/16 p1, 0xb4

    :cond_6
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    return-void
.end method

.method public setFacing(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->facing:I

    return-void
.end method

.method public setOneShotPreviewCallBack(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    const-string/jumbo v0, "CameraManager"

    const-string/jumbo v1, "setPreviewCallBack"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_12
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method

.method public setPreviewCallBack(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4

    const-string/jumbo v0, "CameraManager"

    const-string/jumbo v1, "setPreviewCallBack"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_12
    return-void
.end method

.method public setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_9
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method public setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public startPreview()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_9
    return-void
.end method

.method public startSmoothZoom(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->startSmoothZoom(I)V

    return-void
.end method

.method public stopPreview()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    :cond_9
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 7

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    return-void
.end method
