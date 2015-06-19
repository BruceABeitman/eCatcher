.class public Lcom/pinguo/lib/util/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static final SDCARD_AVAILABLE:I = 0x0

.field public static final SDCARD_TOTAL:I = 0x1

.field public static final SDCARD_USED:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSDCardSize(I)J
    .registers 13

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    new-instance v7, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v10

    int-to-long v2, v10

    packed-switch p0, :pswitch_data_38

    :goto_17
    return-wide v5

    :pswitch_18
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    mul-long v5, v0, v2

    goto :goto_17

    :pswitch_20
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    mul-long v5, v8, v2

    goto :goto_17

    :pswitch_28
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockCount()I

    move-result v10

    int-to-long v8, v10

    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v10

    int-to-long v0, v10

    sub-long v10, v8, v0

    mul-long v5, v10, v2

    goto :goto_17

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_18
        :pswitch_20
        :pswitch_28
    .end packed-switch
.end method

.method public static getSnrFromIMEI(Landroid/content/Context;)J
    .registers 8

    const/16 v6, 0xe

    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    if-eqz v4, :cond_38

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    :goto_12
    const-wide/16 v0, -0x1

    if-eqz v3, :cond_28

    :try_start_16
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v6, :cond_24

    const/16 v5, 0x9

    const/16 v6, 0xe

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_24
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_27} :catch_3a

    move-result-wide v0

    :cond_28
    :goto_28
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-nez v5, :cond_37

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    :cond_37
    return-wide v0

    :cond_38
    const/4 v3, 0x0

    goto :goto_12

    :catch_3a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_28
.end method

.method public static hasSDCard()Z
    .registers 2

    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static hasSDCard(Landroid/content/Context;)Z
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v1, 0x1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public static isFrontCameraSupported()Z
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    const/4 v0, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_e

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    if-le v1, v0, :cond_e

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isMemoryEnough(Landroid/content/Context;)Z
    .registers 11

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string/jumbo v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-array v7, v5, [I

    aput v4, v7, v6

    invoke-virtual {v2, v7}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    invoke-virtual {v2}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v7

    mul-int/lit16 v3, v7, 0x400

    aget-object v7, v1, v6

    invoke-virtual {v7}, Landroid/os/Debug$MemoryInfo;->getTotalSharedDirty()I

    move-result v0

    const-string/jumbo v7, "Test"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Is memory enough:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v0, :cond_47

    :goto_46
    return v5

    :cond_47
    move v5, v6

    goto :goto_46
.end method
