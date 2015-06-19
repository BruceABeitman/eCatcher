.class public Lcom/pinguo/camera360/photoedit/PictureEditModel;
.super Ljava/lang/Object;
.source "PictureEditModel.java"
.field private static PICTURE_EDIT_MODEL:Lcom/pinguo/camera360/photoedit/PictureEditModel;
.field private mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized getInstance()Lcom/pinguo/camera360/photoedit/PictureEditModel;
.registers 2
const-class v1, Lcom/pinguo/camera360/photoedit/PictureEditModel;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->PICTURE_EDIT_MODEL:Lcom/pinguo/camera360/photoedit/PictureEditModel;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/photoedit/PictureEditModel;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/PictureEditModel;-><init>()V
sput-object v0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->PICTURE_EDIT_MODEL:Lcom/pinguo/camera360/photoedit/PictureEditModel;
:cond_e
sget-object v0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->PICTURE_EDIT_MODEL:Lcom/pinguo/camera360/photoedit/PictureEditModel;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->addImage(Lcom/pinguo/camera360/photoedit/PictureInfo;[BLcom/pinguo/camera360/photoedit/callback/EffectCallback;)V
return-void
.end method
.method public destroy()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-virtual {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;->finish()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
return-void
.end method
.method public init()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
if-nez v0, :cond_b
new-instance v0, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
invoke-direct {v0}, Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/photoedit/PictureEditModel;->mEditor:Lcom/pinguo/camera360/photoedit/PictureEditQueueThread;
:cond_b
return-void
.end method