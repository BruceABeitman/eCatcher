.class  Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;
.super Landroid/content/BroadcastReceiver;
.source "SonyWifiModel.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.method constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
#calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
invoke-static {v0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->access$0(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method