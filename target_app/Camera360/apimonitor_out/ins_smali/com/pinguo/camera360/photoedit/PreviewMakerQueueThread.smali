.class public Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;
.super Ljava/lang/Thread;
.source "PreviewMakerQueueThread.java"
.implements Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;
.field private static final TAG:Ljava/lang/String;
.field private cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
.field private gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
.field private gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
.field private lastMakeByGPU:Z
.field private lastMakeType:I
.field private mListener:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
.field private mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private needReloadSources:Z
.field private sdk:Lus/pinguo/androidsdk/PGImageSDK;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeByGPU:Z
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeType:I
iput-boolean v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->needReloadSources:Z
const/16 v0, 0xa
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->setPriority(I)V
const-string/jumbo v0, "Preview Maker Queue Thread"
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->setName(Ljava/lang/String;)V
new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;
const/16 v1, 0x64
invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->start()V
return-void
.end method
.method private deal(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)V
.registers 15
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
#getter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->info:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$6(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object v1
#getter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$7(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
move-result-object v3
if-eqz v1, :cond_2
if-eqz v3, :cond_2
#getter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->data:[B
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$8(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)[B
move-result-object v2
#getter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->reuseData:Z
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$9(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Z
move-result v10
#getter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->needOrgPreview:Z
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$10(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)Z
move-result v5
const/4 v0, 0x4
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v11
if-ne v0, v11, :cond_4e
invoke-static {v2}, Lcom/pinguo/camera360/camera/logic/EasyContextRecognizer;->getEasyEffectAlias([B)Ljava/lang/String;
move-result-object v7
invoke-static {}, Lcom/pinguo/camera360/effect/model/EffectModel;->getInstance()Lcom/pinguo/camera360/effect/model/EffectModel;
move-result-object v0
invoke-virtual {v0, v7}, Lcom/pinguo/camera360/effect/model/EffectModel;->getEffectByKey(Ljava/lang/String;)Lcom/pinguo/camera360/effect/model/entity/Effect;
move-result-object v6
invoke-virtual {v1, v7}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffectAlias(Ljava/lang/String;)V
invoke-virtual {v1, v6}, Lcom/pinguo/camera360/photoedit/PictureInfo;->setEffect(Lcom/pinguo/camera360/effect/model/entity/Effect;)V
const-string/jumbo v0, "EasyContextRecognizer"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "\u8bc6\u522b\u7ed3\u679c "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectAlias()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v0, v11}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_4e
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->isMakeGPU()Z
move-result v8
move v4, v10
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeByGPU:Z
if-eqz v0, :cond_6f
if-nez v8, :cond_6f
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-eqz v0, :cond_68
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->unregisterSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v0}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
:cond_68
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
const/4 v4, 0x0
:cond_6f
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeByGPU:Z
if-nez v0, :cond_79
if-eqz v8, :cond_79
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
const/4 v4, 0x0
:cond_79
if-eqz v8, :cond_84
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-nez v0, :cond_84
invoke-direct {p0}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->initSDK()Z
move-result v8
const/4 v4, 0x0
:cond_84
if-nez v8, :cond_92
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
if-nez v0, :cond_92
new-instance v0, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
const/4 v4, 0x0
:cond_92
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v9
if-eqz v8, :cond_dd
iget-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->needReloadSources:Z
if-eqz v0, :cond_a4
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-static {v0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->reloadResource(Lus/pinguo/androidsdk/PGImageSDK;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->needReloadSources:Z
:cond_a4
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->renderAsEffect()Z
move-result v0
if-eqz v0, :cond_c0
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;->setPreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iget-object v11, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
invoke-virtual {v0, v11}, Lus/pinguo/androidsdk/PGImageSDK;->renderActionWithWait(Lus/pinguo/androidsdk/PGRendererMethod;)V
:goto_b6
:cond_b6
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeType:I
iput-boolean v8, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeByGPU:Z
goto/16 :goto_2
:cond_c0
const/4 v0, 0x3
if-ne v9, v0, :cond_b6
iget v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->lastMakeType:I
const/4 v11, 0x3
if-eq v0, v11, :cond_d0
const/4 v0, 0x3
if-ne v9, v0, :cond_d0
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->resetRenderMethod()V
:cond_d0
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;->setPreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iget-object v11, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
invoke-virtual {v0, v11}, Lus/pinguo/androidsdk/PGImageSDK;->renderActionWithWait(Lus/pinguo/androidsdk/PGRendererMethod;)V
goto :goto_b6
:cond_dd
invoke-virtual {v1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->renderAsEffect()Z
move-result v0
if-eqz v0, :cond_e9
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
invoke-virtual {v0, v1, v2, v3, v5}, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;Z)V
goto :goto_b6
:cond_e9
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->cpuPreviewMethod:Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/photoedit/CPUPreviewMethod;->makeScenePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
goto :goto_b6
.end method
.method private initSDK()Z
.registers 5
const/4 v1, 0x0
invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;
move-result-object v0
if-nez v0, :cond_10
sget-object v2, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v3, "\u521d\u59cb\u5316PGImageSDK\u5931\u8d25,appContextRef.get() return null"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_f
:cond_f
return v1
:cond_10
new-instance v2, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
invoke-direct {v2}, Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
new-instance v2, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
invoke-direct {v2}, Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
invoke-static {}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->getPGImageSDK()Lus/pinguo/androidsdk/PGImageSDK;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-eqz v2, :cond_f
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->registerSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
const/4 v1, 0x1
goto :goto_f
.end method
.method public cancelFinish()V
.registers 4
const-string/jumbo v0, "makePreview"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Cancel finish preview thread! Queue size:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method public finish()V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
new-instance v0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;-><init>(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)V
const-string/jumbo v1, "makePreview"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Finish preview thread! Queue size:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_38
sget-object v1, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->TAG:Ljava/lang/String;
const-string/jumbo v2, "Add preview request failed!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_38
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v0
return v0
.end method
.method public makePreview(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/IPreviewCallback;ZZ)V
.registers 9
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
invoke-static {p1}, Lcom/pinguo/camera360/photoedit/PictureInfo;->adjustPictureInfo(Lcom/pinguo/camera360/photoedit/PictureInfo;)Lcom/pinguo/camera360/photoedit/PictureInfo;
move-result-object p1
new-instance v1, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;
const/4 v2, 0x0
invoke-direct {v1, v2}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;-><init>(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)V
#setter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->info:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-static {v1, p1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$1(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/PictureInfo;)V
#setter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->data:[B
invoke-static {v1, p2}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$2(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;[B)V
#setter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->callback:Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;
invoke-static {v1, p3}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$3(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Lcom/pinguo/camera360/photoedit/callback/IPreviewCallback;)V
#setter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->reuseData:Z
invoke-static {v1, p4}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$4(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Z)V
#setter for: Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->needOrgPreview:Z
invoke-static {v1, p5}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;->access$5(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;Z)V
:try_start_1c
iget-object v2, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
:try_end_21
.catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_21} :catch_22
goto :goto_2
:catch_22
move-exception v0
sget-object v2, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->TAG:Ljava/lang/String;
invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2
.end method
.method public reloadResources()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->needReloadSources:Z
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
:goto_1
:cond_1
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_29
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v1
if-gtz v1, :cond_29
:cond_11
:goto_11
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
if-eqz v1, :cond_24
invoke-static {p0}, Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory;->unregisterSDK(Lcom/pinguo/camera360/photoedit/GPUImageSdkFactory$SDKReloadResourceListener;)V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
invoke-virtual {v1}, Lus/pinguo/androidsdk/PGImageSDK;->destroySDK()V
iput-object v4, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->sdk:Lus/pinguo/androidsdk/PGImageSDK;
:cond_24
iput-object v4, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuNormalPreviewMethod:Lcom/pinguo/camera360/photoedit/GPUNormalPreviewMethod;
iput-object v4, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->gpuScenePreviewMethod:Lcom/pinguo/camera360/photoedit/GPUScenePreviewMethod;
return-void
:try_start_29
:cond_29
const-string/jumbo v1, "makePreview"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Start deal preview picture! Queue size:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;
invoke-direct {p0, v1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->deal(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$SaveRequest;)V
const-string/jumbo v1, "makePreview"
const-string/jumbo v2, "End deal preview picture!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mStop:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v1
if-eqz v1, :cond_1
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v1
if-nez v1, :cond_1
const-string/jumbo v1, "makePreview"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "Stop preview! Queue size:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mListener:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;
if-eqz v1, :cond_11
iget-object v1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mListener:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;
invoke-interface {v1}, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;->onAllPreviewMaked()V
:try_end_8e
.catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_8e} :catch_8f
goto :goto_11
:catch_8f
move-exception v0
sget-object v1, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->TAG:Ljava/lang/String;
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_1
.end method
.method public setListener(Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread;->mListener:Lcom/pinguo/camera360/photoedit/PreviewMakerQueueThread$IPreviewMaker;
return-void
.end method