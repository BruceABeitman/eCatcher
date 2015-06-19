.class public Lcom/lenovo/anyshare/sdk/internal/cc;
.super Ljava/lang/Object;
.source "NetworkState.java"
.field public a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
.field public b:I
.field public c:Landroid/net/wifi/WifiConfiguration;
.field public d:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
sget-object v0, Lcom/lenovo/anyshare/sdk/internal/cc$a;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iput-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
const/4 v0, -0x1
iput v0, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->d:Z
return-void
.end method
.method public static a(Landroid/content/Context;)Lcom/lenovo/anyshare/sdk/internal/cc;
.registers 7
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cc;
invoke-direct {v1, p0}, Lcom/lenovo/anyshare/sdk/internal/cc;-><init>(Landroid/content/Context;)V
const-string/jumbo v3, "wifi"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/net/wifi/WifiManager;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v3
if-eqz v3, :cond_22
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cc$a;->b:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iput-object v3, v1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v3
invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v3
iput v3, v1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
:cond_22
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v3
if-eqz v3, :cond_3d
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cf;
invoke-direct {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->d()Landroid/net/wifi/WifiConfiguration;
move-result-object v3
iput-object v3, v1, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->f()Z
move-result v3
if-eqz v3, :cond_3d
sget-object v3, Lcom/lenovo/anyshare/sdk/internal/cc$a;->c:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iput-object v3, v1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
:cond_3d
const-string/jumbo v3, "NetworkState"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v5, "save->"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
return-object v1
.end method
.method public static a(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cc;)V
.registers 14
const/4 v5, 0x0
const/4 v6, 0x0
const/4 v7, 0x1
const-string/jumbo v8, "NetworkState"
new-instance v9, Ljava/lang/StringBuilder;
invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v10, "restore->"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "wifi"
invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/net/wifi/WifiManager;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v8
if-eqz v8, :cond_88
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cf;
invoke-direct {v1, v4}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V
:goto_31
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/cc$a;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iget-object v9, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
if-eq v8, v9, :cond_3d
sget-object v8, Lcom/lenovo/anyshare/sdk/internal/cc$a;->c:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iget-object v9, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
if-ne v8, v9, :cond_8a
:cond_3d
move v2, v7
:goto_3e
const-string/jumbo v8, "NetworkState"
const-string/jumbo v9, "isShutdownWifi=%b, wifiMgr.isWifiEnabled()=%b"
const/4 v10, 0x2
new-array v10, v10, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v10, v6
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v11
invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v11
aput-object v11, v10, v7
invoke-static {v8, v9, v10}, Lcom/lenovo/anyshare/sdk/internal/at;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
if-eqz v2, :cond_60
const/4 v8, 0x0
:try_start_5d
invoke-virtual {v4, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
:cond_60
:try_end_60
.catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_8c
:goto_60
if-eqz v1, :cond_7a
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cf;->f()Z
move-result v8
if-eqz v8, :cond_6b
invoke-virtual {v1, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
:cond_6b
iget-boolean v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->d:Z
if-eqz v5, :cond_7a
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cf;->e()Z
move-result v5
if-eqz v5, :cond_94
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
invoke-virtual {v1, v5}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;)Z
:cond_7a
:goto_7a
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/cc$1;->a:[I
iget-object v6, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
invoke-virtual {v6}, Lcom/lenovo/anyshare/sdk/internal/cc$a;->ordinal()I
move-result v6
aget v5, v5, v6
packed-switch v5, :pswitch_data_ce
:goto_87
:cond_87
return-void
:cond_88
move-object v1, v5
goto :goto_31
:cond_8a
move v2, v6
goto :goto_3e
:catch_8c
move-exception v0
const-string/jumbo v8, "NetworkState"
invoke-static {v8, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_60
:cond_94
sget-object v5, Lcom/lenovo/anyshare/sdk/internal/cc$a;->c:Lcom/lenovo/anyshare/sdk/internal/cc$a;
iget-object v8, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
if-eq v5, v8, :cond_7a
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
invoke-virtual {v1, v5, v7}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
invoke-virtual {v1, v5, v6}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
goto :goto_7a
:pswitch_a5
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v5
const/4 v6, 0x3
if-eq v5, v6, :cond_af
invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
:cond_af
invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v3
iget v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
if-ltz v5, :cond_87
if-eqz v3, :cond_c1
invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v5
iget v6, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
if-eq v5, v6, :cond_87
:cond_c1
iget v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
invoke-virtual {v4, v5, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
goto :goto_87
:pswitch_c7
iget-object v5, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
invoke-virtual {v1, v5, v7}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
goto :goto_87
nop
:pswitch_data_ce
.packed-switch 0x1
:pswitch_a5
:pswitch_c7
.end packed-switch
.end method
.method public static b(Landroid/content/Context;)V
.registers 6
const/4 v4, 0x0
const-string/jumbo v3, "wifi"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/net/wifi/WifiManager;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v3
if-eqz v3, :cond_1f
new-instance v1, Lcom/lenovo/anyshare/sdk/internal/cf;
invoke-direct {v1, v2}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V
invoke-virtual {v1}, Lcom/lenovo/anyshare/sdk/internal/cf;->f()Z
move-result v3
if-eqz v3, :cond_1f
const/4 v3, 0x0
invoke-virtual {v1, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
:cond_1f
const/4 v3, 0x0
:try_start_20
invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
:goto_23
:try_end_23
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24
return-void
:catch_24
move-exception v0
const-string/jumbo v3, "NetworkState"
invoke-static {v3, v0}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_23
.end method
.method public static b(Landroid/content/Context;Lcom/lenovo/anyshare/sdk/internal/cc;)V
.registers 10
const/4 v3, 0x0
const/4 v7, 0x1
const-string/jumbo v4, "NetworkState"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v6, "openWifi->"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/lenovo/anyshare/sdk/internal/at;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v4, "wifi"
invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/net/wifi/WifiManager;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v4
if-eqz v4, :cond_58
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cf;
invoke-direct {v0, v2}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V
:goto_30
if-eqz v0, :cond_36
const/4 v4, 0x0
invoke-virtual {v0, v3, v4}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
:cond_36
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I
move-result v3
const/4 v4, 0x3
if-eq v3, v4, :cond_40
invoke-virtual {v2, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
:cond_40
invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v1
iget v3, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
if-ltz v3, :cond_57
if-eqz v1, :cond_52
invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I
move-result v3
iget v4, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
if-eq v3, v4, :cond_57
:cond_52
iget v3, p1, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
invoke-virtual {v2, v3, v7}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z
:cond_57
return-void
:cond_58
move-object v0, v3
goto :goto_30
.end method
.method public static c(Landroid/content/Context;)V
.registers 5
const-string/jumbo v2, "wifi"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/wifi/WifiManager;
invoke-static {}, Lcom/lenovo/anyshare/sdk/internal/cf;->a()Z
move-result v2
if-eqz v2, :cond_1f
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cf;
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cf;-><init>(Landroid/net/wifi/WifiManager;)V
invoke-virtual {v0}, Lcom/lenovo/anyshare/sdk/internal/cf;->f()Z
move-result v2
if-eqz v2, :cond_1f
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Lcom/lenovo/anyshare/sdk/internal/cf;->a(Landroid/net/wifi/WifiConfiguration;Z)Z
:cond_1f
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-string/jumbo v1, "NetworkState [networkType=%s, networkId=%s, apConfiguration=%s, wifiApUsed=%s]"
const/4 v0, 0x4
new-array v2, v0, [Ljava/lang/Object;
const/4 v0, 0x0
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->a:Lcom/lenovo/anyshare/sdk/internal/cc$a;
aput-object v3, v2, v0
const/4 v0, 0x1
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->b:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v0
const/4 v3, 0x2
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->c:Landroid/net/wifi/WifiConfiguration;
iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
:goto_1d
aput-object v0, v2, v3
const/4 v0, 0x3
iget-boolean v3, p0, Lcom/lenovo/anyshare/sdk/internal/cc;->d:Z
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v2, v0
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_2d
const-string/jumbo v0, "[NULL]"
goto :goto_1d
.end method