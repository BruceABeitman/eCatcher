.class public Lus/pinguo/androidsdk/pgedit/PGEditSDK;
.super Ljava/lang/Object;
.source "PGEditSDK.java"
.field private isResume:Z
.field private mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
.field private mContext:Landroid/content/Context;
.field private mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
.field private mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, v0, v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;-><init>(Lus/pinguo/androidsdk/PGGLSurfaceView;Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Lus/pinguo/androidsdk/PGGLSurfaceView;Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;Landroid/content/Context;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isResume:Z
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
if-eqz v0, :cond_11
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0, p2}, Lus/pinguo/androidsdk/PGGLSurfaceView;->setListener(Lus/pinguo/androidsdk/PGGLSurfaceView$PGGLListener;)V
:cond_11
iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mContext:Landroid/content/Context;
return-void
.end method
.method public changeEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V
.registers 3
invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->changeEffect()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method public isPGImageSDKBusyRunning()Z
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->isRenderActionBusyRunning()Z
move-result v0
return v0
.end method
.method public isPGImageSDKDestroy()Z
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->isDestroy()Z
move-result v0
return v0
.end method
.method public isResumed()Z
.registers 2
iget-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isResume:Z
return v0
.end method
.method public makeEffect(Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
.registers 7
invoke-virtual {p2, p1, p3, p4, p5}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;->makeEffect(Ljava/lang/String;Ljava/lang/String;ILus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditRendererMethodActionListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0, p2}, Lus/pinguo/androidsdk/PGImageSDK;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method public onPause()V
.registers 3
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditSDK; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isResume:Z
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
if-eqz v0, :cond_c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onPause()V
:cond_c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditSDK; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onResume()V
.registers 5
const-string v1, " + Lus/pinguo/androidsdk/pgedit/PGEditSDK; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->isResume:Z
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
if-eqz v0, :cond_c
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGGLSurfaceView;->onResume()V
:cond_c
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditImageSDK;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mContext:Landroid/content/Context;
sget-object v2, Lcom/pinguo/camera360/photoedit/GPUEditor;->EFFECT_KEY:Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getLoadResources()[B
move-result-object v3
invoke-direct {v0, v1, v2, v3}, Lus/pinguo/androidsdk/pgedit/PGEditImageSDK;-><init>(Landroid/content/Context;Ljava/lang/String;[B)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
if-eqz v0, :cond_27
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
invoke-interface {v0}, Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;->onResume()V
const/4 v0, 0x0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
:cond_27
const-string v1, " - Lus/pinguo/androidsdk/pgedit/PGEditSDK; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public reShow(Landroid/graphics/Bitmap;)V
.registers 4
if-eqz p1, :cond_11
sget-object v0, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getWidth()I
move-result v0
sget-object v1, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter;->showPictureInfo:Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditPhotoLayoutCounter$PGEditPictureInfo;->getHeight()I
move-result v1
invoke-virtual {p0, p1, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->showBitmap(Landroid/graphics/Bitmap;II)V
:cond_11
return-void
.end method
.method public setActionListener(Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mActionListener:Lus/pinguo/androidsdk/pgedit/PGEditSDK$PGEditSDKActionListener;
return-void
.end method
.method public showBitmap(Landroid/graphics/Bitmap;II)V
.registers 6
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
new-instance v1, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;
invoke-direct {v1, p2, p3, p1}, Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod$PGEditNormalRendererMethod;-><init>(IILandroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method public showEffect(Lus/pinguo/androidsdk/pgedit/PGEditRendererMethod;)V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mEditSurfaceView:Lus/pinguo/androidsdk/PGGLSurfaceView;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/PGGLSurfaceView;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method
.method public showEffectForPGImageSDK(Lus/pinguo/androidsdk/PGRendererMethod;)V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditSDK;->mPGImageSdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/PGImageSDK;->renderAction(Lus/pinguo/androidsdk/PGRendererMethod;)V
return-void
.end method