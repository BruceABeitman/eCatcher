.class  Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;
.super Ljava/lang/Object;
.source "SceneCamera.java"
.implements Lcom/pinguo/camera360/camera/model/SceneCameraModel$OnScenePreviewFrameMakedListener;
.field final synthetic this$1:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;->this$1:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onScenePreviewMaked([III)V
.registers 6
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;->this$1:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)Lcom/pinguo/camera360/camera/controller/SceneCamera;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_11
:goto_10
return-void
:cond_11
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
iput p2, v0, Landroid/os/Message;->arg1:I
iput p3, v0, Landroid/os/Message;->arg2:I
const/16 v1, 0xb
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;->this$1:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)Lcom/pinguo/camera360/camera/controller/SceneCamera;
move-result-object v1
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$4(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_10
.end method