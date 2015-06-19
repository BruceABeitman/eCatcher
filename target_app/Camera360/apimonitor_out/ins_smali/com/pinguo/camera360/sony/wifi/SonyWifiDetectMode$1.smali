.class  Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyWifiDetectMode.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.method constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->handleEventRetry(Landroid/content/Context;Landroid/content/Intent;)V
invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$0(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method