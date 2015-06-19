.class public Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"
.field private static final ADD_CALLBACK_BUFFER:I = 0x9
.field private static final AUTO_FOCUS:I = 0xa
.field private static CAMERA_MANAGER:Lcom/pinguo/camera360/lib/camera/lib/CameraManager; = null
.field private static final CANCEL_AUTO_FOCUS:I = 0xb
.field private static final GET_PARAMETERS:I = 0x14
.field private static final LOCK:I = 0x4
.field private static final RECONNECT:I = 0x2
.field private static final RELEASE:I = 0x1
.field private static final RELEASE_CAMERA:I = 0x1
.field private static final SET_AUTO_FOCUS_MOVE_CALLBACK:I = 0xc
.field private static final SET_DISPLAY_ORIENTATION:I = 0xd
.field private static final SET_ERROR_CALLBACK:I = 0x12
.field private static final SET_FACE_DETECTION_LISTENER:I = 0xf
.field private static final SET_PARAMETERS:I = 0x13
.field private static final SET_PARAMETERS_ASYNC:I = 0x15
.field private static final SET_PREVIEW_CALLBACK_WITH_BUFFER:I = 0x8
.field private static final SET_PREVIEW_TEXTURE_ASYNC:I = 0x5
.field private static final SET_ZOOM_CHANGE_LISTENER:I = 0xe
.field private static final START_FACE_DETECTION:I = 0x10
.field private static final START_PREVIEW_ASYNC:I = 0x6
.field private static final STOP_FACE_DETECTION:I = 0x11
.field private static final STOP_PREVIEW:I = 0x7
.field private static final UNLOCK:I = 0x3
.field private static final WAIT_FOR_IDLE:I = 0x16
.field private mBackCameraId:I
.field private mCacheParameters:Landroid/hardware/Camera$Parameters;
.field private mCamera:Landroid/hardware/Camera;
.field private mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.field private mCurCameraId:I
.field private mFrontCameraId:I
.field private final mHandler:Landroid/os/Handler;
.field private mInfos:[Landroid/hardware/Camera$CameraInfo;
.field private mKeepBeforeTime:J
.field private mNumberOfCameras:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
invoke-direct {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;-><init>()V
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->CAMERA_MANAGER:Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
return-void
.end method
.method private constructor <init>()V
.registers 7
const/4 v2, 0x0
const/4 v5, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
iput v5, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
iput v5, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
iput v5, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
iput v5, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
const-wide/16 v2, 0x0
iput-wide v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$MyHandler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v3
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$MyHandler;-><init>(Lcom/pinguo/camera360/lib/camera/lib/CameraManager;Landroid/os/Looper;)V
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mHandler:Landroid/os/Handler;
invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
new-array v2, v2, [Landroid/hardware/Camera$CameraInfo;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
const/4 v1, 0x0
:goto_2f
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
if-lt v1, v2, :cond_39
const/4 v1, 0x0
:goto_34
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
if-lt v1, v2, :cond_70
return-void
:cond_39
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
new-instance v3, Landroid/hardware/Camera$CameraInfo;
invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V
aput-object v3, v2, v1
:try_start_42
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
aget-object v2, v2, v1
invoke-static {v1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
:try_end_49
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_49} :catch_4c
add-int/lit8 v1, v1, 0x1
goto :goto_2f
:catch_4c
move-exception v0
new-instance v2, Ljava/lang/RuntimeException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Camera Number:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "/Camera id:"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v2
:cond_70
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
if-ne v2, v5, :cond_97
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
aget-object v2, v2, v1
iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I
if-nez v2, :cond_97
const-string/jumbo v2, "CameraManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Set back camera id:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
:goto_94
:cond_94
add-int/lit8 v1, v1, 0x1
goto :goto_34
:cond_97
iget v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
if-ne v2, v5, :cond_94
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
aget-object v2, v2, v1
iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v3, 0x1
if-ne v2, v3, :cond_94
const-string/jumbo v2, "CameraManager"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Set front camera id:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
goto :goto_94
.end method
.method public static instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
.registers 1
sget-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->CAMERA_MANAGER:Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
return-object v0
.end method
.method public forceReleaseCamera()V
.registers 4
const/4 v2, 0x0
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mHandler:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
#calls: Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->release()V
invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->access$0(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCacheParameters:Landroid/hardware/Camera$Parameters;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iput-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
:cond_1a
return-void
.end method
.method public getBackCameraId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
return v0
.end method
.method public getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
return-object v0
.end method
.method public getCameraCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mNumberOfCameras:I
return v0
.end method
.method public getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
return-object v0
.end method
.method public getCurCameraId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
return v0
.end method
.method public getFrontCameraId()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
return v0
.end method
.method public getRealCameraInstance()Landroid/hardware/Camera;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
return-object v0
.end method
.method public isFrontCamera()Z
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera(I)Z
move-result v0
return v0
.end method
.method public isFrontCamera(I)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
if-ltz p1, :cond_16
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
array-length v2, v2
add-int/lit8 v2, v2, -0x1
if-gt p1, v2, :cond_16
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mInfos:[Landroid/hardware/Camera$CameraInfo;
aget-object v2, v2, p1
iget v2, v2, Landroid/hardware/Camera$CameraInfo;->facing:I
if-ne v2, v0, :cond_14
:goto_13
return v0
:cond_14
move v0, v1
goto :goto_13
:cond_16
move v0, v1
goto :goto_13
.end method
.method public keep()V
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
const-wide/16 v2, 0xbb8
add-long/2addr v0, v2
iput-wide v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
return-void
.end method
.method public openCamera(I)Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
.registers 7
const/4 v4, 0x1
const/4 v3, -0x1
const-wide/16 v1, 0x0
iput-wide v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mHandler:Landroid/os/Handler;
invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
if-eqz v1, :cond_1d
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
if-eq v1, p1, :cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
#calls: Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->release()V
invoke-static {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->access$0(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
const/4 v1, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iput v3, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
:cond_1d
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
if-eqz v1, :cond_2d
:try_start_21
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCacheParameters:Landroid/hardware/Camera$Parameters;
invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
:try_end_2d
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_2d} :catch_5e
:goto_2d
:cond_2d
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
if-nez v1, :cond_90
iput v3, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
:try_start_33
sget-boolean v1, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z
if-eqz v1, :cond_63
invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
:goto_3d
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
if-nez v1, :cond_6a
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Camera is NULL, Camera ID is "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v1
:try_end_57
.catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_57} :catch_57
:catch_57
move-exception v0
new-instance v1, Lcom/pinguo/camera360/lib/camera/CameraHardwareException;
invoke-direct {v1, v0}, Lcom/pinguo/camera360/lib/camera/CameraHardwareException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_5e
move-exception v0
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->forceReleaseCamera()V
goto :goto_2d
:try_start_63
:cond_63
invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
goto :goto_3d
:cond_6a
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCacheParameters:Landroid/hardware/Camera$Parameters;
iput p1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCurCameraId:I
:try_end_74
.catch Ljava/lang/RuntimeException; {:try_start_63 .. :try_end_74} :catch_57
new-instance v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCamera:Landroid/hardware/Camera;
invoke-direct {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;-><init>(Landroid/hardware/Camera;)V
iput-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
if-ne v1, p1, :cond_87
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setFacing(I)V
:cond_87
iget v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
if-ne v1, p1, :cond_90
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
invoke-virtual {v1, v4}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setFacing(I)V
:cond_90
iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mCameraDevice:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;
return-object v1
.end method
.method public releaseCamera()V
.registers 7
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
cmp-long v2, v0, v2
if-gez v2, :cond_14
iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mHandler:Landroid/os/Handler;
const/4 v3, 0x1
iget-wide v4, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mKeepBeforeTime:J
sub-long/2addr v4, v0
invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
:goto_13
return-void
:cond_14
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->forceReleaseCamera()V
goto :goto_13
.end method
.method public switchCamera(I)I
.registers 3
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
if-ne v0, p1, :cond_7
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
:goto_6
return v0
:cond_7
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mFrontCameraId:I
if-ne v0, p1, :cond_e
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
goto :goto_6
:cond_e
iget v0, p0, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->mBackCameraId:I
goto :goto_6
.end method