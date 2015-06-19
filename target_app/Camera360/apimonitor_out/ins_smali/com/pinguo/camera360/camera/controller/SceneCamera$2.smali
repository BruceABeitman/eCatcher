.class  Lcom/pinguo/camera360/camera/controller/SceneCamera$2;
.super Ljava/lang/Object;
.source "SceneCamera.java"
.implements Lcom/pinguo/camera360/camera/controller/SceneCamera$ISceneInitCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSceneInitFinish()V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
monitor-enter p0
:try_start_3
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
sget-object v4, Lcom/pinguo/camera360/scenetemplate/SceneTemplateUtil;->LOCAL_TEMPLATE_PATH:Ljava/lang/String;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "20121218145945.png"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setScenePath(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v2
const-string/jumbo v3, "type=0;cutscale=512:371;cutdirect=5;pos=126,40,634,40,634,409,125,409;effect=sketch_class,4;rotate=1"
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->setSceneParam(Ljava/lang/String;)V
invoke-static {}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->instance()Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/businessPrefSetting/CameraBusinessSettingModel;->isRenderEnable()Z
move-result v2
if-nez v2, :cond_8e
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$5(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
move-result-object v2
if-nez v2, :cond_8e
invoke-static {}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->instance()Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/lib/camera/lib/parameters/CameraSettingModel;->getCameraId()I
move-result v2
if-ne v2, v0, :cond_90
:goto_50
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mSceneCameraModel:Lcom/pinguo/camera360/camera/model/SceneCameraModel;
invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$3(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/model/SceneCameraModel;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->getSceneParam()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/camera/model/SceneCameraModel;->resetSceneParam(ZLjava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
new-instance v2, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
invoke-direct {v2, v3}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;-><init>(Lcom/pinguo/camera360/camera/controller/SceneCamera;)V
#setter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
invoke-static {v1, v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$6(Lcom/pinguo/camera360/camera/controller/SceneCamera;Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$5(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
move-result-object v1
const-string/jumbo v2, "ScenePreviewThread"
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->setName(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mScenePreviewThread:Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$5(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera$HandleScenePreviewThread;->start()V
iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/SceneCamera$2;->this$0:Lcom/pinguo/camera360/camera/controller/SceneCamera;
#getter for: Lcom/pinguo/camera360/camera/controller/SceneCamera;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/SceneCamera;->access$0(Lcom/pinguo/camera360/camera/controller/SceneCamera;)Ljava/util/concurrent/atomic/AtomicBoolean;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
:cond_8e
monitor-exit p0
return-void
:cond_90
move v0, v1
goto :goto_50
:catchall_92
move-exception v1
monitor-exit p0
:try_end_94
.catchall {:try_start_3 .. :try_end_94} :catchall_92
throw v1
.end method