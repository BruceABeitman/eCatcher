.class public final Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"
.field public static final ORIENTATION_UNKNOWN:I = -0x1
.field private static final TAG:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->TAG:Ljava/lang/String;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getCameraNumber()I
.registers 1
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z
if-eqz v0, :cond_9
invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I
move-result v0
:goto_8
return v0
:cond_9
const/4 v0, 0x1
goto :goto_8
.end method
.method public static getDisplayRotation(Landroid/app/Activity;)I
.registers 4
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;
move-result-object v2
invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2}, Landroid/view/Display;->getRotation()I
move-result v0
packed-switch v0, :pswitch_data_1a
:pswitch_10
:goto_10
return v1
:pswitch_11
const/16 v1, 0x5a
goto :goto_10
:pswitch_14
const/16 v1, 0xb4
goto :goto_10
:pswitch_17
const/16 v1, 0x10e
goto :goto_10
:pswitch_data_1a
.packed-switch 0x0
:pswitch_10
:pswitch_11
:pswitch_14
:pswitch_17
.end packed-switch
.end method
.method public static getJpegRotation(II)I
.registers 6
const/4 v1, -0x1
if-eq p0, v1, :cond_4d
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCameraInfo()[Landroid/hardware/Camera$CameraInfo;
move-result-object v1
aget-object v0, v1, p1
sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->TAG:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "cameraId:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",CameraInfo.rotation:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, ",uiOrientation:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
const/4 v2, 0x1
if-ne v1, v2, :cond_47
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
sub-int/2addr v1, p0
add-int/lit16 v1, v1, 0x168
rem-int/lit16 v1, v1, 0x168
:goto_46
return v1
:cond_47
iget v1, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I
add-int/2addr v1, p0
rem-int/lit16 v1, v1, 0x168
goto :goto_46
:cond_4d
const/4 v1, 0x0
goto :goto_46
.end method