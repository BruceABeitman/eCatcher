.class public Lus/pinguo/androidsdk/PGGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "PGGLSurfaceView.java"
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;
.field private static final STATE_DESTROY:I = 0x4
.field private static final STATE_DRAW:I = 0x3
.field private static final STATE_INIT:I = 0x1
.field private static final STATE_RELOAD:I = 0x2
.field private static final TAG:Ljava/lang/String;
.field private context:Landroid/content/Context;
.field private fps:I
.field private fpsCount:I
.field private listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
.field private transient mRendererPointer:I
.field private method:Lus/pinguo/androidsdk/PGRendererMethod;
.field private needRefreshMethod:Z
.field private needReload:Z
.field private final sdkLock:[B
.field private startTime:J
.field private transient state:I
.field private surfaceTextureName:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
iput-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needReload:Z
new-array v0, v2, [B
iput-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fps:I
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->startTime:J
iput-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
const/4 v0, -0x1
iput v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->surfaceTextureName:I
iput-object p1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
iput-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needReload:Z
new-array v0, v2, [B
iput-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fps:I
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->startTime:J
iput-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
iput-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
const/4 v0, -0x1
iput v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->surfaceTextureName:I
iput-object p1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
invoke-direct {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->init()V
return-void
.end method
.method private init()V
.registers 9
const/4 v2, 0x5
const/16 v1, 0x8
const/4 v5, 0x0
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;
move-result-object v0
const/4 v3, -0x3
invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V
const/4 v0, 0x2
invoke-virtual {p0, v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setEGLContextClientVersion(I)V
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
if-le v0, v1, :cond_23
move-object v0, p0
move v2, v1
move v3, v1
move v4, v1
move v6, v5
invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setEGLConfigChooser(IIIIII)V
:goto_1c
invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
invoke-virtual {p0, v5}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setRenderMode(I)V
return-void
:cond_23
const/4 v3, 0x6
move-object v1, p0
move v4, v2
move v6, v5
move v7, v5
invoke-virtual/range {v1 .. v7}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setEGLConfigChooser(IIIIII)V
goto :goto_1c
.end method
.method public getFps()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fps:I
return v0
.end method
.method public getSurfaceTextureName()I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->surfaceTextureName:I
return v0
.end method
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
.registers 10
const/4 v6, 0x0
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
packed-switch v2, :pswitch_data_f2
:goto_6
:cond_6
return-void
:pswitch_7
iget-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v3
:try_start_a
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-nez v2, :cond_54
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUEditor;->EFFECT_KEY:Ljava/lang/String;
iget-object v4, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources()[B
move-result-object v5
invoke-static {v2, v4, v5}, Lus/pinguo/androidsdk/PGNativeMethod;->createAndroidSDK(Ljava/lang/String;Landroid/content/Context;[B)I
move-result v2
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
const/high16 v4, 0x3f80
const/4 v5, 0x0
const/4 v6, 0x0
const/high16 v7, 0x3f80
invoke-static {v2, v4, v5, v6, v7}, Lus/pinguo/androidsdk/PGNativeMethod;->setBackground(IFFFF)V
sget-object v2, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "create SDK\uff1a"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v5, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v2, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->registerSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
iget-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needReload:Z
if-eqz v2, :cond_59
const/4 v2, 0x2
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->requestRender()V
:goto_4b
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
if-eqz v2, :cond_54
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
invoke-interface {v2}, Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;->glCreated()V
:cond_54
monitor-exit v3
goto :goto_6
:catchall_56
move-exception v2
monitor-exit v3
:try_end_58
.catchall {:try_start_a .. :try_end_58} :catchall_56
throw v2
:cond_59
const/4 v2, 0x3
:try_start_5a
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
:try_end_5c
.catchall {:try_start_5a .. :try_end_5c} :catchall_56
goto :goto_4b
:pswitch_5d
iget-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v3
:try_start_60
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-eqz v2, :cond_73
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources()[B
move-result-object v4
invoke-static {v2, v4}, Lus/pinguo/androidsdk/PGNativeMethod;->loadResource(I[B)Z
const/4 v2, 0x3
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
const/4 v2, 0x0
iput-boolean v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needReload:Z
:cond_73
monitor-exit v3
goto :goto_6
:catchall_75
move-exception v2
monitor-exit v3
:try_end_77
.catchall {:try_start_60 .. :try_end_77} :catchall_75
throw v2
:pswitch_78
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
if-eqz v2, :cond_6
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
invoke-virtual {v2}, Lus/pinguo/androidsdk/PGRendererMethod;->rendererAction()V
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
if-nez v2, :cond_93
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
iput-wide v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->startTime:J
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
goto/16 :goto_6
:cond_93
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->startTime:J
sub-long v2, v0, v2
const-wide/16 v4, 0x3e8
cmp-long v2, v2, v4
if-gez v2, :cond_a9
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
goto/16 :goto_6
:cond_a9
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fps:I
iput v6, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->fpsCount:I
goto/16 :goto_6
:pswitch_b1
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-eqz v2, :cond_e3
sget-object v2, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "destroy SDK:"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->unregisterSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
iget v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-static {v2}, Lus/pinguo/androidsdk/PGNativeMethod;->destroyAndroidSDK(I)V
iget-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v3
const/4 v2, 0x0
:try_start_d8
iput v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
const/4 v2, 0x0
iput-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
monitor-exit v3
:try_end_e3
.catchall {:try_start_d8 .. :try_end_e3} :catchall_ee
:cond_e3
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
if-eqz v2, :cond_6
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
invoke-interface {v2}, Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;->glDestroyed()V
goto/16 :goto_6
:catchall_ee
move-exception v2
:try_start_ef
monitor-exit v3
:try_end_f0
.catchall {:try_start_ef .. :try_end_f0} :catchall_ee
throw v2
nop
:pswitch_data_f2
.packed-switch 0x1
:pswitch_7
:pswitch_5d
:pswitch_78
:pswitch_b1
.end packed-switch
.end method
.method public onPause()V
.registers 4
const-string v1, " + Lus/pinguo/androidsdk/PGGLSurfaceView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v1
:try_start_b
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-eqz v0, :cond_1e
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v2
:try_end_12
.catchall {:try_start_b .. :try_end_12} :catchall_31
const/4 v0, 0x4
:try_start_13
iput v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->requestRender()V
:try_end_18
.catchall {:try_start_13 .. :try_end_18} :catchall_2e
:try_start_18
iget-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
invoke-virtual {v0}, Ljava/lang/Object;->wait()V
:try_start_1d
:goto_1d
:try_end_1d
.catchall {:try_start_18 .. :try_end_1d} :catchall_2e
.catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_34
monitor-exit v2
:try_start_1e
:try_end_1e
.catchall {:try_start_1d .. :try_end_1e} :catchall_2e
:cond_1e
monitor-exit v1
:try_end_1f
.catchall {:try_start_1e .. :try_end_1f} :catchall_31
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v1, "onPause release sdkLock"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
const-string v1, " - Lus/pinguo/androidsdk/PGGLSurfaceView; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_2e
move-exception v0
:try_start_2f
monitor-exit v2
:try_end_30
.catchall {:try_start_2f .. :try_end_30} :catchall_2e
:try_start_30
throw v0
:catchall_31
move-exception v0
monitor-exit v1
:try_end_33
.catchall {:try_start_30 .. :try_end_33} :catchall_31
throw v0
:catch_34
move-exception v0
goto :goto_1d
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lus/pinguo/androidsdk/PGGLSurfaceView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v1
:try_start_9
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v2, "onResume"
invoke-static {v0, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-nez v0, :cond_1b
const/4 v0, 0x1
iput v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->requestRender()V
:cond_1b
monitor-exit v1
const-string v1, " - Lus/pinguo/androidsdk/PGGLSurfaceView; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catchall_1d
move-exception v0
monitor-exit v1
:try_end_1f
.catchall {:try_start_9 .. :try_end_1f} :catchall_1d
throw v0
.end method
.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
.registers 6
iget-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
if-eqz v0, :cond_a
iget-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
const/4 v1, 0x1
invoke-virtual {v0, v1, p2, p3}, Lus/pinguo/androidsdk/PGRendererMethod;->setScreenSize(ZII)V
:cond_a
return-void
.end method
.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.registers 10
const/4 v2, 0x1
const/4 v1, 0x0
new-array v0, v2, [I
invoke-interface {p1, v2, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V
aget v1, v0, v1
iput v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->surfaceTextureName:I
iget-object v2, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->sdkLock:[B
monitor-enter v2
:try_start_e
iget v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-nez v1, :cond_50
sget-object v1, Lcom/pinguo/camera360/photoedit/GPUEditor;->EFFECT_KEY:Ljava/lang/String;
iget-object v3, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->context:Landroid/content/Context;
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources()[B
move-result-object v4
invoke-static {v1, v3, v4}, Lus/pinguo/androidsdk/PGNativeMethod;->createAndroidSDK(Ljava/lang/String;Landroid/content/Context;[B)I
move-result v1
iput v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
iget v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/high16 v6, 0x3f80
invoke-static {v1, v3, v4, v5, v6}, Lus/pinguo/androidsdk/PGNativeMethod;->setBackground(IFFFF)V
sget-object v1, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "create SDK\uff1a"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v4, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v1, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->registerSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
const/4 v1, 0x3
iput v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->state:I
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
if-eqz v1, :cond_50
iget-object v1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
invoke-interface {v1}, Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;->glCreated()V
:cond_50
monitor-exit v2
return-void
:catchall_52
move-exception v1
monitor-exit v2
:try_end_54
.catchall {:try_start_e .. :try_end_54} :catchall_52
throw v1
.end method
.method public reloadResources()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needReload:Z
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->requestRender()V
return-void
.end method
.method public renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
.registers 4
if-eqz p1, :cond_6
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
if-nez v0, :cond_a
:cond_6
const/4 v0, 0x0
iput-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
:goto_9
return-void
:cond_a
iput-object p1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
iget-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
if-eqz v0, :cond_20
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v1, "resetRenderMethod"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGRendererMethod;->resetRenderMethod()V
const/4 v0, 0x0
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
:cond_20
iget v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->mRendererPointer:I
invoke-virtual {p1, v0}, Lus/pinguo/androidsdk/PGRendererMethod;->setRendererPointer(I)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->requestRender()V
goto :goto_9
.end method
.method public setListener(Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->listener:Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;
return-void
.end method
.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
.registers 4
const/4 v0, 0x0
iput-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v1, "surfaceCreated"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
return-void
.end method
.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.registers 4
sget-object v0, Lus/pinguo/androidsdk/PGGLSurfaceView;->TAG:Ljava/lang/String;
const-string/jumbo v1, "surfaceDestroyed"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-object v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->method:Lus/pinguo/androidsdk/PGRendererMethod;
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/PGGLSurfaceView;->needRefreshMethod:Z
invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
return-void
.end method