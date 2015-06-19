.class public Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
.super Landroid/os/Handler;
.source "SonyWifiScan.java"
.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710
.field private mRetry:I
.field private mWifiManager:Landroid/net/wifi/WifiManager;
.method public constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;)V
.registers 4
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mWifiManager:Landroid/net/wifi/WifiManager;
return-void
.end method
.method public forceScan()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->removeMessages(I)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->sendEmptyMessage(I)Z
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
move-result v0
if-eqz v0, :cond_11
iput v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
:cond_b
const-wide/16 v0, 0x2710
invoke-virtual {p0, v2, v0, v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->sendEmptyMessageDelayed(IJ)Z
:goto_10
return-void
:cond_11
iget v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
const/4 v1, 0x3
if-lt v0, v1, :cond_b
iput v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
goto :goto_10
.end method
.method public pause()V
.registers 2
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mRetry:I
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->removeMessages(I)V
return-void
.end method
.method public resume()V
.registers 3
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_a
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->sendEmptyMessage(I)Z
:cond_a
return-void
.end method
.method public retryScan()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
return-void
.end method