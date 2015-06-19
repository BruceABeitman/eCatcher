.class Lcom/pinguo/camera360/camera/controller/SceneCamera$1;
.super Landroid/os/Handler;
.source "SceneCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/SceneCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_36

    :cond_5
    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$1(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/view/CameraSceneView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setPreviewSize(II)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$1(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/view/CameraSceneView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [I

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->setPreviewData([I)V

    iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mCameraSceneView:Lcom/pinguo/camera360/camera/view/CameraSceneView;
    invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$1(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/view/CameraSceneView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->invalidate()V

    goto :goto_5

    :pswitch_data_36
    .packed-switch 0xb
        :pswitch_6
    .end packed-switch
.end method
