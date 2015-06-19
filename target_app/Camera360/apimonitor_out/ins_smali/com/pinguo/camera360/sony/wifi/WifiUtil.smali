.class public Lcom/pinguo/camera360/sony/wifi/WifiUtil;
.super Ljava/lang/Object;
.source "WifiUtil.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static getConfig(Lcom/pinguo/camera360/sony/wifi/AccessPoint;Landroid/widget/EditText;)Landroid/net/wifi/WifiConfiguration;
.registers 12
const/4 v7, -0x1
const/4 v5, 0x0
const/4 v0, 0x0
if-nez p0, :cond_d
:goto_5
if-eqz p0, :cond_10
:try_start_7
iget v6, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
if-eq v6, v7, :cond_10
move-object v1, v5
:cond_c
:goto_c
return-object v1
:cond_d
iget v0, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->security:I
goto :goto_5
:cond_10
new-instance v1, Landroid/net/wifi/WifiConfiguration;
invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V
if-nez p0, :cond_19
move-object v1, v5
goto :goto_c
:cond_19
iget v6, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
if-ne v6, v7, :cond_2a
iget-object v6, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->ssid:Ljava/lang/String;
invoke-static {v6}, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;
:goto_25
packed-switch v0, :pswitch_data_e8
move-object v1, v5
goto :goto_c
:cond_2a
iget v6, p0, Lcom/pinguo/camera360/sony/wifi/AccessPoint;->networkId:I
iput v6, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f
goto :goto_25
:catch_2f
move-exception v2
invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
move-object v1, v5
goto :goto_c
:pswitch_35
:try_start_35
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
goto :goto_c
:pswitch_3c
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;
const/4 v7, 0x0
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
invoke-virtual {p1}, Landroid/widget/EditText;->length()I
move-result v6
if-eqz v6, :cond_c
invoke-virtual {p1}, Landroid/widget/EditText;->length()I
move-result v3
invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v4
const/16 v6, 0xa
if-eq v3, v6, :cond_6c
const/16 v6, 0x1a
if-eq v3, v6, :cond_6c
const/16 v6, 0x3a
if-ne v3, v6, :cond_7b
:cond_6c
const-string/jumbo v6, "[0-9A-Fa-f]*"
invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_7b
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;
const/4 v7, 0x0
aput-object v4, v6, v7
goto :goto_c
:cond_7b
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;
const/4 v7, 0x0
new-instance v8, Ljava/lang/StringBuilder;
const/16 v9, 0x22
invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v9
invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
const/16 v9, 0x22
invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v8
aput-object v8, v6, v7
goto/16 :goto_c
:pswitch_9b
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
const/4 v7, 0x1
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
invoke-virtual {p1}, Landroid/widget/EditText;->length()I
move-result v6
if-eqz v6, :cond_c
invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v6
invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;
move-result-object v4
const-string/jumbo v6, "[0-9A-Fa-f]{64}"
invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_bc
iput-object v4, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
goto/16 :goto_c
:cond_bc
new-instance v6, Ljava/lang/StringBuilder;
const/16 v7, 0x22
invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const/16 v7, 0x22
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;
goto/16 :goto_c
:pswitch_d9
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
const/4 v7, 0x2
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;
const/4 v7, 0x3
invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V
:try_end_e5
.catch Ljava/lang/Exception; {:try_start_35 .. :try_end_e5} :catch_2f
goto/16 :goto_c
nop
:pswitch_data_e8
.packed-switch 0x0
:pswitch_35
:pswitch_3c
:pswitch_9b
:pswitch_d9
.end packed-switch
.end method
.method public static getNetworkInterface(Landroid/net/wifi/WifiManager;)Ljava/net/NetworkInterface;
.registers 8
const/4 v4, 0x0
if-eqz p0, :cond_51
invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
move-result v5
if-eqz v5, :cond_51
invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
move-result-object v5
invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getIpAddress()I
move-result v0
if-eqz v0, :cond_51
new-instance v5, Ljava/lang/StringBuilder;
shr-int/lit8 v6, v0, 0x0
and-int/lit16 v6, v6, 0xff
invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
shr-int/lit8 v6, v0, 0x8
and-int/lit16 v6, v6, 0xff
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
shr-int/lit8 v6, v0, 0x10
and-int/lit16 v6, v6, 0xff
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, "."
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
shr-int/lit8 v6, v0, 0x18
and-int/lit16 v6, v6, 0xff
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
:try_start_51
:cond_51
invoke-static {v4}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
move-result-object v5
invoke-static {v5}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;
:try_end_58
.catch Ljava/net/SocketException; {:try_start_51 .. :try_end_58} :catch_5a
.catch Ljava/net/UnknownHostException; {:try_start_51 .. :try_end_58} :catch_60
move-result-object v1
:goto_59
return-object v1
:catch_5a
move-exception v2
invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V
:goto_5e
const/4 v1, 0x0
goto :goto_59
:catch_60
move-exception v3
invoke-virtual {v3}, Ljava/net/UnknownHostException;->printStackTrace()V
goto :goto_5e
.end method