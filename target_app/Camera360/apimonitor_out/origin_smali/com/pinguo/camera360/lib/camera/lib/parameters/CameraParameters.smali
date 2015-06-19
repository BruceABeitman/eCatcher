.class public Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;
.super Ljava/lang/Object;
.source "CameraParameters.java"


# static fields
.field public static final FLASH_MODE_AUTO:Ljava/lang/String; = "auto"

.field private static final TAG:Ljava/lang/String; = null

.field public static final WHITE_BALANCE_AUTO:Ljava/lang/String; = "auto"

.field public static final WHITE_BALANCE_CLOUDY_DAYLIGHT:Ljava/lang/String; = "cloudy-daylight"

.field public static final WHITE_BALANCE_DAYLIGHT:Ljava/lang/String; = "daylight"

.field public static final WHITE_BALANCE_FLUORESCENT:Ljava/lang/String; = "fluorescent"

.field public static final WHITE_BALANCE_INCANDESCENT:Ljava/lang/String; = "incandescent"

.field public static final WHITE_BALANCE_SHADE:Ljava/lang/String; = "shade"

.field public static final WHITE_BALANCE_TWILIGHT:Ljava/lang/String; = "twilight"

.field public static final WHITE_BALANCE_WARM_FLUORESCENT:Ljava/lang/String; = "warm-fluorescent"


# instance fields
.field private iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method private tryAnalyse(Landroid/hardware/Camera$Parameters;Ljava/util/LinkedList;)Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Lcom/pinguo/camera360/lib/camera/sheme/NotSupportScheme;

    invoke-direct {v1}, Lcom/pinguo/camera360/lib/camera/sheme/NotSupportScheme;-><init>()V

    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    :goto_f
    return-object v1

    :cond_10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    :try_start_16
    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->analyse(Landroid/hardware/Camera$Parameters;)[Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getValse()[Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getValse()[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v2, v2
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_26} :catch_2b

    const/4 v4, 0x1

    if-le v2, v4, :cond_9

    move-object v1, v0

    goto :goto_f

    :catch_2b
    move-exception v2

    goto :goto_9
.end method


# virtual methods
.method public changeRealParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAntibanding()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAutoExposureLock()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoExposureLock()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getAutoWhiteBalanceLock()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getAutoWhiteBalanceLock()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getColorEffect()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureCompensation()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getExposureCompensationStep()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v0

    return v0
.end method

.method public getFlashMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFocalLength()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v0

    return v0
.end method

.method public getFocusAreas()Ljava/util/List;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusAreas()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public getFocusDistances([F)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getFocusDistances([F)V

    :cond_9
    return-void
.end method

.method public getFocusMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalViewAngle()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getHorizontalViewAngle()F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getIso()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isIsoSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getDefValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getIsoSupported()[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isIsoSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getValse()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getJpegQuality()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailQuality()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailQuality()I

    move-result v0

    return v0
.end method

.method public getJpegThumbnailSize()Landroid/hardware/Camera$Size;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getJpegThumbnailSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getMaxExposureCompensation()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getMaxNumDetectedFaces()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMaxNumFocusAreas()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMaxNumMeteringAreas()I
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getMaxZoom()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v0

    return v0
.end method

.method public getMeteringAreas()Ljava/util/List;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMeteringAreas()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_a
.end method

.method public getMinExposureCompensation()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v0

    return v0
.end method

.method public getPictureFormat()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureFormat()I

    move-result v0

    return v0
.end method

.method public getPictureSize()Landroid/hardware/Camera$Size;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getPreviewFormat()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    return v0
.end method

.method public getPreviewFormatString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "preview-format"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreviewFpsRange([I)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    :goto_9
    return-void

    :cond_a
    if-eqz p1, :cond_10

    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_19

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "range must be an array with two elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v2

    aput v2, p1, v1

    aput v2, p1, v0

    goto :goto_9
.end method

.method public getPreviewFrameRate()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFrameRate()I

    move-result v0

    return v0
.end method

.method public getPreviewSize()Landroid/hardware/Camera$Size;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0
.end method

.method public getSceneMode()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpness()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getDefValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public getSupportedAntibanding()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedColorEffects()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFlashModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedJpegThumbnailSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedJpegThumbnailSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureFormats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPictureSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFormats()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewFpsRange()Ljava/util/List;
    .registers 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    sget-boolean v4, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v3

    :cond_a
    :goto_a
    return-object v3

    :cond_b
    iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_15

    const/4 v3, 0x0

    goto :goto_a

    :cond_15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    new-array v0, v4, [I

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput v1, v0, v6

    aput v1, v0, v4

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public getSupportedPreviewFrameRates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPreviewSizes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSceneModes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedSharpness()[Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->isSharpnessSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->getValse()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getSupportedVideoSizes()Ljava/util/List;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_HONEYCOMB:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getSupportedWhiteBalance()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalViewAngle()F
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVerticalViewAngle()F

    move-result v0

    return v0
.end method

.method public getVideoStabilization()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH_MR1:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getWhiteBalance()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getZoom()I
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    return v0
.end method

.method public getZoomRatios()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoomRatios()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isAutoExposureLockSupported()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isAutoWhiteBalanceLockSupported()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isIsoSupported()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/sheme/ShemeFactory;->getISO()Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->tryAnalyse(Landroid/hardware/Camera$Parameters;Ljava/util/LinkedList;)Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->iso:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport()Z

    move-result v0

    return v0
.end method

.method public isSharpnessSupported()Z
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/sheme/ShemeFactory;->getSharpness()Ljava/util/LinkedList;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->tryAnalyse(Landroid/hardware/Camera$Parameters;Ljava/util/LinkedList;)Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    :cond_10
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport()Z

    move-result v0

    return v0
.end method

.method public isSmoothZoomSupported()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isSmoothZoomSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSnapshotSupported()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isVideoStabilizationSupported()Z
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH_MR1:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isWhiteBalanceSupported()Z
    .registers 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_10

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public isZoomSupported()Z
    .registers 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/pinguo/camera360/adapter/GAdapter;->IS_NOT_SUPPORT_ZOOM:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v1

    if-lez v1, :cond_5

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public removeGpsData()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->removeGpsData()V

    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAntibanding(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoExposureLock(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    :cond_9
    return-void
.end method

.method public setAutoWhiteBalanceLock(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    :cond_9
    return-void
.end method

.method public setColorEffect(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    return-void
.end method

.method public setExposureCompensation(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    return-void
.end method

.method public setFlashMode(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    return-void
.end method

.method public setFocusAreas(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public setFocusMode(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    return-void
.end method

.method public setGpsAltitude(D)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsAltitude(D)V

    return-void
.end method

.method public setGpsLatitude(D)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLatitude(D)V

    return-void
.end method

.method public setGpsLongitude(D)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsLongitude(D)V

    return-void
.end method

.method public setGpsProcessingMethod(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setGpsProcessingMethod(Ljava/lang/String;)V

    return-void
.end method

.method public setGpsTimestamp(J)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setGpsTimestamp(J)V

    return-void
.end method

.method public setJpegQuality(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    return-void
.end method

.method public setJpegThumbnailQuality(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailQuality(I)V

    return-void
.end method

.method public setJpegThumbnailSize(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setJpegThumbnailSize(II)V

    return-void
.end method

.method public setMeteringAreas(Ljava/util/List;)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    :cond_b
    return-void
.end method

.method public setPictureFormat(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    return-void
.end method

.method public setPictureSize(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    return-void
.end method

.method public setPreviewFormat(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    return-void
.end method

.method public setPreviewFpsRange(II)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    add-int v1, p1, p2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    goto :goto_9
.end method

.method public setPreviewFrameRate(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    return-void
.end method

.method public setPreviewSize(II)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    return-void
.end method

.method public setRecordingHint(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    :cond_9
    return-void
.end method

.method public setRotation(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    return-void
.end method

.method public setSceneMode(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    return-void
.end method

.method public setSharpness(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->isSupport()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->sharpness:Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;

    iget-object v1, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1, p1}, Lcom/pinguo/camera360/lib/camera/sheme/AbsScheme;->setParams(Landroid/hardware/Camera$Parameters;Ljava/lang/Object;)Landroid/hardware/Camera$Parameters;

    :cond_13
    return-void
.end method

.method public setVideoStabilization(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH_MR1:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_9
    return-void
.end method

.method public setWhiteBalance(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    return-void
.end method

.method public setZoom(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    return-void
.end method

.method public updateParameters(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 5

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateParameters:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/pinguo/camera360/adapter/GAdapter;->IS_UER_START_SMOOTH_ZOOM:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->startSmoothZoom(I)V

    :cond_29
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraParameters;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method
