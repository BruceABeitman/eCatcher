.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$5;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$5;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$5;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mWifiDectedModel:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$9(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->getDectedStatus()I
move-result v0
const/4 v1, 0x2
if-eq v0, v1, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$5;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#calls: Lcom/pinguo/camera360/sony/SonyCameraFragment;->showRetryDialog()V
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$13(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
:cond_12
return-void
.end method