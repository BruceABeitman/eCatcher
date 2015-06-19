.class public Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;
.super Ljava/lang/Object;
.source "SonyWifiDetectMode.java"
.field private static final CONNECT_TIMEOUT_LONG:J = 0x7530L
.field private static final CONNECT_TIMEOUT_SHOT:J = 0x61a8L
.field protected static final SONY_WIFI_NETWORK_ID:Ljava/lang/String; = "sony_network_id"
.field protected static final SONY_WIFI_NETWORK_SSID:Ljava/lang/String; = "sony_network_ssid"
.field public static final STATUS_DETECTED:I = 0x1
.field public static final STATUS_RETRY:I = 0x2
.field private mConnectedRetry:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private mContext:Landroid/content/Context;
.field private mDectedStatus:I
.field private mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
.field protected mNetworkId:I
.field protected mNetworkSsid:Ljava/lang/String;
.field private mRetryFilter:Landroid/content/IntentFilter;
.field private mRetryReceiver:Landroid/content/BroadcastReceiver;
.field private mWakeLock:Landroid/os/PowerManager$WakeLock;
.field protected mWifiInfo:Landroid/net/wifi/WifiInfo;
.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
.field private mWifiManager:Landroid/net/wifi/WifiManager;
.field private mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
.field private mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
.field private mWifiStartConnectTime:J
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
const/4 v0, -0x1
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkId:I
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mConnectedRetry:Ljava/util/concurrent/atomic/AtomicBoolean;
iput-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWakeLock:Landroid/os/PowerManager$WakeLock;
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;Landroid/content/Context;Landroid/content/Intent;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->handleEventRetry(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Landroid/net/wifi/WifiManager;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
.registers 1
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectSuccess()V
return-void
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;J)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;J)V
.registers 3
iput-wide p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiStartConnectTime:J
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
return-object v0
.end method
.method private acquireLock()V
.registers 3
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method private checkArgumentInit()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
if-nez v0, :cond_a
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiRuntimeException;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiRuntimeException;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
throw v0
:cond_a
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
if-nez v0, :cond_14
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiRuntimeException;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiRuntimeException;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
throw v0
:cond_14
return-void
.end method
.method private checkReconnectInfo()Z
.registers 10
const/4 v3, 0x1
iget-object v6, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
if-eqz v0, :cond_3e
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_3e
invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "\""
const-string/jumbo v8, ""
invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v6, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
if-eqz v6, :cond_3e
iget-object v6, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3e
invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v6
const-string/jumbo v7, "\""
const-string/jumbo v8, ""
invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_3e
const/4 v3, 0x0
:cond_3e
return v3
.end method
.method private constructAccessPoints()Ljava/util/List;
.registers 12
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v2, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;
const/4 v8, 0x0
invoke-direct {v2, p0, v8}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;)V
iget-object v8, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
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
iget-object v8, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
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
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
invoke-direct {v0, v9, v3}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v9, v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v2, v9, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
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
invoke-virtual {v2, v9}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;
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
iget-object v9, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
invoke-direct {v0, v9, v6}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v9, v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v2, v9, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V
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
.method private currentWifiIsRange(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)Z
.registers 9
const/4 v6, -0x1
const/4 v2, 0x1
iget-object v3, p1, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, ""
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
if-eqz v3, :cond_63
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v3
if-eq v3, v6, :cond_63
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "direct"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_63
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_52
:goto_52
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_62
invoke-virtual {p1}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->getRssi()I
move-result v3
const v4, 0x7fffffff
if-ne v3, v4, :cond_62
const/4 v2, 0x0
:cond_62
return v2
:cond_63
iget v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkId:I
if-eq v3, v6, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
if-eqz v3, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "direct"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_52
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v1
goto :goto_52
.end method
.method private handleEventRetry(Landroid/content/Context;Landroid/content/Intent;)V
.registers 8
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "android.net.wifi.supplicant.STATE_CHANGE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_26
const-string/jumbo v3, "newState"
invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v2
check-cast v2, Landroid/net/wifi/SupplicantState;
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mConnectedRetry:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v3
if-nez v3, :cond_25
invoke-static {v2}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
move-result-object v3
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->updateConnectionStateRetry(Landroid/net/NetworkInfo$DetailedState;)V
:goto_25
:cond_25
return-void
:cond_26
const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_49
const-string/jumbo v3, "networkInfo"
invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v1
check-cast v1, Landroid/net/NetworkInfo;
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mConnectedRetry:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v4
invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
move-result-object v3
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->updateConnectionStateRetry(Landroid/net/NetworkInfo$DetailedState;)V
goto :goto_25
:cond_49
const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_5e
const-string/jumbo v3, "wifi_state"
const/4 v4, 0x4
invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v3
invoke-direct {p0, v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->updateWifiState(I)V
goto :goto_25
:cond_5e
const-string/jumbo v3, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_25
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->updateAccessPoints()V
goto :goto_25
.end method
.method private notifyConnectSuccess()V
.registers 3
iget v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
packed-switch v1, :pswitch_data_24
:cond_5
:goto_5
return-void
:pswitch_6
const/4 v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->checkReconnectInfo()Z
move-result v0
if-nez v0, :cond_19
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->wifiRetryConnectFail()V
goto :goto_5
:cond_19
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v1, :cond_5
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->wifiRetryConnectSuccess()V
goto :goto_5
nop
:pswitch_data_24
.packed-switch 0x2
:pswitch_6
.end packed-switch
.end method
.method private notifyConnectWifiFail(J)V
.registers 7
iget v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
packed-switch v0, :pswitch_data_28
:goto_5
:cond_5
return-void
:pswitch_6
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->wifiRetryConnectFail()V
goto :goto_5
:pswitch_10
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiStartConnectTime:J
sub-long/2addr v0, v2
cmp-long v0, v0, p1
if-ltz v0, :cond_5
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->wifiRetryConnectFail()V
goto :goto_5
:pswitch_data_28
.packed-switch 0x1
:pswitch_6
:pswitch_10
.end packed-switch
.end method
.method private releaseLock()V
.registers 3
:try_start_0
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWakeLock:Landroid/os/PowerManager$WakeLock;
invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
:try_end_a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-void
:catch_b
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_a
.end method
.method private updateAccessPoints()V
.registers 7
iget v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
const/4 v5, 0x2
if-eq v4, v5, :cond_6
:goto_5
:cond_5
return-void
:cond_6
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v3
packed-switch v3, :pswitch_data_38
goto :goto_5
:pswitch_10
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->constructAccessPoints()Ljava/util/List;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V
invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v4
:cond_20
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_5
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;
invoke-direct {p0, v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->currentWifiIsRange(Lcom/pinguo/camera360/sony/wifi/AccessPoint;)Z
move-result v5
if-nez v5, :cond_20
const-wide/16 v4, 0x0
invoke-direct {p0, v4, v5}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
goto :goto_5
:pswitch_data_38
.packed-switch 0x3
:pswitch_10
.end packed-switch
.end method
.method private updateConnectionStateRetry(Landroid/net/NetworkInfo$DetailedState;)V
.registers 8
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v3, :cond_d
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v3}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->shouldNotDectedEvent()Z
move-result v3
if-eqz v3, :cond_d
:cond_c
:goto_c
return-void
:cond_d
:try_start_d
iget-object v3, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
if-eqz v1, :cond_53
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_c
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "\""
const-string/jumbo v5, ""
invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "direct"
invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_c
sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v3, :cond_3f
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectSuccess()V
:try_end_39
.catch Ljava/lang/Exception; {:try_start_d .. :try_end_39} :catch_3a
goto :goto_c
:catch_3a
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_c
:try_start_3f
:cond_3f
sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v3, :cond_49
const-wide/16 v3, 0x61a8
invoke-direct {p0, v3, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
goto :goto_c
:cond_49
sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v3, :cond_c
const-wide/16 v3, 0x61a8
invoke-direct {p0, v3, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
goto :goto_c
:cond_53
sget-object v3, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;
if-ne p1, v3, :cond_c
const-wide/16 v3, 0x7530
invoke-direct {p0, v3, v4}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
:try_end_5c
.catch Ljava/lang/Exception; {:try_start_3f .. :try_end_5c} :catch_3a
goto :goto_c
.end method
.method private updateWifiState(I)V
.registers 5
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
invoke-interface {v1}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;->shouldNotDectedEvent()Z
move-result v1
if-eqz v1, :cond_d
:goto_c
:pswitch_c
return-void
:cond_d
packed-switch p1, :pswitch_data_1c
goto :goto_c
:pswitch_11
const-wide/16 v1, 0x0
:try_start_13
invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->notifyConnectWifiFail(J)V
:try_end_16
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_17
goto :goto_c
:catch_17
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_c
:pswitch_data_1c
.packed-switch 0x1
:pswitch_11
:pswitch_c
:pswitch_c
.end packed-switch
.end method
.method public create(Landroid/os/Bundle;)V
.registers 5
invoke-static {}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getInstance()Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
const-string/jumbo v2, "wifi"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
if-eqz p1, :cond_30
const-string/jumbo v1, "sony_network_id"
const/4 v2, -0x1
invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkId:I
const-string/jumbo v1, "sony_network_ssid"
invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mNetworkSsid:Ljava/lang/String;
:cond_30
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
const-string/jumbo v2, "pinguo_wifi"
invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
const-string/jumbo v2, "power"
invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/os/PowerManager;
const/16 v1, 0xa
const-string/jumbo v2, "pinguo_power"
invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWakeLock:Landroid/os/PowerManager$WakeLock;
new-instance v1, Landroid/content/IntentFilter;
invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.SCAN_RESULTS"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.supplicant.STATE_CHANGE"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
const-string/jumbo v2, "android.net.wifi.STATE_CHANGE"
invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V
new-instance v1, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$1;
invoke-direct {v1, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$1;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
iput-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryReceiver:Landroid/content/BroadcastReceiver;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiStartConnectTime:J
const/4 v1, 0x1
iput v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
return-void
.end method
.method public destroy()V
.registers 1
return-void
.end method
.method public getDectedStatus()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
return v0
.end method
.method public pause()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->releaseLock()V
return-void
.end method
.method public reStart()V
.registers 9
const/4 v7, -0x1
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v4
if-eqz v4, :cond_8e
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
const/4 v5, 0x1
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setWifiIsOpen(Z)V
:goto_f
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
invoke-virtual {v4}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->getConnectWifiInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiManager:Landroid/net/wifi/WifiManager;
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
const/4 v2, 0x0
const/4 v3, 0x0
if-eqz v1, :cond_23
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v2
:cond_23
if-eqz v0, :cond_29
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v3
:cond_29
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_8d
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "\""
const-string/jumbo v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "direct"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_8d
invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "0x"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_8d
if-eqz v3, :cond_82
const-string/jumbo v4, ""
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_82
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "\""
const-string/jumbo v6, ""
invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "direct"
invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v4
if-nez v4, :cond_82
invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
move-result-object v4
const-string/jumbo v5, "0x"
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_96
:cond_82
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v4
if-eq v4, v7, :cond_8d
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setConnectWifiInfo(Landroid/net/wifi/WifiInfo;)V
:goto_8d
:cond_8d
return-void
:cond_8e
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
const/4 v5, 0x0
invoke-virtual {v4, v5}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setWifiIsOpen(Z)V
goto/16 :goto_f
:cond_96
invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_8d
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v4
if-eq v4, v7, :cond_8d
iget-object v4, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiSaveInstance:Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;
invoke-virtual {v4, v1}, Lcom/pinguo/camera360/sony/wifi/WifiSaveInstance;->setConnectWifiInfo(Landroid/net/wifi/WifiInfo;)V
goto :goto_8d
.end method
.method public reconnectWifi()V
.registers 2
const/4 v0, 0x2
iput v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
new-instance v0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;-><init>(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;)V
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$2;->start()V
return-void
.end method
.method public resume()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryReceiver:Landroid/content/BroadcastReceiver;
iget-object v2, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mRetryFilter:Landroid/content/IntentFilter;
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
invoke-direct {p0}, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->acquireLock()V
return-void
.end method
.method public saveInstanceState(Landroid/os/Bundle;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
if-eqz v0, :cond_1c
const-string/jumbo v0, "sony_network_id"
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string/jumbo v0, "sony_network_ssid"
iget-object v1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiInfo:Landroid/net/wifi/WifiInfo;
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_1c
return-void
.end method
.method public setContext(Landroid/content/Context;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mContext:Landroid/content/Context;
return-void
.end method
.method public setDectedListener(Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mListener:Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode$WifiDetectedListener;
return-void
.end method
.method public setDectedStatus(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mDectedStatus:I
return-void
.end method
.method public setWifiScanner(Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/sony/wifi/SonyWifiDetectMode;->mWifiScanner:Lcom/pinguo/camera360/sony/wifi/SonyWifiScan;
return-void
.end method