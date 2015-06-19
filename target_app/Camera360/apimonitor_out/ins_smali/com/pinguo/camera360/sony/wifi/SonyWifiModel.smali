.class public Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;
.super Ljava/lang/Object;
.source "SonyWifiModel.java"
.field public static final CONNECT_TIMEOUT_LONG:J = 0x7530L
.field public static final CONNECT_TIMEOUT_SHOT:J = 0x61a8L
.field private static final SCAN_TIMEOUT:J = 0x4e20L
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
.field private mContext:Landroid/content/Context;
.field private mDlgAccessPoint:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
.field private mFilter:Landroid/content/IntentFilter;
.field private mFirstConnectWifi:Z
.field private mLastInfo:Landroid/net/wifi/WifiInfo;
.field private mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
.field private mReceiver:Landroid/content/BroadcastReceiver;
.field private mSonyAccessPoints:Ljava/util/List;
.field private mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
.field private mStartWifi:Z
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;
.field private mWifiEnable:Z
.field private mWifiIsOpen:Z
.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
.field private mWifiManager:Landroid/net/wifi/WifiManager;
.field private mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
.field private mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
.field private mWifiStartConnectTime:J
.field private mWifiState:I
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiIsOpen:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFirstConnectWifi:Z
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWakeLock:Landroid/os/PowerManager$WakeLock;
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyAccessPoints:Ljava/util/List;
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;Landroid/content/Context;Landroid/content/Intent;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method private acquireLock()V
.registers 3
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_f
.end method
.method private checkArgumentInit()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
if-nez v0, :cond_a
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
if-nez v0, :cond_14
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
throw v0
:cond_14
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
if-nez v0, :cond_1e
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiRuntimeException;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
throw v0
:cond_1e
return-void
.end method
.method private connectWifiFail(JZLjava/lang/String;)V
.registers 9
const-string/jumbo v0, "test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "\u8fde\u63a5\u5931\u8d25 fail message:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
sub-long/2addr v0, v2
cmp-long v0, v0, p1
if-ltz v0, :cond_2a
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v0, p3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->wifiConnectFail(Z)V
:cond_2a
return-void
.end method
.method private constructAccessPoints()Ljava/util/List;
.registers 12
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;
const/4 v8, 0x0
invoke-direct {v2, p0, v8}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;)V
iget-object v8, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_1d
invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_17
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_30
:cond_1d
iget-object v8, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v7
if-eqz v7, :cond_2f
invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:cond_29
:goto_29
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v9
if-nez v9, :cond_46
:cond_2f
return-object v1
:cond_30
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Landroid/net/wifi/WifiConfiguration;
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
invoke-direct {v0, v9, v3}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v9, v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v2, v9, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_17
:cond_46
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/net/wifi/ScanResult;
iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
if-eqz v9, :cond_29
iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
invoke-virtual {v9}, Ljava/lang/String;->length()I
move-result v9
if-eqz v9, :cond_29
iget-object v9, v6, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;
const-string/jumbo v10, "[IBSS]"
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-nez v9, :cond_29
const/4 v5, 0x0
iget-object v9, v6, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
invoke-virtual {v2, v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;
move-result-object v9
invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_6e
:cond_6e
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v10
if-nez v10, :cond_86
if-nez v5, :cond_29
new-instance v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
invoke-direct {v0, v9, v6}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v9, v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v2, v9, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
goto :goto_29
:cond_86
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
invoke-virtual {v0, v6}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z
move-result v10
if-eqz v10, :cond_6e
const/4 v5, 0x1
goto :goto_6e
.end method
.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
.registers 12
const/4 v8, 0x1
iget-boolean v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
if-eqz v5, :cond_9
iget-boolean v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
if-nez v5, :cond_a
:goto_9
:cond_9
return-void
:cond_a
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mDlgAccessPoint:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
if-eqz v5, :cond_5f
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mDlgAccessPoint:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v3, v5, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
if-eqz v3, :cond_5f
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "\""
const-string/jumbo v7, ""
invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "direct"
invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_5f
const-string/jumbo v5, "supplicantError"
const/4 v6, -0x1
invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v5
if-ne v5, v8, :cond_5f
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getInstance()Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
move-result-object v2
const-string/jumbo v5, "\""
const-string/jumbo v6, ""
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, p1, v5}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getAutchCode(Landroid/content/Context;Ljava/lang/String;)I
move-result v5
if-eq v5, v8, :cond_9
const-string/jumbo v5, "\""
const-string/jumbo v6, ""
invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v2, p1, v5, v8}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->saveAutchCode(Landroid/content/Context;Ljava/lang/String;I)V
const-wide/16 v5, 0x0
const-string/jumbo v7, "222222222"
invoke-direct {p0, v5, v6, v8, v7}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_9
:cond_5f
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v5, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_78
const-string/jumbo v5, "wifi_state"
const/4 v6, 0x4
invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateWifiState(I)V
goto :goto_9
:cond_78
const-string/jumbo v5, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_85
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateAccessPoints()V
goto :goto_9
:cond_85
const-string/jumbo v5, "android.net.wifi.supplicant.STATE_CHANGE"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_a8
const-string/jumbo v5, "newState"
invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v4
check-cast v4, Landroid/net/wifi/SupplicantState;
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v5
if-nez v5, :cond_9
invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
move-result-object v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
goto/16 :goto_9
:cond_a8
const-string/jumbo v5, "android.net.wifi.STATE_CHANGE"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_cf
const-string/jumbo v5, "networkInfo"
invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/NetworkInfo;
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v6
invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateAccessPoints()V
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
move-result-object v5
invoke-direct {p0, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
goto/16 :goto_9
:cond_cf
const-string/jumbo v5, "android.net.wifi.RSSI_CHANGED"
invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_9
const/4 v5, 0x0
invoke-direct {p0, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
goto/16 :goto_9
.end method
.method private releaseLock()V
.registers 3
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
:goto_f
:try_end_f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10
return-void
:catch_10
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_f
.end method
.method private showWifiAccessPonits(Ljava/util/List;)V
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogShow()Z
move-result v0
if-nez v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogsShow()Z
move-result v0
if-eqz v0, :cond_15
:goto_14
:cond_14
return-void
:cond_15
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyAccessPoints:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyAccessPoints:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v1, 0x2
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyAccessPoints:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v0, v1, v2, v3, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->createWifiConfigDialog(ILcom/pinguo/camera360/sony/wifi/AccessPoint;Ljava/util/List;Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_14
.end method
.method private updateAccessPoints()V
.registers 12
const/4 v10, 0x0
const/4 v9, 0x1
iget v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
if-eq v5, v9, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v5, :cond_1b
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogShow()Z
move-result v5
if-nez v5, :cond_6
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogsShow()Z
move-result v5
if-nez v5, :cond_6
:cond_1b
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v5, :cond_2b
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v5, v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->removeHandleMessage(I)V
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/16 v6, 0x8
invoke-interface {v5, v6}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
:cond_2b
const/4 v5, 0x2
iput v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v4
packed-switch v4, :pswitch_data_a2
iput v10, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
goto :goto_6
:pswitch_3a
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->constructAccessPoints()Ljava/util/List;
move-result-object v1
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_4a
:cond_4a
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-nez v6, :cond_62
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v2
if-lez v2, :cond_93
if-ne v2, v9, :cond_8e
invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectSonyWifiAccessPoint(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)V
goto :goto_6
:cond_62
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iget-object v6, v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "\""
const-string/jumbo v8, ""
invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "direct"
invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_4a
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getRssi()I
move-result v6
const v7, 0x7fffffff
if-eq v6, v7, :cond_4a
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_4a
:cond_8e
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->showWifiAccessPonits(Ljava/util/List;)V
goto/16 :goto_6
:cond_93
const/4 v5, 0x6
iput v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v5, :cond_6
iget-object v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v6, 0x7
invoke-interface {v5, v6}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
goto/16 :goto_6
:pswitch_data_a2
.packed-switch 0x3
:pswitch_3a
.end packed-switch
.end method
.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
.registers 10
const-wide/16 v6, 0x61a8
const/4 v5, 0x0
iget v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
const/4 v3, 0x3
if-eq v2, v3, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v2
if-nez v2, :cond_17
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->pause()V
goto :goto_8
:cond_17
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v2
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mLastInfo:Landroid/net/wifi/WifiInfo;
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mLastInfo:Landroid/net/wifi/WifiInfo;
if-eqz v2, :cond_95
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mLastInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mLastInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I
move-result v0
const v2, 0x7fffffff
if-ne v0, v2, :cond_3e
const-wide/16 v2, 0x0
const/4 v4, 0x1
const-string/jumbo v5, "33333333333"
invoke-direct {p0, v2, v3, v4, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_8
:cond_3e
if-eqz v1, :cond_88
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "\""
const-string/jumbo v4, ""
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "direct"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_88
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mLastInfo:Landroid/net/wifi/WifiInfo;
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v2, :cond_72
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v2, :cond_68
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->wifiConnectSuccess()V
:cond_68
:goto_68
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;
if-eq p1, v2, :cond_8
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->resume()V
goto :goto_8
:cond_72
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v2, :cond_7d
const-string/jumbo v2, "444444444444"
invoke-direct {p0, v6, v7, v5, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_68
:cond_7d
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v2, :cond_68
const-string/jumbo v2, "5555555555"
invoke-direct {p0, v6, v7, v5, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_68
:cond_88
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v2, :cond_68
const-wide/16 v2, 0x7530
const-string/jumbo v4, "666666666"
invoke-direct {p0, v2, v3, v5, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_68
:cond_95
sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v2, :cond_68
const-string/jumbo v2, "7777777777"
invoke-direct {p0, v6, v7, v5, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_68
.end method
.method private updateWifiState(I)V
.registers 4
packed-switch p1, :pswitch_data_14
:pswitch_3
:try_start_3
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->pause()V
:goto_8
return-void
:pswitch_9
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->resume()V
:try_end_e
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_f
goto :goto_8
:catch_f
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_8
:pswitch_data_14
.packed-switch 0x2
:pswitch_3
:pswitch_9
.end packed-switch
.end method
.method public addNetworkAccessPonit(Lcom/pinguo/camera360/sony/wifi/AccessPoint;Landroid/widget/EditText;)I
.registers 6
invoke-static {p1, p2}, Lcom/pinguo/camera360/sony/wifi/WifiUtil;->getConfig(Lcom/pinguo/camera360/sony/wifi/AccessPoint;Landroid/widget/EditText;)Landroid/net/wifi/WifiConfiguration;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I
move-result v1
return v1
.end method
.method public clean()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiIsOpen:Z
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mDlgAccessPoint:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyAccessPoints:Ljava/util/List;
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
return-void
.end method
.method public clear()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
return-void
.end method
.method public connectSonyWifiAccessPoint(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)V
.registers 13
iget v7, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
const/4 v8, -0x1
if-eq v7, v8, :cond_111
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
if-eqz v1, :cond_76
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v4
if-eqz v2, :cond_76
const-string/jumbo v7, "\""
const-string/jumbo v8, ""
invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
iget-object v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
const-string/jumbo v9, "\""
const-string/jumbo v10, ""
invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v7
if-eqz v7, :cond_76
iget v7, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
if-ne v4, v7, :cond_76
const-string/jumbo v7, "test"
const-string/jumbo v8, "\u5f53\u524d\u9700\u8981\u8fde\u63a5\u7684wifi\u8ddf\u4e0a\u4e00\u4e2awifi\u4e00\u81f4"
invoke-static {v7, v8}, Lcom/pinguo/camera360/gallery/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v7, :cond_75
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
iput-wide v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x2
const-wide/16 v9, 0x7530
invoke-interface {v7, v8, v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageDelayed(IJ)V
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getInstance()Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
iget-object v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
const-string/jumbo v9, "\""
const-string/jumbo v10, ""
invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v9, -0x1
invoke-virtual {v6, v7, v8, v9}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->saveAutchCode(Landroid/content/Context;Ljava/lang/String;I)V
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x6
invoke-interface {v7, v8}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v7}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->wifiConnectSuccess()V
:goto_75
:cond_75
return-void
:cond_76
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mDlgAccessPoint:Lcom/pinguo/camera360/sony/wifi/AccessPoint;
invoke-static {}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getInstance()Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;
move-result-object v6
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
iget-object v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
const-string/jumbo v9, "\""
const-string/jumbo v10, ""
invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
invoke-virtual {v6, v7, v8}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->getAutchCode(Landroid/content/Context;Ljava/lang/String;)I
move-result v0
const/4 v7, 0x1
if-ne v0, v7, :cond_d3
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
iget-object v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
const-string/jumbo v9, "\""
const-string/jumbo v10, ""
invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const/4 v9, -0x1
invoke-virtual {v6, v7, v8, v9}, Lcom/pinguo/camera360/sony/model/SonyCameraBusinessSettings;->saveAutchCode(Landroid/content/Context;Ljava/lang/String;I)V
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
iget v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v7
if-eqz v7, :cond_bc
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v7}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->resume()V
:cond_bc
const/4 v7, 0x0
invoke-virtual {p1, v7}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->setConfig(Landroid/net/wifi/WifiConfiguration;)V
const/4 v7, -0x1
iput v7, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
const/4 v7, 0x2
iput v7, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v7, :cond_75
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x1
const/4 v9, 0x0
const/4 v10, 0x1
invoke-interface {v7, v8, p1, v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->createWifiConfigDialog(ILcom/pinguo/camera360/sony/wifi/AccessPoint;Ljava/util/List;Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto :goto_75
:cond_d3
invoke-virtual {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getRssi()I
move-result v5
const v7, 0x7fffffff
if-ne v5, v7, :cond_e6
const-wide/16 v7, 0x0
const/4 v9, 0x0
const-string/jumbo v10, "888888888888"
invoke-direct {p0, v7, v8, v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
goto :goto_75
:cond_e6
const/4 v7, 0x3
iput v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v7, :cond_fb
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x2
const-wide/16 v9, 0x7530
invoke-interface {v7, v8, v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageDelayed(IJ)V
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x6
invoke-interface {v7, v8}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
:cond_fb
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
iput-wide v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
iget v8, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
const/4 v9, 0x1
invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v3
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->reassociate()Z
goto/16 :goto_75
:cond_111
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v7, :cond_75
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v7}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogShow()Z
move-result v7
if-nez v7, :cond_75
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
invoke-interface {v7}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->checkWifiDialogsShow()Z
move-result v7
if-nez v7, :cond_75
iget-object v7, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v8, 0x1
const/4 v9, 0x0
const/4 v10, 0x0
invoke-interface {v7, v8, p1, v9, v10}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->createWifiConfigDialog(ILcom/pinguo/camera360/sony/wifi/AccessPoint;Ljava/util/List;Z)Lcom/pinguo/camera360/ui/dialog/BSAlertDialog;
goto/16 :goto_75
.end method
.method public connectWifiNetwork(I)V
.registers 7
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
const/4 v4, 0x1
invoke-virtual {v3, p1, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v0
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->reconnect()Z
move-result v1
return-void
.end method
.method public create()V
.registers 5
const/4 v3, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
const-string/jumbo v2, "wifi"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
iput-boolean v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiIsOpen:Z
iput-boolean v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFirstConnectWifi:Z
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
const-string/jumbo v2, "pinguo_wifi"
invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
const-string/jumbo v2, "pinguo_multicastWifi"
invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiMulticastLock:Landroid/net/wifi/WifiManager$MulticastLock;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
const-string/jumbo v2, "power"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/16 v1, 0xa
const-string/jumbo v2, "pinguo_power"
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWakeLock:Landroid/os/PowerManager$WakeLock;
new-instance v1, Landroid/content/IntentFilter;
invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.NETWORK_IDS_CHANGED"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.supplicant.STATE_CHANGE"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.RSSI_CHANGED"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
new-instance v1, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$1;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;)V
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method public destroy()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->clean()V
return-void
.end method
.method public getConnectedWifiInfo()Landroid/net/wifi/WifiInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
return-object v0
.end method
.method public getSonyWifiInfo()Landroid/net/wifi/WifiInfo;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mSonyWifiInfo:Landroid/net/wifi/WifiInfo;
return-object v0
.end method
.method public getStartConnectWifi()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
return v0
.end method
.method public getWifiIsOpen()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiIsOpen:Z
return v0
.end method
.method public pause()V
.registers 3
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->releaseLock()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->pause()V
return-void
.end method
.method public reset(Z)V
.registers 7
const/4 v4, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->checkArgumentInit()V
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
iput v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
if-eqz p1, :cond_37
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
if-eqz v0, :cond_1b
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
:cond_1b
iput v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v2, 0x4
invoke-interface {v1, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
:cond_27
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->forceScan()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v1, :cond_37
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const-wide/16 v2, 0x4e20
invoke-interface {v1, v4, v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageDelayed(IJ)V
:cond_37
return-void
.end method
.method public resume()V
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
move-result v0
if-eqz v0, :cond_25
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
:goto_13
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->acquireLock()V
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mReceiver:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFilter:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->resume()V
return-void
:cond_25
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
goto :goto_13
:cond_29
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiIsOpen:Z
goto :goto_13
.end method
.method public setContext(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mContext:Landroid/content/Context;
return-void
.end method
.method public setStartTime(J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiStartConnectTime:J
return-void
.end method
.method public setStartWifi(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
return-void
.end method
.method public setWifiModeListener(Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
return-void
.end method
.method public setWifiScanner(Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
return-void
.end method
.method public setWifiState(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
return-void
.end method
.method public startWifi()V
.registers 7
const/4 v5, 0x1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->checkArgumentInit()V
iput-boolean v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mStartWifi:Z
iget-boolean v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiEnable:Z
if-nez v2, :cond_14
const-wide/16 v2, 0x0
const/4 v4, 0x0
const-string/jumbo v5, "11111111"
invoke-direct {p0, v2, v3, v4, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->connectWifiFail(JZLjava/lang/String;)V
:cond_13
:goto_13
return-void
:cond_14
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
iget-boolean v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFirstConnectWifi:Z
if-nez v2, :cond_44
iput-boolean v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mFirstConnectWifi:Z
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
:cond_22
:goto_22
if-eqz v0, :cond_27
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
:cond_27
iput v5, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiState:I
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const/4 v3, 0x4
invoke-interface {v2, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageForWhat(I)V
:cond_33
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
invoke-virtual {v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;->forceScan()V
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mModelListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;
const-wide/16 v3, 0x4e20
invoke-interface {v2, v5, v3, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel$WifiModelListener;->sendMessageDelayed(IJ)V
goto :goto_13
:cond_44
if-eqz v0, :cond_22
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_22
const-string/jumbo v2, ""
invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_22
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "\""
const-string/jumbo v4, ""
invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "direct"
invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_22
invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "0x"
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_22
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
if-eq v2, v0, :cond_22
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiModel;->mConnectedWifiInfo:Landroid/net/wifi/WifiInfo;
goto :goto_22
.end method