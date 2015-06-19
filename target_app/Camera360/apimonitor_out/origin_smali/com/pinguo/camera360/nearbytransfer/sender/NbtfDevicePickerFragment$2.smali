.class Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;
.super Ljava/lang/Object;
.source "NbtfDevicePickerFragment.java"

# interfaces
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NearbyTransferListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientStatusChanged(Z)V
    .registers 4

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClientStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onLocalUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLocalUserChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRemoteUserChanged(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRemoteUserChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanFailed()V
    .registers 1

    return-void
.end method

.method public onScanResult(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x64

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$1()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onScanResult : devices = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_4a

    :cond_31
    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;Ljava/util/List;)V

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_49
    :goto_49
    return-void

    :cond_4a
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$2(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mDevices:Ljava/util/List;
    invoke-static {v2, p1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$3(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;Ljava/util/List;)V

    iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment$2;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$4(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_49
.end method

.method public onServerStatusChanged(Z)V
    .registers 5

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfDevicePickerFragment;->access$1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onServerStatusChanged :  enabled "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
