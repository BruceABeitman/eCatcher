.class Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;
.super Ljava/lang/Object;
.source "NbtfReceiverActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->getReceiveListener()Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
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

    iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;)Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    return-object v0
.end method


# virtual methods
.method public onOneResult(Ljava/lang/String;Ljava/lang/String;ZLcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;)V
    .registers 7

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onOneResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgress(Ljava/lang/String;JJ)V
    .registers 8

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_12

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_29

    :cond_12
    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResult success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-virtual {v0, p2, p3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onReceiveSuccess(Ljava/util/List;Ljava/util/List;)V

    :goto_21
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVE_END:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V

    return-void

    :cond_29
    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onResult fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    invoke-virtual {v0, p2, p3}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->onReceiveFailure(Ljava/util/List;Ljava/util/List;)V

    goto :goto_21
.end method

.method public onStart(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$5()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2, p3}, Lcom/pinguo/lib/util/SystemUtils;->hasEnoughMemory(J)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->RECEIVING:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$8(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    sget-object v1, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;->START:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;

    #setter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->mReceiverState:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$6(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$ReceiverState;)V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #getter for: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->sdk:Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$10(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/nearbytransfer/NearbyTransferManager;->stopHost()V

    iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity$13;->this$0:Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;

    #calls: Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->showNoEnoughtSpaceDialog()V
    invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;->access$14(Lcom/pinguo/camera360/nearbytransfer/receiver/NbtfReceiverActivity;)V

    goto :goto_25
.end method
