.class public Lco/vine/android/service/ConnectivityStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityStatusReceiver.java"


# static fields
.field private static sLastTypeChanged:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lco/vine/android/service/ConnectivityStatusReceiver;->sLastTypeChanged:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19

    :try_start_0
    const-string v12, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_4b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v12

    if-eqz v12, :cond_4b

    sget v12, Lco/vine/android/service/ConnectivityStatusReceiver;->sLastTypeChanged:I

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v13

    if-eq v12, v13, :cond_4b

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static/range {p1 .. p1}, Lco/vine/android/util/ClientFlagsHelper;->isClientFlagsTtlInRange(Landroid/content/Context;)Z

    move-result v11

    invoke-static/range {p1 .. p1}, Lco/vine/android/util/ClientFlagsHelper;->getLastCheckMillis(Landroid/content/Context;)J

    move-result-wide v5

    const-wide/32 v9, 0x493e0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v5

    const-wide/32 v14, 0x493e0

    cmp-long v12, v12, v14

    if-gez v12, :cond_54

    const/4 v8, 0x1

    :goto_3a
    if-nez v7, :cond_4b

    invoke-static/range {p1 .. p1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->onMobileDataNetworkActivated()V

    if-nez v11, :cond_4b

    if-nez v8, :cond_4b

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Lco/vine/android/client/AppController;->fetchClientFlags(Z)V

    :cond_4b
    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v12

    :goto_51
    sput v12, Lco/vine/android/service/ConnectivityStatusReceiver;->sLastTypeChanged:I
    :try_end_53
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_53} :catch_58

    :goto_53
    return-void

    :cond_54
    const/4 v8, 0x0

    goto :goto_3a

    :cond_56
    const/4 v12, -0x1

    goto :goto_51

    :catch_58
    move-exception v4

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_53
.end method
