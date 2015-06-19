.class Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;
.super Landroid/os/Handler;
.source "CameraModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/lib/camera/model/CameraModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;-><init>(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_6a

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Invalid message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    return-void

    :pswitch_1f
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$0()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    invoke-virtual {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->getCameraState()Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;->CAMERA_STOPPED:Lcom/pinguo/camera360/lib/camera/lib/CameraManager$CameraState;

    if-eq v0, v1, :cond_1e

    invoke-static {}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on handler msg:HANDLER_MSG_TAKE_OVERTIME"

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    const/4 v1, 0x1

    #setter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mPictureTakenFail:Z
    invoke-static {v0, v1}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$2(Lcom/pinguo/camera360/lib/camera/model/CameraModel;Z)V

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    #getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$3(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    #getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$3(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;->onPictureTakenFail()V

    goto :goto_1e

    :pswitch_57
    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    #getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$3(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/model/CameraModel$CameraHandler;->this$0:Lcom/pinguo/camera360/lib/camera/model/CameraModel;

    #getter for: Lcom/pinguo/camera360/lib/camera/model/CameraModel;->mTakePictureFailCallBack:Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;
    invoke-static {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel;->access$3(Lcom/pinguo/camera360/lib/camera/model/CameraModel;)Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/camera360/lib/camera/model/CameraModel$TakePictureFailCallBack;->onPictureTakenFail()V

    goto :goto_1e

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_57
    .end packed-switch
.end method
