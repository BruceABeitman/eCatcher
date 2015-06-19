.class public Lcom/pinguo/lib/util/SystemUtils;
.super Ljava/lang/Object;
.source "SystemUtils.java"


# static fields
.field public static final ORIENTATION_HYSTERESIS:I = 0x14


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkApkExist(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const-string/jumbo v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    :goto_c
    return v1

    :cond_d
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_c

    :try_start_17
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_20} :catch_22

    const/4 v1, 0x1

    goto :goto_c

    :catch_22
    move-exception v0

    goto :goto_c
.end method

.method private static getAvailableSize(Ljava/lang/String;)J
    .registers 6

    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v3, v3

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method public static getCpuCoresNum()I
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "/sys/devices/system/cpu/"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/pinguo/lib/util/SystemUtils$1CpuFilter;

    invoke-direct {v3}, Lcom/pinguo/lib/util/SystemUtils$1CpuFilter;-><init>()V

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    array-length v3, v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    :goto_12
    return v3

    :catch_13
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x1

    goto :goto_12
.end method

.method public static getCurProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string/jumbo v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v3, 0x0

    :goto_1c
    return-object v3

    :cond_1d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_15

    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_1c
.end method

.method public static getDisplayRotation(Landroid/app/Activity;)I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v0

    packed-switch v0, :pswitch_data_1a

    :goto_10
    :pswitch_10
    return v1

    :pswitch_11
    const/16 v1, 0x5a

    goto :goto_10

    :pswitch_14
    const/16 v1, 0xb4

    goto :goto_10

    :pswitch_17
    const/16 v1, 0x10e

    goto :goto_10

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_12

    const-string/jumbo v0, ""

    :cond_12
    return-object v0
.end method

.method public static getIMSI(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_f

    const-string/jumbo v2, ""

    :goto_e
    return-object v2

    :cond_f
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    const-string/jumbo v2, ""

    goto :goto_e

    :cond_19
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_e
.end method

.method public static getLocationInfo()Ljava/lang/String;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getMCC(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_15

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_15
    return-object v1
.end method

.method public static getMNC(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x5

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v3, :cond_15

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_15
    return-object v1
.end method

.method public static getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string/jumbo v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "wifi"

    :goto_1e
    return-object v2

    :cond_1f
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    goto :goto_1e

    :cond_24
    const/4 v2, 0x0

    goto :goto_1e
.end method

.method public static getSDAvailableSize()J
    .registers 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/lib/util/SystemUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    :goto_19
    return-wide v0

    :cond_1a
    const-wide/16 v0, 0x0

    goto :goto_19
.end method

.method public static getSystemAvailableSize()J
    .registers 2

    const-string/jumbo v0, "/data"

    invoke-static {v0}, Lcom/pinguo/lib/util/SystemUtils;->getAvailableSize(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_1c

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_21

    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    return-object v3

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_13

    :cond_21
    const-string/jumbo v3, ""

    goto :goto_1b
.end method

.method public static getVersionName()Ljava/lang/String;
    .registers 6

    const/4 v2, 0x0

    :try_start_1
    invoke-static {}, Lcom/pinguo/camera360/PgCameraApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x4000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_12} :catch_1c

    move-result-object v2

    :goto_13
    if-eqz v2, :cond_21

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    return-object v3

    :catch_1c
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_13

    :cond_21
    const-string/jumbo v3, ""

    goto :goto_1b
.end method

.method public static hasEnoughMemory(J)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getSDAvailableSize()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-lez v2, :cond_18

    :cond_17
    :goto_17
    return v0

    :cond_18
    move v0, v1

    goto :goto_17

    :cond_1a
    invoke-static {}, Lcom/pinguo/lib/util/SystemUtils;->getSystemAvailableSize()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-gtz v2, :cond_17

    move v0, v1

    goto :goto_17
.end method

.method public static hasNet(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    const-string/jumbo v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v0, 0x1

    :cond_17
    return v0
.end method

.method public static isMainLandUser(Landroid/content/Context;)Z
    .registers 6

    const/4 v4, 0x3

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMSI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_15

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_15
    const-string/jumbo v3, "460"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_2a
    const/4 v2, 0x1

    :cond_2b
    return v2
.end method

.method public static isZh()Z
    .registers 3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static roundOrientation(II)I
    .registers 5

    const/4 v0, 0x0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_10

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_f

    add-int/lit8 v2, p0, 0x2d

    div-int/lit8 v2, v2, 0x5a

    mul-int/lit8 v2, v2, 0x5a

    rem-int/lit16 p1, v2, 0x168

    :cond_f
    return p1

    :cond_10
    sub-int v2, p0, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rsub-int v2, v1, 0x168

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v2, 0x41

    if-lt v1, v2, :cond_22

    const/4 v0, 0x1

    :goto_21
    goto :goto_5

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method
