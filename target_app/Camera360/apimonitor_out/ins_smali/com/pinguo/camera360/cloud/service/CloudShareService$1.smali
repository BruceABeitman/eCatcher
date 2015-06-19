.class  Lcom/pinguo/camera360/cloud/service/CloudShareService$1;
.super Ljava/lang/Object;
.source "CloudShareService.java"
.implements Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;
.field final synthetic this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
.method constructor <init>(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$1;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public uploadAllFail(Ljava/lang/String;)V
.registers 5
const-string/jumbo v0, "test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\u4e0a\u4f20\u5931\u8d25\uff1a"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$1;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
return-void
.end method
.method public uploadAllSuccess()V
.registers 3
const-string/jumbo v0, "test"
const-string/jumbo v1, "\u4e0a\u4f20\u6210\u529f"
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lcom/pinguo/camera360/cloud/service/CloudShareService$1;->this$0:Lcom/pinguo/camera360/cloud/service/CloudShareService;
#calls: Lcom/pinguo/camera360/cloud/service/CloudShareService;->myStopService()V
invoke-static {v0}, Lcom/pinguo/camera360/cloud/service/CloudShareService;->access$0(Lcom/pinguo/camera360/cloud/service/CloudShareService;)V
return-void
.end method