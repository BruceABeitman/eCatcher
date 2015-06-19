.class public final Lcom/lenovo/anyshare/sdk/internal/cf;
.super Ljava/lang/Object;
.source "HotspotManager.java"
.field private static final b:Ljava/util/Map;
.field private static c:Ljava/lang/Boolean;
.field private static d:Z
.field private final a:Landroid/net/wifi/WifiManager;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
return-void
.end method
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v0
const-string/jumbo v1, "shouldn\'t try instantiate us if isSupport() returned false"
invoke-static {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/ah;->b(ZLjava/lang/String;)V
iput-object p1, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
return-void
.end method
.method public static final declared-synchronized a()Z
.registers 10
const-class v5, Lcom/lenovo/anyshare/sdk/internal/cf;
monitor-enter v5
:try_start_3
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->c:Ljava/lang/Boolean;
if-eqz v4, :cond_f
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->c:Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_c
.catchall {:try_start_3 .. :try_end_c} :catchall_d3
move-result v4
:goto_d
monitor-exit v5
return v4
:try_start_f
:cond_f
sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->c:Ljava/lang/Boolean;
sget v3, Landroid/os/Build$VERSION;->SDK_INT:I
const-string/jumbo v4, "HotspotManager"
const-string/jumbo v6, "sdkCode=%d, MODEL=%s"
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
aput-object v9, v7, v8
const/4 v8, 0x1
sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v9, v7, v8
invoke-static {v4, v6, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
const/16 v4, 0x8
if-ge v3, v4, :cond_38
:goto_31
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->c:Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_36
.catchall {:try_start_f .. :try_end_36} :catchall_d3
move-result v4
goto :goto_d
:cond_38
:try_start_38
const-class v4, Landroid/net/wifi/WifiConfiguration;
const-string/jumbo v6, "mWifiApProfile"
invoke-virtual {v4, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
const/4 v4, 0x1
sput-boolean v4, Lcom/lenovo/anyshare/sdk/internal/cf;->d:Z
:try_end_43
.catchall {:try_start_38 .. :try_end_43} :catchall_d3
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_43} :catch_fb
:goto_43
:try_start_43
const-string/jumbo v4, "HotspotManager"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, "mIsHtc="
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
sget-boolean v7, Lcom/lenovo/anyshare/sdk/internal/cf;->d:Z
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v4, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_start_5f
:try_end_5f
.catchall {:try_start_43 .. :try_end_5f} :catchall_d3
const-string/jumbo v2, "getWifiApState"
const-class v4, Landroid/net/wifi/WifiManager;
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "setWifiApEnabled"
const-class v4, Landroid/net/wifi/WifiManager;
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Class;
const/4 v7, 0x0
const-class v8, Landroid/net/wifi/WifiConfiguration;
aput-object v8, v6, v7
const/4 v7, 0x1
sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;
aput-object v8, v6, v7
invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string/jumbo v2, "getWifiApConfiguration"
const-class v4, Landroid/net/wifi/WifiManager;
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_9c
.catchall {:try_start_5f .. :try_end_9c} :catchall_d3
.catch Ljava/lang/SecurityException; {:try_start_5f .. :try_end_9c} :catch_ca
.catch Ljava/lang/NoSuchMethodException; {:try_start_5f .. :try_end_9c} :catch_f2
:try_start_9c
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->i()Ljava/lang/String;
move-result-object v2
const-class v4, Landroid/net/wifi/WifiManager;
const/4 v6, 0x1
new-array v6, v6, [Ljava/lang/Class;
const/4 v7, 0x0
const-class v8, Landroid/net/wifi/WifiConfiguration;
aput-object v8, v6, v7
invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_b3
.catchall {:try_start_9c .. :try_end_b3} :catchall_d3
.catch Ljava/lang/NoSuchMethodException; {:try_start_9c .. :try_end_b3} :catch_d6
.catch Ljava/lang/SecurityException; {:try_start_9c .. :try_end_b3} :catch_ca
:goto_b3
:try_start_b3
const-string/jumbo v2, "isWifiApEnabled"
const-class v4, Landroid/net/wifi/WifiManager;
const/4 v6, 0x0
new-array v6, v6, [Ljava/lang/Class;
invoke-virtual {v4, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-interface {v4, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
sput-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->c:Ljava/lang/Boolean;
:try_end_c8
.catchall {:try_start_b3 .. :try_end_c8} :catchall_d3
.catch Ljava/lang/SecurityException; {:try_start_b3 .. :try_end_c8} :catch_ca
.catch Ljava/lang/NoSuchMethodException; {:try_start_b3 .. :try_end_c8} :catch_f2
goto/16 :goto_31
:catch_ca
move-exception v0
:try_start_cb
const-string/jumbo v4, "HotspotManager"
invoke-static {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_d1
.catchall {:try_start_cb .. :try_end_d1} :catchall_d3
goto/16 :goto_31
:catchall_d3
move-exception v4
monitor-exit v5
throw v4
:catch_d6
move-exception v0
:try_start_d7
const-string/jumbo v4, "HotspotManager"
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v7, ""
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v4, v6}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_f1
.catchall {:try_start_d7 .. :try_end_f1} :catchall_d3
.catch Ljava/lang/SecurityException; {:try_start_d7 .. :try_end_f1} :catch_ca
.catch Ljava/lang/NoSuchMethodException; {:try_start_d7 .. :try_end_f1} :catch_f2
goto :goto_b3
:catch_f2
move-exception v0
:try_start_f3
const-string/jumbo v4, "HotspotManager"
invoke-static {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_f9
.catchall {:try_start_f3 .. :try_end_f9} :catchall_d3
goto/16 :goto_31
:catch_fb
move-exception v4
goto/16 :goto_43
.end method
.method private b(Landroid/net/wifi/WifiConfiguration;)V
.registers 5
:try_start_0
const-string/jumbo v2, "mWifiApProfile"
invoke-static {p1, v2}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_14
const-string/jumbo v2, "SSID"
invoke-static {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/String;
iput-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15
:cond_14
return-void
:catch_15
move-exception v0
const-string/jumbo v2, "HotspotManager"
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_14
.end method
.method private c(Landroid/net/wifi/WifiConfiguration;)V
.registers 7
:try_start_0
const-string/jumbo v2, "HotspotManager"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "config=  "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v2, "mWifiApProfile"
invoke-static {p1, v2}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_47
const-string/jumbo v2, "SSID"
iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
const-string/jumbo v2, "BSSID"
iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
const-string/jumbo v2, "secureType"
const-string/jumbo v3, "open"
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
const-string/jumbo v2, "dhcpEnable"
const/4 v3, 0x1
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v1, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/ai;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
:goto_47
:try_end_47
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48
:cond_47
return-void
:catch_48
move-exception v0
const-string/jumbo v2, "HotspotManager"
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_47
.end method
.method public static g()Z
.registers 1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/cf;->d:Z
return v0
.end method
.method public static h()Ljava/lang/String;
.registers 1
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z
move-result v0
if-eqz v0, :cond_a
const-string/jumbo v0, "192.168.1.1"
:goto_9
return-object v0
:cond_a
const-string/jumbo v0, "192.168.43.1"
goto :goto_9
.end method
.method private static i()Ljava/lang/String;
.registers 1
sget-boolean v0, Lcom/lenovo/anyshare/sdk/internal/cf;->d:Z
if-eqz v0, :cond_8
const-string/jumbo v0, "setWifiApConfig"
:goto_7
return-object v0
:cond_8
const-string/jumbo v0, "setWifiApConfiguration"
goto :goto_7
.end method
.method public a(Landroid/net/wifi/WifiConfiguration;)Z
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
const/4 v3, 0x0
:try_start_3
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z
move-result v4
if-eqz v4, :cond_c
invoke-direct {p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cf;->c(Landroid/net/wifi/WifiConfiguration;)V
:cond_c
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->i()Ljava/lang/String;
move-result-object v7
invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
if-nez v1, :cond_1c
const/4 v3, 0x1
:goto_1b
return v3
:cond_1c
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z
move-result v4
if-eqz v4, :cond_54
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object p1, v7, v8
invoke-virtual {v1, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v2
const-string/jumbo v4, "HotspotManager"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v8, "rValue -> "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v4, v7}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;)V
if-lez v2, :cond_52
move v3, v5
:goto_51
goto :goto_1b
:cond_52
move v3, v6
goto :goto_51
:cond_54
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p1, v5, v6
invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/Boolean;
invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_65
.catch Ljava/lang/Exception; {:try_start_3 .. :try_end_65} :catch_67
move-result v3
goto :goto_1b
:catch_67
move-exception v0
const-string/jumbo v4, "HotspotManager"
invoke-static {v4, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1b
.end method
.method public a(Landroid/net/wifi/WifiConfiguration;Z)Z
.registers 10
const/4 v2, 0x0
:try_start_1
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
const-string/jumbo v4, "setWifiApEnabled"
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
const/4 v5, 0x1
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v6
aput-object v6, v4, v5
invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Boolean;
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_24
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_26
move-result v2
:goto_25
return v2
:catch_26
move-exception v0
const-string/jumbo v3, "HotspotManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public b()Landroid/net/wifi/WifiManager;
.registers 2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
return-object v0
.end method
.method public c()I
.registers 5
:try_start_0
sget-object v2, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
const-string/jumbo v3, "getWifiApState"
invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
:try_end_19
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b
move-result v2
:goto_1a
return v2
:catch_1b
move-exception v0
const-string/jumbo v2, "HotspotManager"
invoke-static {v2, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v2, 0x4
goto :goto_1a
.end method
.method public d()Landroid/net/wifi/WifiConfiguration;
.registers 7
const/4 v1, 0x0
:try_start_1
sget-object v4, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
const-string/jumbo v5, "getWifiApConfiguration"
invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/reflect/Method;
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v5, 0x0
new-array v5, v5, [Ljava/lang/Object;
invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
move-object v0, v4
check-cast v0, Landroid/net/wifi/WifiConfiguration;
move-object v1, v0
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->g()Z
move-result v4
if-eqz v4, :cond_24
if-eqz v1, :cond_24
invoke-direct {p0, v1}, Lcom/lenovo/anyshare/sdk/internal/cf;->b(Landroid/net/wifi/WifiConfiguration;)V
:try_end_24
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25
:goto_24
:cond_24
return-object v1
:catch_25
move-exception v2
const-string/jumbo v4, "HotspotManager"
invoke-static {v4, v2}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_24
.end method
.method public e()Z
.registers 3
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->i()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Z
.registers 6
const/4 v2, 0x0
:try_start_1
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cf;->b:Ljava/util/Map;
const-string/jumbo v4, "isWifiApEnabled"
invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/reflect/Method;
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cf;->a:Landroid/net/wifi/WifiManager;
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Boolean;
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c
move-result v2
:goto_1b
return v2
:catch_1c
move-exception v0
const-string/jumbo v3, "HotspotManager"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1b
.end method