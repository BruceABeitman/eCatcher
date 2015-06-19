.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->getNearbyTransferListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    return-object v0
.end method


# virtual methods
.method public onClientStatusChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onClientStatusChanged succeeded = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLocalUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLocalUserChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->mEventType:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    sget-object v1, Lcom/lenovo/channel/base/IUserListener$UserEventType;->OFFLINE:Lcom/lenovo/channel/base/IUserListener$UserEventType;

    if-ne v0, v1, :cond_2b

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2b
    return-void
.end method

.method public onRemoteUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRemoteUserChanged userInfo isOnline = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->isOnline()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    move-result-object v1

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->REQUEST_CONNECTING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    if-ne v1, v2, :cond_62

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    sget-object v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->CONNECTED:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
    invoke-static {v1, v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$10(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;)V

    new-instance v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;

    invoke-direct {v0}, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;-><init>()V

    iput-object p1, v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;->device:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPaths:Ljava/util/List;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$11(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;->pathList:Ljava/util/List;

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->add(Lcom/pinguo/camera360/nearbytransfer/wrapper/NearbyTransferTask;)V

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->getInstance()Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->startTask()V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mPickedDevice:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
    invoke-static {v1, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$12(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$2;

    invoke-direct {v2, p0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15$2;-><init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$15;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_62
    return-void
.end method

.method public onScanFailed()V
    .registers 3

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScanFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onScanResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServerStatusChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServerStatusChanged enabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
