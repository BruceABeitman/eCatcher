.class public Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
.super Ljava/lang/Object;
.source "WifiSaveInstance.java"
.field private static volatile mInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
.field private mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
.field private mSaveWifi:Z
.field private mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
.field private mWifiIsOpen:Z
.method private constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mWifiIsOpen:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSaveWifi:Z
return-void
.end method
.method public static getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
.registers 2
const-class v1, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
if-nez v0, :cond_e
new-instance v0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
invoke-direct {v0}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;-><init>()V
sput-object v0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
:cond_e
sget-object v0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_12
throw v0
.end method
.method public clear()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mWifiIsOpen:Z
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSaveWifi:Z
return-void
.end method
.method public getConnectWifiInfo()Landroid/net/wifi/WifiInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
return-object v0
.end method
.method public getSonyWifiInfo()Landroid/net/wifi/WifiInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
return-object v0
.end method
.method public recoverWifiState(Landroid/net/wifi/WifiManager;)V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->recoverWifiState(Landroid/net/wifi/WifiManager;Z)V
return-void
.end method
.method public recoverWifiState(Landroid/net/wifi/WifiManager;Z)V
.registers 12
const/4 v8, -0x1
iget-boolean v7, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSaveWifi:Z
if-eqz v7, :cond_59
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
iget-boolean v6, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mWifiIsOpen:Z
const/4 v4, -0x1
const/4 v1, -0x1
if-eqz v5, :cond_13
invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v4
:cond_13
if-eqz v0, :cond_19
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v1
:cond_19
if-eq v4, v1, :cond_4e
if-eqz v5, :cond_34
invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v7
if-eqz v7, :cond_34
invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v7
if-eq v7, v8, :cond_34
invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v7
invoke-virtual {p1, v7}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z
move-result v2
invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->disconnect()Z
:cond_34
if-eqz v0, :cond_4e
invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v7
if-eqz v7, :cond_4e
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v7
if-eq v7, v8, :cond_4e
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v7
const/4 v8, 0x1
invoke-virtual {p1, v7, v8}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v3
invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->reassociate()Z
:cond_4e
if-nez v6, :cond_54
const/4 v7, 0x0
invoke-virtual {p1, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
:cond_54
if-eqz p2, :cond_59
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->reset()V
:cond_59
return-void
.end method
.method public reset()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mWifiIsOpen:Z
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
return-void
.end method
.method public setConnectWifiInfo(Landroid/net/wifi/WifiInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
return-void
.end method
.method public setSaveWifiInstance(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSaveWifi:Z
return-void
.end method
.method public setSonyWifiInfo(Landroid/net/wifi/WifiInfo;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
return-void
.end method
.method public setWifiIsOpen(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->mWifiIsOpen:Z
return-void
.end method