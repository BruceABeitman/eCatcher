.class  Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;
.super Ljava/lang/Thread;
.source "SonyWifiDetectMode.java"
.field final synthetic this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.method constructor <init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 14
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
if-eqz v0, :cond_48
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v4
if-eqz v1, :cond_48
const-string/jumbo v9, "\""
const-string/jumbo v10, ""
invoke-virtual {v1, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
iget-object v10, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v10, v10, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v10
const-string/jumbo v11, "\""
const-string/jumbo v12, ""
invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_48
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v9
if-ne v4, v9, :cond_48
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectSuccess()V
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$2(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
:cond_47
:goto_47
return-void
:cond_48
const/4 v8, 0x1
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v9
if-nez v9, :cond_60
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
const/4 v10, 0x1
invoke-virtual {v9, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
move-result v8
:cond_60
if-nez v8, :cond_6a
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
const-wide/16 v10, 0x0
#calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
invoke-static {v9, v10, v11}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$3(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;J)V
goto :goto_47
:cond_6a
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
:cond_6e
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v9
const/4 v10, 0x3
if-ne v9, v10, :cond_ea
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v10
#setter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiStartConnectTime:J
invoke-static {v9, v10, v11}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$4(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;J)V
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$5(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->retryScan()V
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v5
if-eqz v5, :cond_9c
invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
:cond_9c
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
if-eqz v9, :cond_108
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v9
const/4 v10, -0x1
if-eq v9, v10, :cond_108
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, "\""
const-string/jumbo v11, ""
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, "direct"
invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_108
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
iget-object v10, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v10, v10, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v10}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v10
const/4 v11, 0x1
invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v3
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reassociate()Z
goto/16 :goto_47
:cond_ea
const-wide/16 v9, 0xc8
:try_start_ec
invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
:goto_ef
:try_end_ef
.catch Ljava/lang/InterruptedException; {:try_start_ec .. :try_end_ef} :catch_103
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v9
sub-long/2addr v9, v6
const-wide/16 v11, 0x2710
cmp-long v9, v9, v11
if-lez v9, :cond_6e
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
const-wide/16 v10, 0x0
#calls: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
invoke-static {v9, v10, v11}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$3(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;J)V
goto/16 :goto_47
:catch_103
move-exception v2
invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_ef
:cond_108
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkId:I
const/4 v10, -0x1
if-eq v9, v10, :cond_47
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
if-eqz v9, :cond_47
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget-object v9, v9, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
const-string/jumbo v10, "\""
const-string/jumbo v11, ""
invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v9
const-string/jumbo v10, "direct"
invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v9
if-eqz v9, :cond_47
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
iget-object v10, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
iget v10, v10, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkId:I
const/4 v11, 0x1
invoke-virtual {v9, v10, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v3
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->this$0:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
#getter for: Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-static {v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
move-result-object v9
invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->reassociate()Z
goto/16 :goto_47
.end method