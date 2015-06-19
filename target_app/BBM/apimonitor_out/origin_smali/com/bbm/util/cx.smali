.class public final Lcom/bbm/util/cx;
.super Ljava/lang/Object;
.source "ProximitySensorUtil.java"


# direct methods
.method public static a(Landroid/os/PowerManager;)Landroid/os/PowerManager$WakeLock;
    .registers 8

    const/4 v1, 0x0

    const-class v2, Landroid/os/PowerManager;

    :try_start_3
    const-string v0, "PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_3c

    move-result v3

    :try_start_d
    const-string v0, "isWakeLockLevelSupported"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_40

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string v0, "bbm"

    invoke-virtual {p0, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3a} :catch_3f

    move-result-object v0

    :goto_3b
    return-object v0

    :catch_3c
    move-exception v0

    move-object v0, v1

    goto :goto_3b

    :catch_3f
    move-exception v0

    :cond_40
    :try_start_40
    const-string v0, "getSupportedWakeLockFlags"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_65

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    and-int/2addr v0, v3

    if-eqz v0, :cond_65

    const-string v0, "bbm"

    invoke-virtual {p0, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_62} :catch_64

    move-result-object v0

    goto :goto_3b

    :catch_64
    move-exception v0

    :cond_65
    move-object v0, v1

    goto :goto_3b
.end method
