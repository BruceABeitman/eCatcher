.class public Lcom/pinguo/camera360/push/utils/NetWorkHelper;
.super Ljava/lang/Object;
.source "NetWorkHelper.java"
.field public static final TYPE_CMWAP:I = 0x10001
.field public static final TYPE_CTWAP:I = 0x10002
.field public static final TYPE__777:I = 0x10003
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static hasInternet(Landroid/content/Context;)Z
.registers 5
const/4 v2, 0x0
const-string/jumbo v3, "connectivity"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
move-result v3
if-eqz v3, :cond_17
const/4 v2, 0x1
:cond_17
return v2
.end method
.method public static isWIFI(Landroid/content/Context;)Z
.registers 5
const/4 v2, 0x0
const-string/jumbo v3, "connectivity"
invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/net/ConnectivityManager;
const/4 v3, 0x1
invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_1e
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v3
if-eqz v3, :cond_1e
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v3
if-eqz v3, :cond_1e
const/4 v2, 0x1
:cond_1e
return v2
.end method