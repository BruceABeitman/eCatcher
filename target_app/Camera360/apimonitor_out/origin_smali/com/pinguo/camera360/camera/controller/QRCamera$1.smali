.class Lcom/pinguo/camera360/camera/controller/QRCamera$1;
.super Landroid/os/Handler;
.source "QRCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/camera/controller/QRCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/controller/QRCamera;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const/4 v4, 0x4

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_7e

    :cond_6
    :goto_6
    return-void

    :pswitch_7
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #calls: Lcom/pinguo/camera360/camera/controller/QRCamera;->startHideQRLayoutAnimation()V
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$0(Lcom/pinguo/camera360/camera/controller/QRCamera;)V

    goto :goto_6

    :pswitch_d
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->isPausing:Z
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$1(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_6

    :cond_1f
    const-string/jumbo v1, "QRCamera"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mQRModelAutoFocusCallback ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
    invoke-static {v3}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$3(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mIsShowingQRLayout:Z
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$4(Lcom/pinguo/camera360/camera/controller/QRCamera;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_61

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$2(Lcom/pinguo/camera360/camera/controller/QRCamera;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_61
    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$3(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mModel:Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;
    invoke-static {v1}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$5(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/camera/model/plugin/QRCameraModel;->getCameraBase()Lcom/pinguo/camera360/camera/model/PGCameraBase;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/camera360/camera/controller/QRCamera$1;->this$0:Lcom/pinguo/camera360/camera/controller/QRCamera;

    #getter for: Lcom/pinguo/camera360/camera/controller/QRCamera;->mQRModelAutoFocusCallback:Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;
    invoke-static {v2}, Lcom/pinguo/camera360/camera/controller/QRCamera;->access$3(Lcom/pinguo/camera360/camera/controller/QRCamera;)Lcom/pinguo/camera360/camera/controller/QRCamera$QRModelAutoFocusCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/camera/model/PGCameraBase;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    goto :goto_6

    nop

    :pswitch_data_7e
    .packed-switch 0x3
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
