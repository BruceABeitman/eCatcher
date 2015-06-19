.class  Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
.super Ljava/lang/Thread;
.source "SceneCamera.java"
.field private mCamera:Landroid/hardware/Camera;
.field private mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
.method public constructor <init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
const/16 v0, 0xa
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setPriority(I)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)Lcom/pinguo/camera360/camera/controller/SceneCamera;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
return-object v0
.end method
.method public clearThreadResource()V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$2()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "clearThreadResource"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
monitor-enter p0
:try_start_b
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
return-void
:catchall_10
move-exception v0
monitor-exit p0
:try_end_12
.catchall {:try_start_b .. :try_end_12} :catchall_10
throw v0
.end method
.method public run()V
.registers 8
:goto_0
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_24
invoke-static {}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$2()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "stop scene thread"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mCamera:Landroid/hardware/Camera;
:try_start_22
:try_end_22
.catchall {:try_start_1 .. :try_end_22} :catchall_47
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_6c
monitor-exit p0
:try_end_23
.catchall {:try_start_22 .. :try_end_23} :catchall_47
return-void
:cond_24
:try_start_24
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I
move-result v0
if-nez v0, :cond_2f
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_end_2f
.catchall {:try_start_24 .. :try_end_2f} :catchall_47
.catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2f} :catch_6c
:try_start_2f
:goto_2f
:cond_2f
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
if-eqz v0, :cond_4a
invoke-static {}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$2()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "will stop the scene thread"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit p0
goto :goto_0
:catchall_47
move-exception v0
monitor-exit p0
:try_end_49
.catchall {:try_start_2f .. :try_end_49} :catchall_47
throw v0
:try_start_4a
:cond_4a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;
if-eqz v6, :cond_6a
iget-object v0, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v0
iget-object v1, v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->data:[B
iget v2, v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->width:I
iget v3, v6, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->height:I
iget-object v4, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mCamera:Landroid/hardware/Camera;
new-instance v5, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;
invoke-direct {v5, p0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread$1;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)V
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->makeSceneFrame([BIILandroid/hardware/Camera;Lcom/pinguo/camera360/camera/model/SceneCameraModel$OnScenePreviewFrameMakedListener;)V
:cond_6a
monitor-exit p0
:try_end_6b
.catchall {:try_start_4a .. :try_end_6b} :catchall_47
goto :goto_0
:catch_6c
move-exception v0
goto :goto_2f
.end method
.method public setData([BLandroid/hardware/Camera;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V
new-instance v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;
invoke-direct {v0}, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;-><init>()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getScenePreviewWidth()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->width:I
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getScenePreviewHeight()I
move-result v1
iput v1, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->height:I
iget v1, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->width:I
if-eqz v1, :cond_2b
iget v1, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->height:I
if-nez v1, :cond_53
:cond_2b
invoke-static {}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$2()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "frame.width:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->width:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "/frame.height = "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget v3, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->height:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
monitor-exit p0
:goto_52
return-void
:cond_53
iput-object p1, v0, Lcom/pinguo/camera360/camera/controller/SceneCamera$SceneFrame;->data:[B
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mPictureDataQueue:Ljava/util/concurrent/BlockingQueue;
invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_6b
monitor-exit p0
goto :goto_52
:catchall_68
move-exception v1
monitor-exit p0
:try_end_6a
.catchall {:try_start_1 .. :try_end_6a} :catchall_68
throw v1
:cond_6b
:try_start_6b
iput-object p2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->mCamera:Landroid/hardware/Camera;
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
:try_end_71
.catchall {:try_start_6b .. :try_end_71} :catchall_68
goto :goto_52
.end method