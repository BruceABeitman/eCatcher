.class public Lcom/pinguo/camera360/video/util/SnapshotHelper;
.super Ljava/lang/Object;
.source "SnapshotHelper.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDuringSnapshot:Z

.field private mDuringSnapshotRunnable:Ljava/lang/Runnable;

.field private mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

.field private mStartCaptureSnapshot:Z

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/util/SnapshotHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    iput-boolean v0, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    new-instance v0, Lcom/pinguo/camera360/video/util/SnapshotHelper$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/video/util/SnapshotHelper$1;-><init>(Lcom/pinguo/camera360/video/util/SnapshotHelper;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/video/util/SnapshotHelper;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    const/4 v5, 0x0

    sget-object v3, Lcom/pinguo/camera360/video/util/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onPictureTaken"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->isJpeg([B)Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientation([B)I

    move-result v0

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getJpegOrientation()I

    move-result v3

    add-int/2addr v3, v0

    rem-int/lit16 v3, v3, 0xb4

    if-nez v3, :cond_4d

    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    iget v4, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->set(II)V

    :goto_38
    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

    invoke-interface {v3, p1, v2}, Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;->onSnapshot([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V

    :cond_41
    iput-boolean v5, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    iput-boolean v5, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_4d
    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    iget v4, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->set(II)V

    goto :goto_38
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 14

    const/4 v10, 0x0

    sget-object v1, Lcom/pinguo/camera360/video/util/SnapshotHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPreviewFrame"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    if-nez v1, :cond_e

    :goto_d
    return-void

    :cond_e
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v8

    :try_start_16
    new-instance v0, Landroid/graphics/YuvImage;

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getPreviewFormat()I

    move-result v2

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    if-eqz v0, :cond_55

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mSnapshotCallback:Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;

    invoke-interface {v1, v7, v8}, Lcom/pinguo/camera360/video/util/SnapshotHelper$SnapshotCallback;->onSnapshot([BLcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)V
    :try_end_55
    .catchall {:try_start_16 .. :try_end_55} :catchall_87
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_55} :catch_61

    :cond_55
    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_d

    :catch_61
    move-exception v6

    :try_start_62
    sget-object v1, Lcom/pinguo/camera360/video/util/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onPreviewFrame Error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_87

    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    iget-object v1, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_d

    :catchall_87
    move-exception v1

    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    iput-boolean v10, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    throw v1
.end method

.method public takeSnapshot(Landroid/app/Activity;)V
    .registers 9

    const/4 v6, 0x1

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->canProcessPicture()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-boolean v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    if-eqz v2, :cond_1f

    :cond_12
    new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;

    const v2, 0x7f080247

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V

    goto :goto_3

    :cond_1f
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isVideoSnapshotSupportedSysApi()Z

    move-result v2

    if-eqz v2, :cond_70

    :try_start_29
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getRealCameraInstance()Landroid/hardware/Camera;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3a} :catch_51

    :goto_3a
    iget-boolean v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    if-eqz v2, :cond_3

    iput-boolean v6, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshot:Z

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mUIHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mDuringSnapshotRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :catch_51
    move-exception v0

    sget-object v2, Lcom/pinguo/camera360/video/util/SnapshotHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "take picture fail:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    :cond_70
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getRealCameraInstance()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    iput-boolean v6, p0, Lcom/pinguo/camera360/video/util/SnapshotHelper;->mStartCaptureSnapshot:Z

    goto :goto_3a
.end method
