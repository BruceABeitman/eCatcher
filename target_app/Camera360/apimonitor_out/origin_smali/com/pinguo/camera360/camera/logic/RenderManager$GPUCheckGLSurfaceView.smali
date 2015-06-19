.class Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/logic/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPUCheckGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/camera/logic/RenderManager;Landroid/content/Context;)V
    .registers 5

    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;->this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;-><init>(Lcom/pinguo/camera360/camera/logic/RenderManager;Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    return-void
.end method
