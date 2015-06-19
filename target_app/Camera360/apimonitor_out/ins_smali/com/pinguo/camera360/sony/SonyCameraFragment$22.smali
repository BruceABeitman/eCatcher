.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$22;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$22;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$22;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissRetryDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$6(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$22;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->dismissConnectDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$8(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
return-void
.end method