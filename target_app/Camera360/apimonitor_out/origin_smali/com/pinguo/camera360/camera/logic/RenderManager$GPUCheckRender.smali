.class Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;
.super Ljava/lang/Object;
.source "RenderManager.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/logic/RenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GPUCheckRender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/camera/logic/RenderManager;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;->this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/camera/logic/RenderManager;Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;-><init>(Lcom/pinguo/camera360/camera/logic/RenderManager;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 2

    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 11

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    const/16 v4, 0xd33

    invoke-interface {p1, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v2

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_10
    array-length v4, v2

    if-lt v0, v4, :cond_59

    :cond_13
    const-string/jumbo v4, "Test"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "11111111111 Get temp size:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_35

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->get()Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;

    move-result-object v4

    const-string/jumbo v5, "key_max_texture_size"

    invoke-virtual {v4, v5, v3}, Lcom/pinguo/camera360/lib/camera/lib/parameters/PGCameraPreferences;->putInt(Ljava/lang/String;I)V

    :cond_35
    iget-object v4, p0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;->this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;

    #getter for: Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;
    invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/RenderManager;->access$0(Lcom/pinguo/camera360/camera/logic/RenderManager;)Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    move-result-object v4

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;->this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;

    #getter for: Lcom/pinguo/camera360/camera/logic/RenderManager;->mOnGPUCheckFinishListener:Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;
    invoke-static {v4}, Lcom/pinguo/camera360/camera/logic/RenderManager;->access$0(Lcom/pinguo/camera360/camera/logic/RenderManager;)Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;

    move-result-object v4

    iget-object v5, p0, Lcom/pinguo/camera360/camera/logic/RenderManager$GPUCheckRender;->this$0:Lcom/pinguo/camera360/camera/logic/RenderManager;

    const/16 v6, 0x1f00

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f01

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/pinguo/camera360/camera/logic/RenderManager;->getGPUSupportRender(Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v5, v6, v7}, Lcom/pinguo/camera360/camera/logic/RenderManager;->access$1(Lcom/pinguo/camera360/camera/logic/RenderManager;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/pinguo/camera360/camera/logic/RenderManager$OnGPUCheckFinishListener;->onGPUCheckFinish(I)V

    :cond_58
    return-void

    :cond_59
    aget v4, v2, v0

    if-lez v4, :cond_13

    aget v4, v2, v0

    if-le v4, v3, :cond_63

    aget v3, v2, v0

    :cond_63
    add-int/lit8 v0, v0, 0x1

    goto :goto_10
.end method
