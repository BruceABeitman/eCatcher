.class public Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;
.super Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
.source "LivePreviewModelAfterHoneycomb.java"
.field private static final TAG:Ljava/lang/String; = null
.field private static final TEXTURE_NAME:I = 0x1
.field private mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;-><init>()V
return-void
.end method
.method public destroy()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->setBuffer([B)V
sget-boolean v0, Lcom/pinguo/lib/ApiHelper;->AFTER_ICE_CREAM_SANDWICH:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V
:cond_11
return-void
.end method
.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
.registers 6
instance-of v0, p2, Lus/pinguo/androidsdk/PGGLSurfaceView;
if-eqz v0, :cond_12
check-cast p2, Lus/pinguo/androidsdk/PGGLSurfaceView;
iput-object p2, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v0, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
invoke-interface {v0, p3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V
return-void
:cond_12
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
iget-object v3, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->setGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getWidth()I
move-result v3
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/camera/lib/parameters/SizeInfo;->getHeight()I
move-result v4
invoke-virtual {p0, v3, v4, v2, v0}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->setPreviewSize(IIII)V
return-void
.end method
.method public setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
.registers 4
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p2, v0}, Landroid/view/SurfaceView;->setVisibility(I)V
return-void
.end method
.method public startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 8
const/4 v2, 0x1
sget-object v3, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "startPreview mSurfaceTexture "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->getFacing()I
move-result v3
if-ne v3, v2, :cond_3b
:goto_1e
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->initRenderParams(Z)V
:try_start_21
iget-object v2, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mPgglSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v2}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getSurfaceTextureName()I
move-result v1
const/4 v2, -0x1
if-ne v1, v2, :cond_2b
const/4 v1, 0x1
:cond_2b
new-instance v2, Landroid/graphics/SurfaceTexture;
invoke-direct {v2, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V
iput-object v2, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
iget-object v2, p0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
:goto_37
:try_end_37
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_3d
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->startPreview()V
return-void
:cond_3b
const/4 v2, 0x0
goto :goto_1e
:catch_3d
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_37
.end method
.method public stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.registers 4
sget-object v0, Lcom/pinguo/camera360/camera/model/LivePreviewModelAfterHoneycomb;->TAG:Ljava/lang/String;
const-string/jumbo v1, "stopPreview start"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
if-nez p1, :cond_b
:goto_a
return-void
:cond_b
invoke-virtual {p1}, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;->stopPreview()V
goto :goto_a
.end method