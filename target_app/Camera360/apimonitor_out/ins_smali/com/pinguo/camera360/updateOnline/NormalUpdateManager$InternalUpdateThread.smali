.class  Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;
.super Ljava/lang/Thread;
.source "NormalUpdateManager.java"
.field final synthetic this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
.method public constructor <init>(Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 7
const/4 v5, 0x0
:try_start_1
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
invoke-virtual {v2}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->getServiceInfo()Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/updateOnline/UpdateReturnBean;->isUpdate()Z
move-result v2
if-eqz v2, :cond_14
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
const/4 v3, 0x1
invoke-virtual {v2, v1, v3}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->sendMessage(Ljava/lang/Object;I)V
:goto_13
return-void
:cond_14
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
const/4 v3, 0x0
const/4 v4, 0x2
invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->sendMessage(Ljava/lang/Object;I)V
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1c
goto :goto_13
:catch_1c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
iget-object v2, p0, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager$InternalUpdateThread;->this$0:Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;
const/4 v3, 0x4
invoke-virtual {v2, v5, v3}, Lcom/pinguo/camera360/updateOnline/NormalUpdateManager;->sendMessage(Ljava/lang/Object;I)V
goto :goto_13
.end method