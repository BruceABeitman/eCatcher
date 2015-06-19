.class public Lcom/pinguo/camera360/video/settings/VideoSettingModel;
.super Ljava/lang/Object;
.source "VideoSettingModel.java"


# static fields
.field public static final DEFAULT_VIDEO_DURATION:I = 0x36ee80

.field private static final TAG:Ljava/lang/String;

.field private static sVideoSettingModel:Lcom/pinguo/camera360/video/settings/VideoSettingModel;


# instance fields
.field private cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

.field private jpegOrientation:I

.field private mCameraId:I

.field private mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

.field private mCameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

.field private mMaxVideoDurationInMs:I

.field private mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

.field private mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

.field private mProfile:Landroid/media/CamcorderProfile;

.field private zoomMax:I

.field private zoomSupported:Z

.field private zoomValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    invoke-direct {v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;-><init>()V

    sput-object v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->sVideoSettingModel:Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    iput-boolean v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomSupported:Z

    iput v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomMax:I

    iput v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomValue:I

    iput v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->jpegOrientation:I

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    return-void
.end method

.method private static adaptPreviewSize(Landroid/hardware/Camera$Size;Ljava/util/List;DI)Landroid/hardware/Camera$Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Size;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    move-object v6, p0

    if-eqz v6, :cond_30

    int-to-float v0, p4

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v1, v1

    div-float v7, v0, v1

    const v0, 0x400ccccd

    cmpl-float v0, v7, v0

    if-lez v0, :cond_30

    const/16 v0, 0x3e8

    if-le p4, v0, :cond_30

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_30

    const-wide/high16 v3, 0x3fd0

    move-object v0, p1

    move-wide v1, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePreviewSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v6

    if-eqz v6, :cond_2f

    iget v0, v6, Landroid/hardware/Camera$Size;->height:I

    iget v1, p0, Landroid/hardware/Camera$Size;->height:I

    if-gt v0, v1, :cond_30

    :cond_2f
    move-object v6, p0

    :cond_30
    return-object v6
.end method

.method private getDesiredPreviewSize()V
    .registers 7

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-nez v3, :cond_13

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v4, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    iput-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    :cond_13
    sget-object v3, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "VideoFrame,w:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ,h:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v3, :cond_47

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4b

    :cond_47
    sget-boolean v3, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_SM_T210:Z

    if-eqz v3, :cond_8a

    :cond_4b
    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v4, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->setWidth(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v4, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->setHeight(I)V

    :goto_5d
    sget-object v3, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Video preview size is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8a
    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v1

    new-instance v3, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v4, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v3, v4, v5}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    invoke-static {v2, v1, v3}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getOptimalPreviewSize(Ljava/util/List;Landroid/hardware/Camera$Size;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->setWidth(I)V

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->setHeight(I)V

    goto :goto_5d
.end method

.method private static getOptimalPreviewSize(Ljava/util/List;Landroid/hardware/Camera$Size;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Landroid/hardware/Camera$Size;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Landroid/hardware/Camera$Size;",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;",
            ")",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    if-eqz p1, :cond_49

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "=======preferredSizeForVideo,w:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, " ,h:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int v15, v2, v3

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    if-lt v15, v2, :cond_49

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_43
    :goto_43
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5b

    :cond_49
    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-double v0, v9

    move-wide/from16 v17, v0

    div-double v4, v2, v17

    if-nez p0, :cond_98

    const/4 v14, 0x0

    :cond_5a
    return-object v14

    :cond_5b
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "before preview size ---w:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v9, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v9, ",h"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    move-object/from16 v0, v16

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v2, v3

    if-le v2, v15, :cond_43

    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_43

    :cond_98
    const/4 v14, 0x0

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v2

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/16 v2, 0x1e0

    if-ge v8, v2, :cond_b7

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v2

    if-ge v8, v2, :cond_b7

    invoke-virtual/range {p2 .. p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v8

    :cond_b7
    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "=======preview targetHeight:"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v6, 0x3f50624dd2f1a9fcL

    const/4 v9, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v2 .. v9}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePreviewSize(Ljava/util/List;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;DDIZ)Landroid/hardware/Camera$Size;

    move-result-object v14

    if-nez v14, :cond_e7

    const-wide v6, 0x3fa999999999999aL

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePreviewSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v14

    :cond_e7
    if-nez v14, :cond_f4

    const-wide v6, 0x3fc3333333333333L

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v8}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePreviewSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v14

    :cond_f4
    move-object/from16 v0, p0

    invoke-static {v14, v0, v4, v5, v8}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->adaptPreviewSize(Landroid/hardware/Camera$Size;Ljava/util/List;DI)Landroid/hardware/Camera$Size;

    move-result-object v14

    if-nez v14, :cond_5a

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "No preview size match the aspect ratio,find min diff of height"

    invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v12, 0x7fefffffffffffffL

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10d
    :goto_10d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/hardware/Camera$Size;

    move-object/from16 v0, v16

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v0, v3

    move-wide/from16 v17, v0

    cmpg-double v3, v17, v12

    if-gez v3, :cond_10d

    move-object/from16 v14, v16

    move-object/from16 v0, v16

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v3, v8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-double v12, v3

    goto :goto_10d
.end method

.method private static getOptimalVideoSnapshotPictureSize(Ljava/util/List;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Landroid/hardware/Camera$Size;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;",
            ")",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v2

    int-to-double v0, v2

    move-wide/from16 v18, v0

    div-double v3, v16, v18

    if-nez p0, :cond_14

    const/4 v13, 0x0

    :cond_13
    :goto_13
    return-object v13

    :cond_14
    const/4 v13, 0x0

    const-wide v11, 0x7fefffffffffffffL

    invoke-virtual/range {p1 .. p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v7

    invoke-static {}, Lcom/pinguo/lib/UIContants;->getDisplaySize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v2

    invoke-virtual {v9}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v14, v10

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_33
    :goto_33
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_8f

    if-ge v7, v14, :cond_3c

    move v7, v14

    :cond_3c
    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "=======snapshot targetWidth:"

    move-object/from16 v0, v16

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v5, 0x3f50624dd2f1a9fcL

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePictureSize(Ljava/util/List;DDIZ)Landroid/hardware/Camera$Size;

    move-result-object v13

    if-nez v13, :cond_6c

    const-wide v5, 0x3fa999999999999aL

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePictureSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v13

    :cond_6c
    if-nez v13, :cond_79

    const-wide v5, 0x3fc3333333333333L

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePictureSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v13

    :cond_79
    if-nez v13, :cond_13

    sget-object v2, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "No Snapshot picture size match the aspect ratio,find max"

    invoke-static {v2, v8}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v5, 0x7fefffffffffffffL

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePictureSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;

    move-result-object v13

    goto :goto_13

    :cond_8f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    if-le v8, v10, :cond_33

    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, v10

    int-to-double v0, v8

    move-wide/from16 v16, v0

    cmpg-double v8, v16, v11

    if-gez v8, :cond_33

    iget v14, v15, Landroid/hardware/Camera$Size;->width:I

    iget v8, v15, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v8, v10

    int-to-double v11, v8

    goto :goto_33
.end method

.method private static getTolerancePictureSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DDI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePictureSize(Ljava/util/List;DDIZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method private static getTolerancePictureSize(Ljava/util/List;DDIZ)Landroid/hardware/Camera$Size;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DDIZ)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v4, 0x0

    const-wide v2, 0x7fefffffffffffffL

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_a
    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_23

    if-eqz v4, :cond_22

    iget v8, v4, Landroid/hardware/Camera$Size;->width:I

    move/from16 v0, p5

    if-ge v8, v0, :cond_22

    const-wide v8, 0x7fefffffffffffffL

    cmpl-double v8, p3, v8

    if-eqz v8, :cond_22

    const/4 v4, 0x0

    :cond_22
    return-object v4

    :cond_23
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    int-to-double v9, v9

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    int-to-double v11, v11

    div-double v5, v9, v11

    if-eqz p6, :cond_61

    sub-double v9, v5, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p3

    if-lez v9, :cond_87

    sget-object v9, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pictureSize ---w:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",h"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    :goto_61
    sub-double v9, v5, p1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v9, v9, p3

    if-gtz v9, :cond_a

    const/4 v1, 0x0

    if-nez v4, :cond_6f

    const/4 v1, 0x1

    :cond_6f
    if-nez v1, :cond_7e

    const-wide/16 v9, 0x0

    cmpg-double v9, v2, v9

    if-gez v9, :cond_c6

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int v9, v9, p5

    if-ltz v9, :cond_b3

    const/4 v1, 0x1

    :cond_7e
    :goto_7e
    if-eqz v1, :cond_a

    move-object v4, v7

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int v9, v9, p5

    int-to-double v2, v9

    goto :goto_a

    :cond_87
    sget-object v9, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "pictureSize ---w:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v11, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",h"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "-> this match"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_61

    :cond_b3
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int v9, v9, p5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_7e

    const/4 v1, 0x1

    goto :goto_7e

    :cond_c6
    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int v9, v9, p5

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    int-to-double v9, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    cmpg-double v9, v9, v11

    if-gez v9, :cond_7e

    iget v9, v7, Landroid/hardware/Camera$Size;->width:I

    sub-int v9, v9, p5

    if-ltz v9, :cond_7e

    const/4 v1, 0x1

    goto :goto_7e
.end method

.method private static getTolerancePreviewSize(Ljava/util/List;DDI)Landroid/hardware/Camera$Size;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;DDI)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v7}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getTolerancePreviewSize(Ljava/util/List;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;DDIZ)Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method private static getTolerancePreviewSize(Ljava/util/List;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;DDIZ)Landroid/hardware/Camera$Size;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;",
            "Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;",
            "DDIZ)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide v0, 0x7fefffffffffffffL

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_11

    :goto_10
    return-object v2

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v7, v5, Landroid/hardware/Camera$Size;->width:I

    int-to-double v7, v7

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    int-to-double v9, v9

    div-double v3, v7, v9

    if-eqz p7, :cond_4f

    sub-double v7, v3, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v7, v7, p4

    if-lez v7, :cond_77

    sget-object v7, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Preview size ---w:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",h"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    sub-double v7, v3, p2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpl-double v7, v7, p4

    if-gtz v7, :cond_a

    if-eqz p1, :cond_a3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    if-ne v7, v8, :cond_a3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v7

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    if-ne v7, v8, :cond_a3

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v7

    sub-int v7, p6, v7

    const/16 v8, 0x190

    if-ge v7, v8, :cond_a3

    move-object v2, v5

    goto :goto_10

    :cond_77
    sget-object v7, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Preview size ---w:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",h"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-> this match"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_a3
    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int v7, v7, p6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v7, v7

    cmpg-double v7, v7, v0

    if-gez v7, :cond_a

    move-object v2, v5

    iget v7, v5, Landroid/hardware/Camera$Size;->height:I

    sub-int v7, v7, p6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-double v0, v7

    goto/16 :goto_a
.end method

.method private initializeCapabilities()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isZoomSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomSupported:Z

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomSupported:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getMaxZoom()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomMax:I

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomMax:I

    goto :goto_14
.end method

.method public static instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->sVideoSettingModel:Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    return-object v0
.end method

.method private static isSupported(Ljava/lang/String;Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_a

    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private setFlashMode()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v3

    const-string/jumbo v4, "pref_video_flashmode_key"

    invoke-virtual {v3, v4}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-nez v1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v3, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_f
.end method

.method private updateCameraParameters()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->setFlashMode()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "continuous-video"

    invoke-static {v1, v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    const-string/jumbo v2, "continuous-video"

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :cond_1a
    const-string/jumbo v1, "continuous-picture"

    invoke-static {v1, v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_33

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MI_3:Z

    if-nez v1, :cond_2b

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S4:Z

    if-eqz v1, :cond_33

    :cond_2b
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    const-string/jumbo v2, "continuous-picture"

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setFocusMode(Ljava/lang/String;)V

    :cond_33
    return-void
.end method

.method private updateVideoAndPreviewParameters()V
    .registers 15
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v13, 0x0

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v10

    const-string/jumbo v11, "pref_video_quality_key"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_17
    sget-boolean v10, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v10, :cond_37

    iget v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-static {v10, v4}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v10

    if-nez v10, :cond_37

    if-eqz v3, :cond_12a

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getEntries()[Ljava/lang/Object;

    move-result-object v10

    array-length v10, v10

    if-lez v10, :cond_12a

    invoke-virtual {v3, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->setValueByIndex(I)V

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :cond_37
    :goto_37
    move v8, v4

    const v10, 0x36ee80

    iput v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mMaxVideoDurationInMs:I

    sget-object v10, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Video cameraId:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ",quality:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-static {v10, v8}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v10

    iput-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getDesiredPreviewSize()V

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget-object v11, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v11

    iget-object v12, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPreviewSize(II)V

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget-object v11, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPreviewFrameRate(I)V

    sget-boolean v10, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v10, :cond_8e

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setRecordingHint(Z)V

    :cond_8e
    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v7

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-static {v7, v10}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;)Landroid/hardware/Camera$Size;

    move-result-object v1

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v10}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_af

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget v11, v1, Landroid/hardware/Camera$Size;->width:I

    iget v12, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v10, v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setPictureSize(II)V

    :cond_af
    sget-object v10, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "Video snapshot size is "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v0

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v10, v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setJpegQuality(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isVideoSnapshotSupportedSysApi()Z

    move-result v10

    if-eqz v10, :cond_10c

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v11, "key_camera_jpeg_redress_enable"

    invoke-virtual {v10, v11, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_12d

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v11, "key_camera_jpeg_redress_orientation"

    invoke-virtual {v10, v11, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    if-nez v10, :cond_101

    rem-int/lit16 v10, v6, 0x168

    iput v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->jpegOrientation:I

    :cond_101
    add-int/lit16 v10, v6, 0x10e

    rem-int/lit16 v10, v10, 0x168

    iput v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->jpegOrientation:I

    :goto_107
    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v10, v13}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setRotation(I)V

    :cond_10c
    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    const-string/jumbo v11, "video-stabilization-supported"

    invoke-virtual {v10, v11}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "true"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_129

    iget-object v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    const-string/jumbo v11, "video-stabilization"

    const-string/jumbo v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_129
    return-void

    :cond_12a
    const/4 v4, 0x1

    goto/16 :goto_37

    :cond_12d
    iget v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-static {v13, v10}, Lcom/pinguo/camera360/lib/camera/lib/CameraUtils;->getJpegRotation(II)I

    move-result v10

    iput v10, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->jpegOrientation:I

    goto :goto_107
.end method

.method private updateZoomParameters()V
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isZoomSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomValue:I

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->setZoom(I)V

    :cond_d
    return-void
.end method


# virtual methods
.method public adaptVideoRotation(I)I
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->needOppositeVideoRotation()Z

    move-result v0

    if-eqz v0, :cond_8

    rsub-int p1, p1, 0x168

    :cond_8
    return p1
.end method

.method public adaptVideoSettings(Landroid/media/MediaRecorder;)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->needVideoSizeEqualPreviewSize()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :cond_15
    return-void
.end method

.method public getCameraId()I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getJpegOrientation()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->jpegOrientation:I

    return v0
.end method

.method public getMaxVideoDurationInMs()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mMaxVideoDurationInMs:I

    return v0
.end method

.method public getMaxZoom()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomMax:I

    return v0
.end method

.method public getPreviewFormat()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_17

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;-><init>(II)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    :cond_17
    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreviewSize:Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    return-object v0
.end method

.method public getVideoProfile()Landroid/media/CamcorderProfile;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getZoom()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomValue:I

    return v0
.end method

.method public initializeRecorder(Landroid/media/MediaRecorder;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getCamera()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->lockCamera(Z)V

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getRealCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mProfile:Landroid/media/CamcorderProfile;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mMaxVideoDurationInMs:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->adaptVideoSettings(Landroid/media/MediaRecorder;)V

    goto :goto_2
.end method

.method public isAdvanceParametersSupport()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSharpnessSupported()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isSupportISO()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isWhiteBalanceSupported()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->isExposureSupported()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x1

    goto :goto_21
.end method

.method public isOpenFlashLight()Z
    .registers 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v4

    const-string/jumbo v5, "pref_video_flashmode_key"

    invoke-virtual {v4, v5}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/pinguo/camera360/lib/camera/lib/parameters/ListPreference;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return v3

    :cond_11
    iget-object v4, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/IconListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "torch"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-static {v0, v2}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->isSupported(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v3, 0x1

    goto :goto_10
.end method

.method public isVideoSnapshotSupported()Z
    .registers 5

    const/4 v1, 0x0

    sget-boolean v2, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v2, :cond_d

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_UNSUPPORT_SNAPSHOT:Z

    if-nez v2, :cond_d

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HM:Z

    if-eqz v2, :cond_e

    :cond_d
    :goto_d
    return v1

    :cond_e
    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->getVideoAdapt()Lcom/pinguo/camera360/video/settings/VideoAdapt;

    move-result-object v0

    if-eqz v0, :cond_36

    sget-object v1, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isVideoSnapshotSupported = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isScreenShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isScreenShot()Z

    move-result v1

    goto :goto_d

    :cond_36
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public isVideoSnapshotSupportedSysApi()Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/video/settings/VideoBussinessSettingModel;->getVideoAdapt()Lcom/pinguo/camera360/video/settings/VideoAdapt;

    move-result-object v0

    if-eqz v0, :cond_29

    sget-object v1, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isVideoSnapshotSupported = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isSupportTakePic()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/video/settings/VideoAdapt;->isSupportTakePic()Z

    move-result v1

    :cond_28
    :goto_28
    return v1

    :cond_29
    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_MEITU_KISS:Z

    if-eqz v2, :cond_37

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->isFrontCamera()Z

    move-result v2

    if-nez v2, :cond_28

    :cond_37
    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_SAMSUNG_S3:Z

    if-nez v2, :cond_28

    sget-boolean v2, Lcom/pinguo/camera360/adapter/GAdapter;->IS_HM_NOTE:Z

    if-eqz v2, :cond_41

    const/4 v1, 0x1

    goto :goto_28

    :cond_41
    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    if-eqz v2, :cond_28

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isVideoSnapshotSupported()Z

    move-result v1

    goto :goto_28
.end method

.method public isZoomSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomSupported:Z

    return v0
.end method

.method public releaseRecorder()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->instance()Lcom/pinguo/camera360/lib/camera/lib/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager;->getRealCameraInstance()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    :cond_d
    return-void
.end method

.method public resetZoomValue()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomValue:I

    return-void
.end method

.method public setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setCamera cameraProxy + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    new-instance v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;-><init>(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    iput-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->initializeCapabilities()V

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->get()Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget v2, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/video/settings/VideoPreferenceGroup;->init(Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v0, p1, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCamera(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;)V

    return-void
.end method

.method public setCameraId(ILandroid/content/Context;)V
    .registers 5

    iget v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    if-eq v0, p1, :cond_11

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    invoke-virtual {v0, p2, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->setLocal(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mPreferences:Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    const-string/jumbo v1, "key_camera_id"

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    :cond_11
    iput p1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    iget-object v0, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    iget v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraId:I

    invoke-virtual {v0, v1, p2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setCameraId(ILandroid/content/Context;)V

    return-void
.end method

.method public setZoom(I)V
    .registers 2

    iput p1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->zoomValue:I

    return-void
.end method

.method public updateParameters()V
    .registers 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateParameters(I)V

    return-void
.end method

.method public updateParameters(I)V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->changeRealParameters(Landroid/hardware/Camera$Parameters;)V

    const/4 v1, -0x1

    if-ne v1, p1, :cond_16

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->updateCameraParametersPictureInfo()V

    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateVideoAndPreviewParameters()V

    :cond_16
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_1d

    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateZoomParameters()V

    :cond_1d
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setISO()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setExposure()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setWhiteBalanced()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setFocusAreasIfSupported()V

    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setMeteringAreasIfSupported()V

    :try_start_3a
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->cameraSettingModel:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->setSharpness()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3f} :catch_4a

    :goto_3f
    invoke-direct {p0}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->updateCameraParameters()V

    :cond_42
    iget-object v1, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraParameters:Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    iget-object v2, p0, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->mCameraProxy:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->updateParameters(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V

    return-void

    :catch_4a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3f
.end method
