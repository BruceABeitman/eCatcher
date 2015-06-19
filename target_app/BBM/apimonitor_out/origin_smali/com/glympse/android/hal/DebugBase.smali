.class public Lcom/glympse/android/hal/DebugBase;
.super Ljava/lang/Object;
.source "DebugBase.java"


# static fields
.field public static _fileMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/FileOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private static final aO:Ljava/lang/String; = "GlympseAPI"

.field private static aP:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V
    .registers 9

    const/16 v6, 0xa

    const/4 v1, 0x0

    const-string v0, "\n\nThread Crashed:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    :goto_9
    if-eqz p0, :cond_3e

    if-nez v0, :cond_12

    const-string v0, "Caused by: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_22
    if-ge v0, v3, :cond_38

    aget-object v4, v2, v0

    const-string v5, "\tat "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_38
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    move v0, v1

    goto :goto_9

    :cond_3e
    return-void
.end method

.method public static appendBinaryImages(Ljava/lang/StringBuilder;)V
    .registers 1

    return-void
.end method

.method public static appendCurrentStack(Ljava/lang/StringBuilder;)V
    .registers 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    move-exception v0

    invoke-static {v0, p0}, Lcom/glympse/android/hal/DebugBase;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public static appendPathToFile(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-static {p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static appendReport(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .registers 16

    const/4 v10, -0x1

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    :try_start_6
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v2, "\nApp Package:       "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nApp Version:       "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nApp Build:         "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_31} :catch_2b9

    :goto_31
    :try_start_31
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    if-nez v4, :cond_256

    move-object v2, v1

    :goto_38
    if-nez v4, :cond_25c

    move-object v0, v1

    :goto_3b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_48

    const-string v2, "??"

    :cond_48
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const-string v0, "??"

    :cond_5a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_61} :catch_268

    move-result-object v2

    if-nez v4, :cond_262

    move-object v0, v1

    :goto_65
    move-object v11, v2

    move-object v12, v0

    :goto_67
    :try_start_67
    const-string v0, "phone"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_67 .. :try_end_6f} :catch_29b

    if-eqz v0, :cond_2c2

    :try_start_71
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_26e

    move-result v4

    :goto_75
    :try_start_75
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I
    :try_end_78
    .catch Ljava/lang/Throwable; {:try_start_75 .. :try_end_78} :catch_272

    move-result v3

    :goto_79
    :try_start_79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_276

    move-result v2

    :goto_7d
    :try_start_7d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_80
    .catch Ljava/lang/Throwable; {:try_start_7d .. :try_end_80} :catch_27a

    move-result-object v9

    :goto_81
    :try_start_81
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_84} :catch_27e

    move-result-object v8

    :goto_85
    :try_start_85
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_88
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_88} :catch_282

    move-result-object v7

    :goto_89
    :try_start_89
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_89 .. :try_end_8c} :catch_286

    move-result-object v6

    :goto_8d
    :try_start_8d
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;
    :try_end_90
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_90} :catch_28a

    move-result-object v5

    :goto_91
    :try_start_91
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_28e

    move-result-object v0

    move v13, v2

    move-object v2, v5

    move-object v5, v8

    move v8, v4

    move-object v4, v7

    move v7, v3

    move-object v3, v6

    move-object v6, v9

    move v9, v13

    :goto_9e
    if-eq v10, v8, :cond_2bf

    :try_start_a0
    invoke-static {v8}, Lcom/glympse/android/hal/DebugBase;->getTelephonyManagerPhoneTypeString(I)Ljava/lang/String;
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_a3} :catch_2ad

    move-result-object v8

    :goto_a4
    if-eq v10, v7, :cond_2bc

    :try_start_a6
    invoke-static {v7}, Lcom/glympse/android/hal/DebugBase;->getTelephonyManagerNetworkTypeString(I)Ljava/lang/String;
    :try_end_a9
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_a9} :catch_2b1

    move-result-object v7

    :goto_aa
    if-eq v10, v9, :cond_b0

    :try_start_ac
    invoke-static {v9}, Lcom/glympse/android/hal/DebugBase;->getTelephonyManagerSimStateString(I)Ljava/lang/String;
    :try_end_af
    .catch Ljava/lang/Throwable; {:try_start_ac .. :try_end_af} :catch_2b4

    move-result-object v1

    :cond_b0
    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v13

    :goto_b7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "\nLocale Name:       "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nLocale Code:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v11}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nRelease Ver:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nSDK Ver:           "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nIncremental Ver:   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Brand:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Model:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Board:       "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Device:      "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Display:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Fingerprint: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Host:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild ID:          "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Product:     "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Tags:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Time:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Landroid/os/Build;->TIME:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild Type:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nBuild User:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-static {v10}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\nPhone Type:        "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nNetwork Type:      "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\nSim State:         "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nSim Country:       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nSim Operator:      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nSim Operator Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nNet Country:       "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nNet Operator:      "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nNet Operator Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->safeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_256
    :try_start_256
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_38

    :cond_25c
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_256 .. :try_end_25f} :catch_268

    move-result-object v0

    goto/16 :goto_3b

    :cond_262
    :try_start_262
    invoke-virtual {v4}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;
    :try_end_265
    .catch Ljava/lang/Throwable; {:try_start_262 .. :try_end_265} :catch_2b6

    move-result-object v0

    goto/16 :goto_65

    :catch_268
    move-exception v0

    move-object v0, v1

    :goto_26a
    move-object v11, v0

    move-object v12, v1

    goto/16 :goto_67

    :catch_26e
    move-exception v2

    move v4, v10

    goto/16 :goto_75

    :catch_272
    move-exception v2

    move v3, v10

    goto/16 :goto_79

    :catch_276
    move-exception v2

    move v2, v10

    goto/16 :goto_7d

    :catch_27a
    move-exception v5

    move-object v9, v1

    goto/16 :goto_81

    :catch_27e
    move-exception v5

    move-object v8, v1

    goto/16 :goto_85

    :catch_282
    move-exception v5

    move-object v7, v1

    goto/16 :goto_89

    :catch_286
    move-exception v5

    move-object v6, v1

    goto/16 :goto_8d

    :catch_28a
    move-exception v5

    move-object v5, v1

    goto/16 :goto_91

    :catch_28e
    move-exception v0

    move-object v0, v1

    move v13, v3

    move-object v3, v6

    move-object v6, v9

    move v9, v2

    move-object v2, v5

    move-object v5, v8

    move v8, v4

    move-object v4, v7

    move v7, v13

    goto/16 :goto_9e

    :catch_29b
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    move-object v8, v1

    :goto_2a4
    move-object v13, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v1

    move-object v1, v13

    goto/16 :goto_b7

    :catch_2ad
    move-exception v7

    move-object v7, v1

    move-object v8, v1

    goto :goto_2a4

    :catch_2b1
    move-exception v7

    move-object v7, v1

    goto :goto_2a4

    :catch_2b4
    move-exception v9

    goto :goto_2a4

    :catch_2b6
    move-exception v0

    move-object v0, v2

    goto :goto_26a

    :catch_2b9
    move-exception v0

    goto/16 :goto_31

    :cond_2bc
    move-object v7, v1

    goto/16 :goto_aa

    :cond_2bf
    move-object v8, v1

    goto/16 :goto_a4

    :cond_2c2
    move v9, v10

    move v7, v10

    move v8, v10

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    goto/16 :goto_9e
.end method

.method public static closeAllFiles()V
    .registers 2

    sget-object v0, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->e(Ljava/lang/String;)V

    goto :goto_e

    :cond_1e
    return-void
.end method

.method public static deleteFile(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-static {p1}, Lcom/glympse/android/hal/DebugBase;->e(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_b

    :goto_a
    return-void

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static dumpBundle(Landroid/os/Bundle;)V
    .registers 12

    const/4 v3, 0x0

    const/4 v10, 0x2

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v0

    if-le v0, v10, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "-=- BUNDLE -=-"

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    if-nez p0, :cond_16

    const-string v0, "Bundle: null"

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_8

    :cond_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "describeContents: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasFileDescriptors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->hasFileDescriptors()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7a
    :goto_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, [Ljava/lang/Object;

    if-eqz v2, :cond_c5

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v7, v1

    move v2, v3

    move v4, v3

    :goto_95
    if-ge v2, v7, :cond_7a

    aget-object v8, v1, v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "Key: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "["

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, "], Value: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_95

    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Key: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_7a
.end method

.method public static dumpCursor(Landroid/database/Cursor;)V
    .registers 7

    const/4 v1, 0x2

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v0

    if-le v0, v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v0, "-=- CURSOR -=-"

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    if-nez p0, :cond_15

    const-string v0, "Cursor: null"

    invoke-static {v1, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_7

    :cond_15
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    :goto_19
    if-eqz v0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_24
    if-ge v0, v2, :cond_62

    const/4 v3, 0x2

    :try_start_27
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_5f} :catch_70

    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_62
    invoke-interface {p0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->dumpBundle(Landroid/os/Bundle;)V

    :cond_6b
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    goto :goto_19

    :catch_70
    move-exception v3

    goto :goto_5f
.end method

.method public static dumpIntent(Landroid/content/Intent;)V
    .registers 6

    const/4 v4, 0x2

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v0

    if-le v0, v4, :cond_8

    :goto_7
    return-void

    :cond_8
    const-string v0, "-=- INTENT -=-"

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    if-nez p0, :cond_15

    const-string v0, "Intent: null"

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_7

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "toURI: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "describeContents: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAction: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDataString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getFlags: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getScheme: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getType: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getComponent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getData: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hasFileDescriptors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1dd

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.describeContents: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->describeContents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.flattenToShortString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.flattenToString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.getClassName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.getPackageName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.getShortClassName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.toShortString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ComponentName.toString: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :cond_1dd
    invoke-virtual {p0}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_208

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Category: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    goto :goto_1e9

    :cond_208
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->dumpBundle(Landroid/os/Bundle;)V

    goto/16 :goto_7
.end method

.method private static e(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_10

    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_10} :catch_11

    :cond_10
    :goto_10
    return-void

    :catch_11
    move-exception v0

    goto :goto_10
.end method

.method public static extractExceptionString(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\nException name:    "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_11

    const-string v0, "???"

    :cond_11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nException what:    "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_24

    const-string v0, "???"

    :goto_1d
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/glympse/android/hal/DebugBase;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    return-void

    :cond_24
    move-object v0, v1

    goto :goto_1d
.end method

.method public static flushAllLogs()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_a

    :catch_22
    move-exception v0

    :cond_23
    return-void
.end method

.method public static getCurrentTU()J
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFileSize(Landroid/content/Context;Ljava/lang/String;)J
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/glympse/android/hal/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTelephonyManagerNetworkTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_38

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "UNKNOWN"

    goto :goto_7

    :pswitch_b
    const-string v0, "GPRS"

    goto :goto_7

    :pswitch_e
    const-string v0, "EDGE"

    goto :goto_7

    :pswitch_11
    const-string v0, "UMTS"

    goto :goto_7

    :pswitch_14
    const-string v0, "CDMA"

    goto :goto_7

    :pswitch_17
    const-string v0, "EVDO_0"

    goto :goto_7

    :pswitch_1a
    const-string v0, "EVDO_A"

    goto :goto_7

    :pswitch_1d
    const-string v0, "1xRTT"

    goto :goto_7

    :pswitch_20
    const-string v0, "HSDPA"

    goto :goto_7

    :pswitch_23
    const-string v0, "HSUPA"

    goto :goto_7

    :pswitch_26
    const-string v0, "HSPA"

    goto :goto_7

    :pswitch_29
    const-string v0, "IDEN"

    goto :goto_7

    :pswitch_2c
    const-string v0, "EVDO_B"

    goto :goto_7

    :pswitch_2f
    const-string v0, "LTE"

    goto :goto_7

    :pswitch_32
    const-string v0, "EHRPD"

    goto :goto_7

    :pswitch_35
    const-string v0, "HSPA+"

    goto :goto_7

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
        :pswitch_32
        :pswitch_35
    .end packed-switch
.end method

.method public static getTelephonyManagerPhoneTypeString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_14

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "None"

    goto :goto_7

    :pswitch_b
    const-string v0, "GSM"

    goto :goto_7

    :pswitch_e
    const-string v0, "CDMA"

    goto :goto_7

    :pswitch_11
    const-string v0, "SIP"

    goto :goto_7

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
    .end packed-switch
.end method

.method public static getTelephonyManagerSimStateString(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_1a

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_7
    return-object v0

    :pswitch_8
    const-string v0, "UNKNOWN"

    goto :goto_7

    :pswitch_b
    const-string v0, "ABSENT"

    goto :goto_7

    :pswitch_e
    const-string v0, "PIN_REQUIRED"

    goto :goto_7

    :pswitch_11
    const-string v0, "PUK_REQUIRED"

    goto :goto_7

    :pswitch_14
    const-string v0, "NETWORK_LOCKED"

    goto :goto_7

    :pswitch_17
    const-string v0, "READY"

    goto :goto_7

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static httpUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/glympse/android/hal/w;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/DebugBase;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-static {v3, v0}, Lcom/glympse/android/hal/ae;->a(Ljava/net/URL;Ljava/net/HttpURLConnection;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    const v3, 0x2bf20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const v3, 0x2bf20

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setAllowUserInteraction(Z)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v3, "Content-Type"

    const-string v4, "text/plain; charset=utf-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    const v4, 0xa000

    new-array v4, v4, [B

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_63
    invoke-virtual {v5}, Ljava/io/FileInputStream;->available()I

    move-result v2

    if-lez v2, :cond_77

    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_77

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_63

    :catch_74
    move-exception v0

    move v0, v1

    :goto_76
    return v0

    :cond_77
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_87} :catch_74

    move v0, v1

    goto :goto_76
.end method

.method public static isOnWifi(Landroid/content/Context;)Z
    .registers 3

    const/4 v1, 0x1

    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {p0, v0}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    :goto_19
    return v0

    :cond_1a
    move v0, v1

    goto :goto_19
.end method

.method public static logDiagnostics(Landroid/content/Context;)V
    .registers 17

    invoke-static/range {p0 .. p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    :cond_b
    :goto_b
    return-void

    :cond_c
    :try_start_c
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_46

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DIAG: Development Settings Enabled: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "development_settings_enabled"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "DIAG: Always finish activities: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "always_finish_activities"

    const/4 v5, -0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V

    :cond_46
    const/4 v1, 0x0

    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_1de

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v2

    if-eqz v2, :cond_a0

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "DIAG: reqGlEsVersion:0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v2, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqInputFeatures:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqKeyboardType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqNavigation:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reqTouchScreen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v2, v2, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V

    :cond_a0
    const/4 v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "DIAG: Memory classes: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->getMemoryClass(Landroid/app/ActivityManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->getLargeMemoryClass(Landroid/app/ActivityManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "M"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1de

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1de

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_101

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->emptyIfNull([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v5, v0

    const/4 v2, 0x0

    :goto_f6
    if-ge v2, v5, :cond_e0

    aget-object v6, v0, v2

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f6

    :cond_101
    move-object v4, v1

    :goto_102
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->emptyIfNull(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v0

    :goto_126
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_PackageInfo;->firstInstallTime(Landroid/content/pm/PackageInfo;)J

    move-result-wide v8

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_PackageInfo;->lastUpdateTime(Landroid/content/pm/PackageInfo;)J

    move-result-wide v10

    if-eqz v4, :cond_1b8

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b8

    const/4 v1, 0x1

    :goto_149
    const-string v3, "PKG[%04d] R: %s, N: %s, B: %d, I: %s, U: %s, P: "

    const/4 v12, 0x6

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    if-eqz v1, :cond_1ba

    const-string v1, "Y"

    :goto_15c
    aput-object v1, v12, v13

    const/4 v1, 0x2

    iget-object v13, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    aput-object v13, v12, v1

    const/4 v1, 0x3

    iget v13, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v1

    const/4 v13, 0x4

    const-wide/16 v14, 0x0

    cmp-long v1, v8, v14

    if-lez v1, :cond_1bd

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_17c
    aput-object v1, v12, v13

    const/4 v8, 0x5

    const-wide/16 v13, 0x0

    cmp-long v1, v10, v13

    if-lez v1, :cond_1c0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    :goto_18e
    aput-object v1, v12, v8

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v8, :cond_1c3

    const/4 v3, 0x1

    array-length v9, v8

    const/4 v1, 0x0

    :goto_19e
    if-ge v1, v9, :cond_1c3

    aget-object v10, v8, v1

    if-nez v3, :cond_1a9

    const-string v3, " | "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a9
    const-string v3, "android.permission."

    const-string v11, ""

    invoke-virtual {v10, v3, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_19e

    :cond_1b8
    const/4 v1, 0x0

    goto :goto_149

    :cond_1ba
    const-string v1, "n"

    goto :goto_15c

    :cond_1bd
    const-string v1, "unknown"

    goto :goto_17c

    :cond_1c0
    const-string v1, "unknown"

    goto :goto_18e

    :cond_1c3
    const-string v1, ", V: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V
    :try_end_1d5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_1d5} :catch_1d7

    goto/16 :goto_126

    :catch_1d7
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto/16 :goto_b

    :cond_1de
    move-object v4, v1

    goto/16 :goto_102
.end method

.method public static logDiagnosticsOnBackgroundThread(Landroid/content/Context;)V
    .registers 4

    invoke-static {p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_14

    const-wide/16 v0, 0x0

    new-instance v2, Lcom/glympse/android/hal/DebugBase$1;

    invoke-direct {v2}, Lcom/glympse/android/hal/DebugBase$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/glympse/android/hal/DebugBase;->runInBackground(JLjava/lang/Runnable;)V

    :cond_14
    return-void
.end method

.method public static logMemory(Landroid/content/Context;)V
    .registers 11

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p0}, Lcom/glympse/android/hal/t;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_17e

    invoke-static {}, Lcom/glympse/android/lib/Debug;->getLevel()I

    move-result v1

    if-gt v1, v9, :cond_17e

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x140

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_15
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MEM: SysTotal: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/glympse/android/hal/Reflection$_ActivityManager_MemoryInfo;->totalMem(Landroid/app/ActivityManager$MemoryInfo;)J

    move-result-wide v4

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, SysFree: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, SysThreshold: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, SysLow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v2, v2, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    aput v4, v2, v3

    invoke-static {v0, v2}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->getProcessMemoryInfo(Landroid/app/ActivityManager;[I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v2

    if-eqz v2, :cond_143

    array-length v3, v2

    if-lez v3, :cond_143

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ", Dalvik PD/PSS/SD: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->dalvikPrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->dalvikPss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->dalvikSharedDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, Native PD/PSS/SD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->nativePrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->nativePss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->nativeSharedDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, Other PD/PSS/SD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->otherPrivateDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->otherPss:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iget v4, v4, Landroid/os/Debug$MemoryInfo;->otherSharedDirty:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K, Total PD/PSS/SD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->getTotalPrivateDirty(Landroid/os/Debug$MemoryInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->getTotalPss(Landroid/os/Debug$MemoryInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "K / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/glympse/android/hal/Reflection$_Debug_MemoryInfo;->getTotalSharedDirty(Landroid/os/Debug$MemoryInfo;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_143
    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager;)Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-result-object v0

    if-eqz v0, :cond_177

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", Importance: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/glympse/android/hal/Reflection$_RunningAppProcessInfo;->importanceReasonCode(Landroid/app/ActivityManager$RunningAppProcessInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LRU: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_177
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_177} :catch_17f

    :cond_177
    :goto_177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/glympse/android/hal/DebugBase;->logSpecial(ILjava/lang/String;)V

    :cond_17e
    return-void

    :catch_17f
    move-exception v0

    invoke-static {v0, v8}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_177
.end method

.method public static logSpecial(ILjava/lang/String;)V
    .registers 3

    sget-boolean v0, Lcom/glympse/android/hal/DebugBase;->aP:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_5
    or-int/2addr v0, p0

    invoke-static {v0, p1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    return-void

    :cond_a
    const/high16 v0, 0x1

    goto :goto_5
.end method

.method public static originInGlympseCode(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.glympse"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static putMetric(JJLjava/lang/Object;)V
    .registers 5

    return-void
.end method

.method public static runInBackground(JLjava/lang/Runnable;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/glympse/android/hal/v;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/glympse/android/hal/v;-><init>(JLjava/lang/Runnable;Lcom/glympse/android/hal/DebugBase$1;)V

    invoke-virtual {v0}, Lcom/glympse/android/hal/v;->start()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_9} :catch_a

    :goto_9
    return-void

    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method public static runInBackground(Ljava/lang/Runnable;)V
    .registers 3

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1, p0}, Lcom/glympse/android/hal/DebugBase;->runInBackground(JLjava/lang/Runnable;)V

    return-void
.end method

.method public static setDebugMode(Z)V
    .registers 1

    sput-boolean p0, Lcom/glympse/android/hal/DebugBase;->aP:Z

    return-void
.end method

.method public static showDebugView(Ljava/lang/Object;)V
    .registers 1

    return-void
.end method

.method public static writeConsole(ZLjava/lang/String;)V
    .registers 3

    if-eqz p0, :cond_8

    const-string v0, "GlympseAPI"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void

    :cond_8
    const-string v0, "GlympseAPI"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method public static writeTextFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p3, :cond_31

    :try_start_5
    invoke-static {p1}, Lcom/glympse/android/hal/DebugBase;->e(Ljava/lang/String;)V

    :goto_8
    if-nez v0, :cond_27

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move v3, v2

    :goto_19
    new-instance v0, Ljava/io/FileOutputStream;

    if-eqz v3, :cond_3a

    if-eqz p3, :cond_3a

    :goto_1f
    invoke-direct {v0, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    :goto_30
    return-void

    :cond_31
    sget-object v0, Lcom/glympse/android/hal/DebugBase;->_fileMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/FileOutputStream;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_39} :catch_3c

    goto :goto_8

    :cond_3a
    move v1, v2

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_30

    :cond_3e
    move v3, v1

    goto :goto_19
.end method
