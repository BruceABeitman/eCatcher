.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$3;
.super Ljava/lang/Object;
.source "SonyCameraFragment.java"
.implements Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public shouldNotDectedEvent()Z
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mRetryDialog:Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
invoke-static {v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$10(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
move-result-object v1
invoke-virtual {v1}, Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;->isShowing()Z
move-result v1
if-eqz v1, :cond_16
const/4 v0, 0x1
:cond_16
return v0
.end method
.method public wifiRetryConnectFail()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x67
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x66
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x62
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessage(I)Z
return-void
.end method
.method public wifiRetryConnectSuccess()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x67
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->removeMessages(I)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x66
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mHandler:Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$11(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;
move-result-object v0
const/16 v1, 0x63
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/sony/SonyCameraFragment$MainHandler;->sendEmptyMessage(I)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$3;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
#getter for: Lcom/pinguo/camera360/sony/SonyCameraFragment;->mSonyCamera:Lcom/pinguo/camera360/sony/model/SonyCamera;
invoke-static {v0}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->access$12(Lcom/pinguo/camera360/sony/SonyCameraFragment;)Lcom/pinguo/camera360/sony/model/SonyCamera;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/SonyCamera;->openConnection()V
return-void
.end method