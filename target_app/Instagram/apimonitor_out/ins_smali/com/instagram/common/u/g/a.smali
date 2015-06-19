.class public final Lcom/instagram/common/u/g/a;
.super Ljava/lang/Object;
.source "NetworkUtil.java"
.method public static a(Landroid/net/NetworkInfo;)Ljava/lang/String;
.registers 5
if-nez p0, :cond_5
const-string v0, "None"
:goto_4
return-object v0
:cond_5
invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
move-result-object v0
goto :goto_4
:cond_14
const-string v0, "%s(%s)"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_4
.end method
.method public static a(Landroid/content/Context;)Z
.registers 2
invoke-static {p0}, Lcom/instagram/common/u/g/a;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_e
invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static b(Landroid/content/Context;)Z
.registers 4
const/4 v0, 0x1
invoke-static {p0}, Lcom/instagram/common/u/g/a;->d(Landroid/content/Context;)Landroid/net/NetworkInfo;
move-result-object v1
if-eqz v1, :cond_14
invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
move-result v2
if-eqz v2, :cond_14
invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I
move-result v1
if-ne v1, v0, :cond_14
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public static c(Landroid/content/Context;)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v3, 0x11
if-lt v2, v3, :cond_17
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "airplane_mode_on"
invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v2
if-eqz v2, :cond_15
:goto_14
:cond_14
return v0
:cond_15
move v0, v1
goto :goto_14
:cond_17
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v2
const-string v3, "airplane_mode_on"
invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
move-result v2
if-nez v2, :cond_14
move v0, v1
goto :goto_14
.end method
.method private static d(Landroid/content/Context;)Landroid/net/NetworkInfo;
.registers 2
const-string v0, "connectivity"
invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
return-object v0
.end method