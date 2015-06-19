.class Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showStopReceiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$1(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    move-result-object v0

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #calls: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->stopReceive()V
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$2(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mConnectedUser:Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;
    invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$3(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;

    move-result-object v1

    #calls: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->delReceivedFiles(Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V
    invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$4(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$DeviceInfo;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$10;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->finish()V

    :cond_1f
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
