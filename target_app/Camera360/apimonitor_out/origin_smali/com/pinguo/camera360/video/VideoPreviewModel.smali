.class public Lcom/pinguo/camera360/video/VideoPreviewModel;
.super Ljava/lang/Object;
.source "VideoPreviewModel.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/video/VideoPreviewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private resetPreviewSize(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 13

    invoke-static {}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->instance()Lcom/pinguo/camera360/video/settings/VideoSettingModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/pinguo/camera360/video/settings/VideoSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v4

    sget-object v8, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "resetPreviewSize size =  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_20

    :goto_1f
    return-void

    :cond_20
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v4}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v1, v8, v9

    if-le v0, v7, :cond_4d

    move v5, v7

    move v7, v0

    move v0, v5

    :cond_4d
    int-to-float v8, v7

    int-to-float v9, v0

    div-float v6, v8, v9

    cmpl-float v8, v1, v6

    if-lez v8, :cond_98

    move v3, v7

    int-to-float v8, v7

    div-float/2addr v8, v1

    float-to-int v2, v8

    :goto_59
    sget-object v8, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "parems.width = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/ scaleHeight = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/scaleWidth = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1f

    :cond_98
    move v2, v0

    int-to-float v8, v0

    mul-float/2addr v8, v1

    float-to-int v3, v8

    goto :goto_59
.end method


# virtual methods
.method public destroy()V
    .registers 3

    sget-object v0, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    return-void
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .registers 6

    sget-object v0, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 3

    return-void
.end method

.method public preStartPreview()V
    .registers 1

    return-void
.end method

.method public setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .registers 6

    sget-object v1, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSurfaceVisibility"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    if-eqz p2, :cond_13

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_13
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/video/VideoPreviewModel;->resetPreviewSize(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 5

    sget-object v0, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startPreview  mHolder"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/video/VideoPreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->startPreview()V

    return-void
.end method

.method public stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/video/VideoPreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->stopPreview()V

    :cond_d
    return-void
.end method
