.class  Lcom/pinguo/camera360/sony/SonyCameraFragment$4;
.super Ljava/lang/Thread;
.source "SonyCameraFragment.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
.method constructor <init>(Lcom/pinguo/camera360/sony/SonyCameraFragment;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$4;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/sony/SonyCameraFragment$4;->this$0:Lcom/pinguo/camera360/sony/SonyCameraFragment;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/SonyCameraFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
const-string/jumbo v3, "wifi"
invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
const/4 v2, 0x0
invoke-virtual {v1, v0, v2}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->recoverWifiState(Landroid/net/wifi/WifiManager;Z)V
return-void
.end method