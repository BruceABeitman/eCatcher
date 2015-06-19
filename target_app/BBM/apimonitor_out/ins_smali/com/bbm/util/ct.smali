.class public final Lcom/bbm/util/ct;
.super Ljava/lang/Object;
.source "NetworkUtil.java"
.method public static a(I)Ljava/net/InetAddress;
.registers 4
const/4 v0, 0x4
new-array v0, v0, [B
const/4 v1, 0x0
and-int/lit16 v2, p0, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x1
shr-int/lit8 v2, p0, 0x8
and-int/lit16 v2, v2, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x2
shr-int/lit8 v2, p0, 0x10
and-int/lit16 v2, v2, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
const/4 v1, 0x3
shr-int/lit8 v2, p0, 0x18
and-int/lit16 v2, v2, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
:try_start_21
invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;
:try_end_24
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_26
move-result-object v0
:goto_25
return-object v0
:catch_26
move-exception v0
const/4 v0, 0x0
goto :goto_25
.end method
.method public static a(Landroid/content/Context;)Z
.registers 2
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_16
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public static b(Landroid/content/Context;)Ljava/lang/String;
.registers 7
const/4 v5, 0x3
const/4 v4, 0x0
const-string v1, ""
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
move-result v2
const/4 v3, 0x5
if-ne v2, v3, :cond_3c
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_3c
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_31
const-string v1, "Retrieved Home MCC and MNC: %s."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-object v0
:cond_3c
move-object v0, v1
goto :goto_31
.end method
.method public static c(Landroid/content/Context;)Ljava/lang/String;
.registers 7
const/4 v5, 0x3
const/4 v4, 0x0
const-string v1, ""
const-string v0, "phone"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/telephony/TelephonyManager;
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
move-result v2
const/4 v3, 0x5
if-ne v2, v3, :cond_3c
invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_3c
invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
const-string v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_31
const-string v1, "Retrieved Current MCC and MNC: %s."
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-object v0
:cond_3c
move-object v0, v1
goto :goto_31
.end method