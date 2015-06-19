.class public Lcom/pinguo/camera360/camera/model/LivePreviewModel;
.super Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
.source "LivePreviewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mHolder:Landroid/view/SurfaceHolder;

.field private mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->setBuffer([B)V

    return-void
.end method

.method public init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
    .registers 6

    instance-of v0, p2, Lus/pinguo/androidsdk/PGGLSurfaceView;

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    check-cast p2, Lus/pinguo/androidsdk/PGGLSurfaceView;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;

    return-void

    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "must use PGGLSurfaceView as live surfaceView"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public preStartPreview()V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getPreviewSize()Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;

    move-result-object v1

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v2, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v3, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->setGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I

    move-result v3

    invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I

    move-result v4

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->setPreviewSize(IIII)V

    return-void
.end method

.method public setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    .registers 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 5

    const/4 v0, 0x1

    sget-object v1, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreview"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I

    move-result v1

    if-ne v1, v0, :cond_1b

    :goto_f
    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->initRenderParams(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->startPreview()V

    return-void

    :cond_1b
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
    .registers 4

    sget-object v0, Lcom/pinguo/camera360/camera/model/LivePreviewModel;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview start"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->stopPreview()V

    :cond_d
    return-void
.end method
