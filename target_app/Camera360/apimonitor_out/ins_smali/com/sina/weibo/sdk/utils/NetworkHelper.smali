.class public Lcom/sina/weibo/sdk/utils/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clearCookies(Landroid/content/Context;Ljava/lang/String;)V
.registers 4
invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V
invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V
invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
move-result-object v1
invoke-virtual {v1}, Landroid/webkit/CookieSyncManager;->sync()V
return-void
.end method
.method public static getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
.registers 3
const-string/jumbo v1, "connectivity"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v1
return-object v1
.end method
.method public static getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;
.registers 4
const-string/jumbo v1, "connectivity"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v1
return-object v1
.end method
.method public static getNetworkType(Landroid/content/Context;)I
.registers 3
const/4 v1, -0x1
if-eqz p0, :cond_9
invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_a
:cond_9
:goto_9
return v1
:cond_a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v1
goto :goto_9
.end method
.method public static getWifiConnectivityState(Landroid/content/Context;)Landroid/net/NetworkInfo$DetailedState;
.registers 3
const/4 v1, 0x1
invoke-static {p0, v1}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getNetworkInfo(Landroid/content/Context;I)Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_a
sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;
:goto_9
return-object v1
:cond_a
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;
move-result-object v1
goto :goto_9
.end method
.method public static getWifiState(Landroid/content/Context;)I
.registers 3
const-string/jumbo v1, "wifi"
invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
if-nez v0, :cond_d
const/4 v1, 0x4
:goto_c
return v1
:cond_d
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v1
goto :goto_c
.end method
.method public static hasInternetPermission(Landroid/content/Context;)Z
.registers 3
const/4 v0, 0x1
if-eqz p0, :cond_c
const-string/jumbo v1, "android.permission.INTERNET"
invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
move-result v1
if-nez v1, :cond_d
:cond_c
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method public static isMobileNetwork(Landroid/content/Context;)Z
.registers 4
const/4 v1, 0x0
if-eqz p0, :cond_9
invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v0
if-nez v0, :cond_a
:cond_9
:goto_9
return v1
:cond_a
if-eqz v0, :cond_9
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v2
if-nez v2, :cond_9
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v2
if-eqz v2, :cond_9
const/4 v1, 0x1
goto :goto_9
.end method
.method public static isNetworkAvailable(Landroid/content/Context;)Z
.registers 4
const/4 v1, 0x0
if-eqz p0, :cond_10
invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v2
if-eqz v2, :cond_10
const/4 v1, 0x1
:cond_10
return v1
.end method
.method public static isWifiValid(Landroid/content/Context;)Z
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
if-eqz p0, :cond_19
invoke-static {p0}, Lcom/sina/weibo/sdk/utils/NetworkHelper;->getActiveNetworkInfo(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v3
if-ne v1, v3, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v3
if-eqz v3, :cond_17
:goto_16
return v1
:cond_17
move v1, v2
goto :goto_16
:cond_19
move v1, v2
goto :goto_16
.end method
.method public static wifiConnection(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 14
const/4 v1, 0x0
const-string/jumbo v9, "wifi"
invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Landroid/net/wifi/WifiManager;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "\""
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "\""
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v8
if-eqz v8, :cond_3d
invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v9
invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_3b
invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;
move-result-object v9
invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_3d
:cond_3b
const/4 v1, 0x1
:goto_3c
:cond_3c
return v1
:cond_3d
invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;
move-result-object v4
if-eqz v4, :cond_3c
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v9
if-eqz v9, :cond_3c
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v9
add-int/lit8 v3, v9, -0x1
:goto_4f
if-ltz v3, :cond_3c
invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v9
check-cast v9, Landroid/net/wifi/ScanResult;
iget-object v6, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;
invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-nez v9, :cond_65
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_92
:cond_65
new-instance v0, Landroid/net/wifi/WifiConfiguration;
invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V
iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "\""
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, "\""
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
iput-object v9, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
const/4 v9, 0x2
iput v9, v0, Landroid/net/wifi/WifiConfiguration;->status:I
invoke-virtual {v7, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I
move-result v2
const/4 v9, 0x0
invoke-virtual {v7, v2, v9}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
move-result v1
goto :goto_3c
:cond_92
add-int/lit8 v3, v3, -0x1
goto :goto_4f
.end method