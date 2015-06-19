.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;
.super Ljava/lang/Object;
.source "NbtfSendActivity.java"
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onOneResult(Ljava/lang/String;Ljava/lang/String;ZLcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;)V
.registers 5
return-void
.end method
.method public onProgress(Ljava/lang/String;JJ)V
.registers 12
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$4()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "|"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "%s/%s"
const/4 v3, 0x2
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
const/4 v4, 0x1
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.registers 7
if-eqz p3, :cond_1e
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v1
const/16 v2, 0x66
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v1
const/16 v2, 0x67
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_1d
.end method
.method public onStart(Ljava/lang/String;J)V
.registers 7
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
sget-object v1, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;->SENDING:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
#setter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mSenderState:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;
invoke-static {v0, v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$10(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$SenderState;)V
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;->access$5(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity;)Landroid/os/Handler;
move-result-object v1
const/16 v2, 0x65
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfSendActivity$16; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method