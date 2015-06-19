.class public interface abstract Lcom/pinguo/album/views/GLController;
.super Ljava/lang/Object;
.source "GLController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/views/GLController$OnGLIdleListener;
    }
.end annotation


# virtual methods
.method public abstract addOnGLIdleListener(Lcom/pinguo/album/views/GLController$OnGLIdleListener;)V
.end method

.method public abstract freeze()V
.end method

.method public abstract getCompensation()I
.end method

.method public abstract getCompensationMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract getContext()Landroid/content/Context;
.end method

.method public abstract getDisplayRotation()I
.end method

.method public abstract lockRenderThread()V
.end method

.method public abstract registerLaunchedAnimation(Lcom/pinguo/album/animations/CanvasAnim;)V
.end method

.method public abstract requestLayoutContentPane()V
.end method

.method public abstract requestRender()V
.end method

.method public abstract requestRenderForced()V
.end method

.method public abstract setContentPane(Lcom/pinguo/album/views/GLBaseView;)V
.end method

.method public abstract setLightsOutMode(Z)V
.end method

.method public abstract setOrientationSource(Lcom/pinguo/album/common/OrientationSource;)V
.end method

.method public abstract unfreeze()V
.end method

.method public abstract unlockRenderThread()V
.end method
