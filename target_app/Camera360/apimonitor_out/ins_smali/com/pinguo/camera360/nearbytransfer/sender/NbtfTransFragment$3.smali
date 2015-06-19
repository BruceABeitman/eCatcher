.class  Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;
.super Ljava/lang/Object;
.source "NbtfTransFragment.java"
.implements Lcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfSendListener;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
.method constructor <init>(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onOneResult(Ljava/lang/String;Ljava/lang/String;ZLcom/pinguo/camera360/nearbytransfer/wrapper/INearbyTransferWrapper$NbtfException;)V
.registers 5
return-void
.end method
.method public onProgress(Ljava/lang/String;JJ)V
.registers 14
invoke-static {}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$6()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "|"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, "%s/%s"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-wide/16 v2, 0x0
cmp-long v2, p4, v2
if-gtz v2, :cond_3e
:goto_3d
return-void
:cond_3e
const-wide/16 v2, 0x64
mul-long/2addr v2, p2
div-long/2addr v2, p4
long-to-int v1, v2
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v2
const/16 v3, 0x64
invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v0
iput v1, v0, Landroid/os/Message;->arg1:I
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v2}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_3d
.end method
.method public onResult(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.registers 7
if-eqz p3, :cond_8
invoke-interface {p3}, Ljava/util/List;->size()I
move-result v0
if-gtz v0, :cond_1e
:cond_8
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v1
const/16 v2, 0x68
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:goto_1d
return-void
:cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v0}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3;->this$0:Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;
#getter for: Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->mHandler:Landroid/os/Handler;
invoke-static {v1}, Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;->access$7(Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment;)Landroid/os/Handler;
move-result-object v1
const/16 v2, 0x69
invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
goto :goto_1d
.end method
.method public onStart(Ljava/lang/String;J)V
.registers 6
const-string v1, " + Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/pinguo/camera360/nearbytransfer/sender/NbtfTransFragment$3; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method