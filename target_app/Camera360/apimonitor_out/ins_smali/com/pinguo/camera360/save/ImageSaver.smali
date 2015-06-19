.class public Lcom/pinguo/camera360/save/ImageSaver;
.super Ljava/lang/Thread;
.source "ImageSaver.java"
.field private static final QUEUE_LIMIT:I = 0x5
.field private static final TAG:Ljava/lang/String;
.field private mContentResolver:Landroid/content/ContentResolver;
.field private mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
.field private mQueue:Ljava/util/ArrayList;
.field private mStop:Z
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/save/ImageSaver;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/save/ImageSaver;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/ContentResolver;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
const/16 v0, 0xa
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/ImageSaver;->setPriority(I)V
const-string/jumbo v0, "Image Saver Thread"
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/save/ImageSaver;->setName(Ljava/lang/String;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mContentResolver:Landroid/content/ContentResolver;
invoke-virtual {p0}, Lcom/pinguo/camera360/save/ImageSaver;->start()V
return-void
.end method
.method private storeImage(Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;)Z
.registers 6
iget-object v2, p1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->saveStrategy:Lcom/pinguo/camera360/save/IImageSaveStrategy;
iget-object v0, p1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->data:[B
iget-object v1, p1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
invoke-interface {v2, v0, v1}, Lcom/pinguo/camera360/save/IImageSaveStrategy;->save([BLcom/pinguo/camera360/photoedit/PictureInfo;)Z
move-result v3
return v3
.end method
.method public addImage([BLcom/pinguo/camera360/photoedit/PictureInfo;Lcom/pinguo/camera360/save/IImageSaveStrategy;)V
.registers 8
const-string/jumbo v2, "makePreview"
const-string/jumbo v3, "start add image to queue"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
if-nez p2, :cond_14
sget-object v2, Lcom/pinguo/camera360/save/ImageSaver;->TAG:Ljava/lang/String;
const-string/jumbo v3, "insert image fail, pictureInfo is null"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_13
return-void
:cond_14
invoke-virtual {p2}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getPictureType()I
move-result v0
const/16 v2, 0x66
if-eq v0, v2, :cond_33
const/16 v2, 0x65
if-eq v0, v2, :cond_33
const/16 v2, 0xca
if-eq v0, v2, :cond_33
const/16 v2, 0xc9
if-eq v0, v2, :cond_33
if-nez p1, :cond_33
sget-object v2, Lcom/pinguo/camera360/save/ImageSaver;->TAG:Ljava/lang/String;
const-string/jumbo v3, "insert image fail, data is null"
invoke-static {v2, v3}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_13
:cond_33
new-instance v1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;-><init>(Lcom/pinguo/camera360/save/ImageSaver;Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;)V
iput-object p1, v1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->data:[B
iput-object p2, v1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->pictureInfo:Lcom/pinguo/camera360/photoedit/PictureInfo;
iput-object p3, v1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;->saveStrategy:Lcom/pinguo/camera360/save/IImageSaveStrategy;
monitor-enter p0
:goto_40
:try_start_40
iget-object v2, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
const/4 v3, 0x5
if-ge v2, v3, :cond_56
iget-object v2, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
goto :goto_13
:catchall_53
move-exception v2
monitor-exit p0
:try_end_55
.catchall {:try_start_40 .. :try_end_55} :catchall_53
throw v2
:try_start_56
:cond_56
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_end_59
.catchall {:try_start_56 .. :try_end_59} :catchall_53
.catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_59} :catch_5a
goto :goto_40
:catch_5a
move-exception v2
goto :goto_40
.end method
.method public cancelFinish()V
.registers 2
monitor-enter p0
const/4 v0, 0x0
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/save/ImageSaver;->mStop:Z
monitor-exit p0
return-void
:catchall_6
move-exception v0
monitor-exit p0
:try_end_8
.catchall {:try_start_2 .. :try_end_8} :catchall_6
throw v0
.end method
.method public finish()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lcom/pinguo/camera360/save/ImageSaver;->mStop:Z
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
return-void
:catchall_9
move-exception v0
monitor-exit p0
:try_end_b
.catchall {:try_start_2 .. :try_end_b} :catchall_9
throw v0
.end method
.method public getCount()I
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
monitor-exit p0
return v0
:catchall_9
move-exception v0
monitor-exit p0
:try_end_b
.catchall {:try_start_1 .. :try_end_b} :catchall_9
throw v0
.end method
.method public run()V
.registers 5
const/4 v3, 0x0
:goto_1
:cond_1
monitor-enter p0
:try_start_2
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
iget-boolean v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mStop:Z
if-eqz v1, :cond_1c
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
if-eqz v1, :cond_1a
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
invoke-interface {v1}, Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;->onAllSaveFinish()V
:cond_1a
monitor-exit p0
:try_end_1b
.catchall {:try_start_2 .. :try_end_1b} :catchall_21
return-void
:try_start_1c
:cond_1c
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:try_start_1f
:goto_1f
:try_end_1f
.catchall {:try_start_1c .. :try_end_1f} :catchall_21
.catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_1f} :catch_51
monitor-exit p0
goto :goto_1
:catchall_21
move-exception v1
monitor-exit p0
:try_end_23
.catchall {:try_start_1f .. :try_end_23} :catchall_21
throw v1
:cond_24
:try_start_24
monitor-exit p0
:try_end_25
.catchall {:try_start_24 .. :try_end_25} :catchall_21
sget-object v1, Lcom/pinguo/camera360/save/ImageSaver;->TAG:Ljava/lang/String;
const-string/jumbo v2, "start storeImage !"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;
invoke-direct {p0, v1}, Lcom/pinguo/camera360/save/ImageSaver;->storeImage(Lcom/pinguo/camera360/save/ImageSaver$SaveRequest;)Z
move-result v0
monitor-enter p0
:try_start_3a
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mQueue:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
monitor-exit p0
:try_end_44
.catchall {:try_start_3a .. :try_end_44} :catchall_4e
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
if-eqz v1, :cond_1
iget-object v1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
invoke-interface {v1, v0}, Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;->onItemSaveFinish(Z)V
goto :goto_1
:catchall_4e
move-exception v1
:try_start_4f
monitor-exit p0
:try_end_50
.catchall {:try_start_4f .. :try_end_50} :catchall_4e
throw v1
:catch_51
move-exception v1
goto :goto_1f
.end method
.method public setListener(Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/save/ImageSaver;->mListener:Lcom/pinguo/camera360/save/ImageSaver$IImageSaver;
return-void
.end method