.class public Lcom/bbm/receiver/NetworkChangeMonitor;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeMonitor.java"
.field private static a:Ljava/lang/String;
.field private static b:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
return-void
.end method
.method private static a()Ljava/lang/String;
.registers 5
const-string v1, "0.0.0.0"
:try_start_2
invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;
move-result-object v2
:cond_6
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_44
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/NetworkInterface;
invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
move-result-object v3
:cond_16
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_6
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/InetAddress;
invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
move-result v4
if-nez v4, :cond_16
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_16
invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
:try_end_39
.catch Ljava/net/SocketException; {:try_start_2 .. :try_end_39} :catch_3b
move-result-object v0
:goto_3a
return-object v0
:catch_3b
move-exception v0
const-string v0, "Getting mobile ip error"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:cond_44
move-object v0, v1
goto :goto_3a
.end method
.method private static a(I)Ljava/lang/String;
.registers 4
const-string v0, "0.0.0.0"
:try_start_2
invoke-static {p0}, Lcom/bbm/util/ct;->a(I)Ljava/net/InetAddress;
move-result-object v1
if-eqz v1, :cond_20
invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z
move-result v2
if-nez v2, :cond_20
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_20
invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;
:try_end_1f
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_21
move-result-object v0
:cond_20
:goto_20
return-object v0
:catch_21
move-exception v1
const-string v1, "Getting wifi ip error"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_20
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
if-eqz p0, :cond_15
if-eqz v0, :cond_15
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
if-eqz v0, :cond_15
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/bbm/c/c;->a(Landroid/content/Context;Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 11
const/4 v6, 0x1
const/4 v7, 0x0
const-string v0, "onReceive"
const-class v1, Lcom/bbm/receiver/NetworkChangeMonitor;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v0
const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
move-result v0
if-eqz v0, :cond_16
:goto_15
:cond_15
return-void
:cond_16
const-string v0, "connectivity"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v5
if-eqz v5, :cond_145
invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_145
const-string v0, ""
invoke-static {p1}, Lcom/bbm/util/ct;->b(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_39
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_39
move-object v0, v1
:cond_39
invoke-static {p1}, Lcom/bbm/util/ct;->c(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_16d
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_16d
const-string v3, ","
invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v3, ","
invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_5a
const-string v0, "Retrieved MCC and MNC: %s."
new-array v2, v6, [Ljava/lang/Object;
aput-object v1, v2, v7
invoke-static {v0, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v2, ""
const-string v0, "phone"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
move-result v3
const/4 v4, 0x5
if-ne v3, v4, :cond_7d
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_16a
const-string v0, ""
move-object v2, v0
:goto_7d
:cond_7d
const-string v0, "Retrieved MSISDN: %s."
new-array v3, v6, [Ljava/lang/Object;
aput-object v2, v3, v7
invoke-static {v0, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "phone"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_167
const-string v0, ""
move-object v3, v0
:goto_97
const-string v0, "Retrieved IMEI: %s."
new-array v4, v6, [Ljava/lang/Object;
aput-object v3, v4, v7
invoke-static {v0, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-ne v0, v6, :cond_f4
const-string v0, "wifi"
invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/wifi/WifiManager;
if-eqz v0, :cond_15
invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v0
if-eqz v0, :cond_15
invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getIpAddress()I
move-result v0
invoke-static {v0}, Lcom/bbm/receiver/NetworkChangeMonitor;->a(I)Ljava/lang/String;
move-result-object v0
sget-object v4, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_eb
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getInstance()Lcom/rim/bbm/BbmPlatformService;
move-result-object v0
if-eqz v0, :cond_15
const-string v0, "Changed to Wifi network %s in platform."
new-array v4, v6, [Ljava/lang/Object;
sget-object v5, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
aput-object v5, v4, v7
invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "0.0.0.0"
const-string v4, "802.11g/n"
invoke-static {v0, v4, v1, v2, v3}, Lcom/rim/bbm/BbmPlatformService;->set_network_interface_with_details(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "mixpanel_connection_wifi_count"
invoke-static {p1, v0}, Lcom/bbm/receiver/NetworkChangeMonitor;->a(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_15
:cond_eb
const-string v0, "Ignoring change to Wifi network as IP address is same."
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_15
:cond_f4
if-nez v0, :cond_13a
invoke-static {}, Lcom/bbm/receiver/NetworkChangeMonitor;->a()Ljava/lang/String;
move-result-object v0
sget-object v4, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_131
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
const-string v4, "CELLULAR"
invoke-virtual {v5}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v5
if-nez v5, :cond_165
:goto_114
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getInstance()Lcom/rim/bbm/BbmPlatformService;
move-result-object v4
if-eqz v4, :cond_15
const-string v4, "Changed to Mobile network %s in platform."
new-array v5, v6, [Ljava/lang/Object;
sget-object v6, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
aput-object v6, v5, v7
invoke-static {v4, v5}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v4, "0.0.0.0"
invoke-static {v4, v0, v1, v2, v3}, Lcom/rim/bbm/BbmPlatformService;->set_network_interface_with_details(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "mixpanel_connection_mobile_count"
invoke-static {p1, v0}, Lcom/bbm/receiver/NetworkChangeMonitor;->a(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_15
:cond_131
const-string v0, "Ignoring change to Mobile network as IP address is same."
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_15
:cond_13a
if-ne v0, v6, :cond_13e
if-eqz v0, :cond_15
:cond_13e
const-string v0, "mixpanel_connection_other_count"
invoke-static {p1, v0}, Lcom/bbm/receiver/NetworkChangeMonitor;->a(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_15
:cond_145
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->a:Ljava/lang/String;
const-string v0, "UNKNOWN"
sput-object v0, Lcom/bbm/receiver/NetworkChangeMonitor;->b:Ljava/lang/String;
invoke-static {}, Lcom/rim/bbm/BbmPlatformService;->getInstance()Lcom/rim/bbm/BbmPlatformService;
move-result-object v0
if-eqz v0, :cond_15
const-string v0, "UNKNOWN"
const-string v1, ""
const-string v2, ""
invoke-static {v0, v1, v2}, Lcom/rim/bbm/BbmPlatformService;->set_network_interface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "The network is disconnected."
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
goto/16 :goto_15
:cond_165
move-object v0, v4
goto :goto_114
:cond_167
move-object v3, v0
goto/16 :goto_97
:cond_16a
move-object v2, v0
goto/16 :goto_7d
:cond_16d
move-object v1, v0
goto/16 :goto_5a
.end method