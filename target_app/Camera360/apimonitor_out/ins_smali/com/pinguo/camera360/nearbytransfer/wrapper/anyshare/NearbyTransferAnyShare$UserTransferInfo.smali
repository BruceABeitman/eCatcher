.class  Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;
.super Ljava/lang/Object;
.source "NearbyTransferAnyShare.java"
.field  completed:J
.field  deviceId:Ljava/lang/String;
.field  failFiles:Ljava/util/List;
.field  progressForOne:J
.field  successFiles:Ljava/util/List;
.field final synthetic this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
.field  total:J
.method public constructor <init>(Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->this$0:Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->successFiles:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->failFiles:Ljava/util/List;
return-void
.end method
.method public addFailFile(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->failFiles:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->failFiles:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public addSuccessFile(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->successFiles:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->successFiles:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_8
.end method
.method public getCompleted()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->completed:J
return-wide v0
.end method
.method public getDeviceId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->deviceId:Ljava/lang/String;
return-object v0
.end method
.method public getFailFiles()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->failFiles:Ljava/util/List;
return-object v0
.end method
.method public getProgressForOne()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->progressForOne:J
return-wide v0
.end method
.method public getSuccessFiles()Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->successFiles:Ljava/util/List;
return-object v0
.end method
.method public getTotal()J
.registers 3
iget-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->total:J
return-wide v0
.end method
.method public incCompleted(J)V
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->completed:J
add-long/2addr v0, p1
iput-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->completed:J
return-void
.end method
.method public incTotal(J)V
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->total:J
add-long/2addr v0, p1
iput-wide v0, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->total:J
return-void
.end method
.method public setDeviceId(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->deviceId:Ljava/lang/String;
return-void
.end method
.method public setProgressForOne(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->progressForOne:J
return-void
.end method
.method public setTotal(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/nearbytransfer/wrapper/anyshare/NearbyTransferAnyShare$UserTransferInfo;->total:J
return-void
.end method