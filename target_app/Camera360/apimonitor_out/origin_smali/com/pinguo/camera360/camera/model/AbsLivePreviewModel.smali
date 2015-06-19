.class public abstract Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;
.super Ljava/lang/Object;
.source "AbsLivePreviewModel.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/camera/model/IPreviewModel;
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEffect:Ljava/lang/String;

.field private mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

.field private mPreviewBuffer:[B

.field private mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

.field private mSceneParam:Ljava/lang/String;

.field private mScenePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->EFFECT_NONE:Lcom/pinguo/camera360/effect/model/entity/Effect;

    iget-object v0, v0, Lcom/pinguo/camera360/effect/model/entity/Effect;->key:Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mEffect:Ljava/lang/String;

    sget-object v0, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method protected getBuffer()[B
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract init(Landroid/view/SurfaceView;Landroid/view/SurfaceView;Landroid/view/SurfaceHolder$Callback;)V
.end method

.method protected initRenderParams(Z)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setEffectAlias(Ljava/lang/String;)V

    if-eqz p1, :cond_2e

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderFrontPreviewAdjustDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setMirror(I)V

    :goto_21
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setFront(Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V

    goto :goto_4

    :cond_2e
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->getRenderBackPreviewAdjustDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setMirror(I)V

    goto :goto_21

    :cond_3c
    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setMirror(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mScenePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mSceneParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadTemplate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->makePreview()V

    :goto_9
    return-void

    :cond_a
    sget-object v0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stop live effect, mLiveEffect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public abstract preStartPreview()V
.end method

.method public resetRenderParams(Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->initRenderParams(Z)V

    return-void
.end method

.method public setBuffer([B)V
    .registers 5

    sget-object v1, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "setBuffer buffer = "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_26

    const/4 v0, 0x0

    :goto_d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mPreviewBuffer:[B

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mPreviewBuffer:[B

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setBuffer([B)V

    :cond_25
    return-void

    :cond_26
    array-length v0, p1

    goto :goto_d
.end method

.method public varargs setEffect([Ljava/lang/Object;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    sget-object v1, Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;->RENDER_NORMAL:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    if-ne v0, v1, :cond_19

    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mEffect:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mEffect:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setEffectAlias(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    aget-object v0, p1, v2

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mScenePath:Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mSceneParam:Ljava/lang/String;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mScenePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mSceneParam:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->loadTemplate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method protected setGLSurfaceView(Lus/pinguo/androidsdk/PGGLSurfaceView;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-nez v0, :cond_b

    new-instance v0, Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-direct {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;-><init>(Lus/pinguo/androidsdk/PGGLSurfaceView;)V

    iput-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    :cond_b
    return-void
.end method

.method public setMirror(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setMirror(I)V

    :cond_9
    return-void
.end method

.method public setOrientation(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setOrientation(I)V

    :cond_9
    return-void
.end method

.method public setPreviewFrame(I)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewFrame(I)V

    :cond_9
    return-void
.end method

.method protected setPreviewSize(IIII)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setPreviewSize(IIII)V

    return-void
.end method

.method public setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mRenderType:Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/pinguo/camera360/camera/model/AbsLivePreviewModel;->mLiveEffect:Lcom/pinguo/camera360/photoedit/GPULiveEffect;

    invoke-virtual {v0, p1}, Lcom/pinguo/camera360/photoedit/GPULiveEffect;->setRenderType(Lus/pinguo/androidsdk/PGRendererMethod$EM_MAKE_TYPE;)V

    :cond_b
    return-void
.end method

.method public abstract setSurfaceVisibility(Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
.end method

.method public abstract startPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.end method

.method public abstract stopPreview(Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraProxy;)V
.end method
