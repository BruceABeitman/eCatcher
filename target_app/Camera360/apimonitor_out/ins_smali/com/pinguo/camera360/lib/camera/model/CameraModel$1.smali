.class  Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;
.super Ljava/lang/Object;
.source "CameraModel.java"
.implements Landroid/hardware/Camera$PictureCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.field private final synthetic val$callBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
.field private final synthetic val$isRenderEnable:Z
.field private final synthetic val$settingModel:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
.method constructor <init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;ZLcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;)V
.registers 5
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
iput-object p2, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$callBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
iput-boolean p3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$isRenderEnable:Z
iput-object p4, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$settingModel:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPictureTaken([BLandroid/hardware/Camera;)V
.registers 13
const/4 v9, 0x2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$4(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->removeMessages(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$1()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "mCameraState ="
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$5(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$5(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v0
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
if-ne v0, v1, :cond_33
:goto_32
:cond_32
return-void
:cond_33
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPictureTakenFail:Z
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$6(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Z
move-result v0
if-nez v0, :cond_d9
invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$1()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "onPictureTaken entermCameraState:"
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-static {v3}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$5(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
move-result-object v3
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->PREVIEW_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
#setter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mCameraState:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$7(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;)V
const/4 v5, 0x0
invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v0
invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;
move-result-object v7
new-instance v4, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
iget v0, v7, Landroid/hardware/Camera$Size;->width:I
iget v1, v7, Landroid/hardware/Camera$Size;->height:I
invoke-direct {v4, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I
move-result v5
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getJpegOrientation()I
move-result v6
add-int v0, v6, v5
rem-int/lit16 v0, v0, 0xb4
if-nez v0, :cond_c7
iget v0, v7, Landroid/hardware/Camera$Size;->width:I
iget v1, v7, Landroid/hardware/Camera$Size;->height:I
invoke-virtual {v4, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->set(II)V
:goto_8a
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->isJpeg([B)Z
move-result v0
if-eqz v0, :cond_cf
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getExifData([B)[B
move-result-object v2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$callBack:Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;
move-object v1, p1
move-object v3, p2
invoke-interface/range {v0 .. v5}, Lcom/pinguo/camera360/lib/camera/model/ICameraModel$TakePictureCallBack;->onPictureTaken([B[BLandroid/hardware/Camera;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;I)V
:goto_9b
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$isRenderEnable:Z
if-eqz v0, :cond_b2
sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_RENDER_ZOOM_INCURRECT:Z
if-eqz v0, :cond_b2
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setZoom(I)V
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v0
invoke-virtual {v0, v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateParameters(I)V
:cond_b2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->val$settingModel:Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
invoke-virtual {v0}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getSoundState()Z
move-result v0
if-nez v0, :cond_32
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/camera/model/SoundManager;->getSoundManager(Landroid/content/Context;)Lcom/pinguo/camera360/camera/model/SoundManager;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/camera360/camera/model/SoundManager;->restoreRingerMode()V
goto/16 :goto_32
:cond_c7
iget v0, v7, Landroid/hardware/Camera$Size;->height:I
iget v1, v7, Landroid/hardware/Camera$Size;->width:I
invoke-virtual {v4, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->set(II)V
goto :goto_8a
:cond_cf
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$1;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;
#getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mHandler:Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$4(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
move-result-object v0
invoke-virtual {v0, v9}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->sendEmptyMessage(I)Z
goto :goto_9b
:cond_d9
invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$1()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "onPictureTaken enter with taken overtime"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_9b
.end method