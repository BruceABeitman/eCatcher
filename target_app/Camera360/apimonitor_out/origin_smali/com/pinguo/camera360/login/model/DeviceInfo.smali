.class public Lcom/pinguo/camera360/login/model/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field public static DENSITY:F = 0.0f

.field public static DEVICE_DPI:I = 0x0

.field public static DEVICE_IMEI:Ljava/lang/String; = null

.field public static DEVICE_LOCATION:Ljava/lang/String; = null

.field public static DEVICE_MAC:Ljava/lang/String; = null

.field public static DEVICE_SCREEN_HEIGHT:I = 0x0

.field public static DEVICE_SCREEN_WIDTH:I = 0x0

.field public static DEVICE_TYPE:Ljava/lang/String; = null

.field public static final SOFTWARE_NAME:Ljava/lang/String; = "Camera360"

.field public static SOFTWARE_VERSION:Ljava/lang/String; = null

.field public static final STATIC_SYSTEM:Ljava/lang/String; = "android"

.field public static SYSTEM_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_TYPE:Ljava/lang/String;

    sput v1, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_SCREEN_WIDTH:I

    sput v1, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_SCREEN_HEIGHT:I

    const/16 v0, 0xa0

    sput v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_DPI:I

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_MAC:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->SOFTWARE_VERSION:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->SYSTEM_VERSION:Ljava/lang/String;

    const/high16 v0, 0x3f80

    sput v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DENSITY:F

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_IMEI:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_LOCATION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initDevice(Landroid/content/Context;)V
    .registers 12

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_TYPE:Ljava/lang/String;

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v9, "window"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v9, v4, Landroid/util/DisplayMetrics;->density:F

    sput v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DENSITY:F

    iget v9, v4, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_DPI:I

    iget v9, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_SCREEN_WIDTH:I

    iget v9, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_SCREEN_HEIGHT:I

    const-string/jumbo v9, "wifi"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_88

    const/4 v2, 0x0

    :goto_35
    if-eqz v2, :cond_3d

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_MAC:Ljava/lang/String;

    :cond_3d
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_41
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x2240

    invoke-virtual {v6, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->SOFTWARE_VERSION:Ljava/lang/String;
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_41 .. :try_end_53} :catch_8d

    :goto_53
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->SYSTEM_VERSION:Ljava/lang/String;

    invoke-static {p0}, Lcom/pinguo/lib/util/SystemUtils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_IMEI:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/pinguo/camera360/login/model/DeviceInfo;->DEVICE_LOCATION:Ljava/lang/String;

    return-void

    :cond_88
    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    goto :goto_35

    :catch_8d
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_53
.end method
