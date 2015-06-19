.class public Lcom/instagram/b/a/a;
.super Ljava/lang/Object;
.source "DeviceInformationHelper.java"


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Lcom/instagram/b/a/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/pm/PackageManager;

.field private final d:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/instagram/b/a/a;

    sput-object v0, Lcom/instagram/b/a/a;->a:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/b/a/a;->c:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    :try_start_1
    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_6} :catch_d

    move-result v0

    :goto_7
    packed-switch v0, :pswitch_data_1e

    const-string v0, "UNKNOWN"

    :goto_c
    return-object v0

    :catch_d
    move-exception v1

    sget-object v1, Lcom/instagram/b/a/a;->a:Ljava/lang/Class;

    goto :goto_7

    :pswitch_11
    const-string v0, "CDMA"

    goto :goto_c

    :pswitch_14
    const-string v0, "GSM"

    goto :goto_c

    :pswitch_17
    const-string v0, "SIP"

    goto :goto_c

    :pswitch_1a
    const-string v0, "NONE"

    goto :goto_c

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_14
        :pswitch_11
        :pswitch_17
    .end packed-switch
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2

    packed-switch p0, :pswitch_data_34

    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    :pswitch_6
    const-string v0, "1xRTT"

    goto :goto_5

    :pswitch_9
    const-string v0, "CDMA"

    goto :goto_5

    :pswitch_c
    const-string v0, "EDGE"

    goto :goto_5

    :pswitch_f
    const-string v0, "EHRPD"

    goto :goto_5

    :pswitch_12
    const-string v0, "EVDO_0"

    goto :goto_5

    :pswitch_15
    const-string v0, "EVDO_A"

    goto :goto_5

    :pswitch_18
    const-string v0, "EVDO_B"

    goto :goto_5

    :pswitch_1b
    const-string v0, "GPRS"

    goto :goto_5

    :pswitch_1e
    const-string v0, "HSDPA"

    goto :goto_5

    :pswitch_21
    const-string v0, "HSPA"

    goto :goto_5

    :pswitch_24
    const-string v0, "HSPAP"

    goto :goto_5

    :pswitch_27
    const-string v0, "HSUPA"

    goto :goto_5

    :pswitch_2a
    const-string v0, "IDEN"

    goto :goto_5

    :pswitch_2d
    const-string v0, "LTE"

    goto :goto_5

    :pswitch_30
    const-string v0, "UMTS"

    goto :goto_5

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_c
        :pswitch_30
        :pswitch_9
        :pswitch_12
        :pswitch_15
        :pswitch_6
        :pswitch_1e
        :pswitch_27
        :pswitch_21
        :pswitch_2a
        :pswitch_18
        :pswitch_2d
        :pswitch_f
        :pswitch_24
    .end packed-switch
.end method

.method private b(Lcom/instagram/common/analytics/b;)V
    .registers 4

    new-instance v0, Lcom/facebook/d/d/c;

    iget-object v1, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/d/d/c;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android.channel"

    invoke-virtual {v0, v1}, Lcom/facebook/d/d/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "distribution_channel"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    return-void
.end method

.method private c(Lcom/instagram/common/analytics/b;)V
    .registers 4

    const-string v0, "app_store_package_name"

    iget-object v1, p0, Lcom/instagram/b/a/a;->c:Landroid/content/pm/PackageManager;

    invoke-static {v1}, Lcom/instagram/common/u/d/a;->b(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    return-void
.end method

.method private d(Lcom/instagram/common/analytics/b;)V
    .registers 5

    const-string v0, "user_installed_app"

    iget-object v1, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    const-string v0, "system_app"

    :cond_10
    :goto_10
    const-string v1, "app_install_type"

    invoke-virtual {p1, v1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    return-void

    :cond_16
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_10

    const-string v0, "updated_system_app"

    goto :goto_10
.end method

.method private e(Lcom/instagram/common/analytics/b;)V
    .registers 4

    const-string v0, "carrier"

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "carrier_country_iso"

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "network_type"

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    invoke-static {v1}, Lcom/instagram/b/a/a;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "phone_type"

    invoke-direct {p0}, Lcom/instagram/b/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "sim_country_iso"

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    iget-object v0, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4f

    const-string v0, "sim_operator"

    iget-object v1, p0, Lcom/instagram/b/a/a;->d:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :cond_4f
    return-void
.end method

.method private f(Lcom/instagram/common/analytics/b;)V
    .registers 6

    const-string v0, "device_type"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "os_type"

    const-string v1, "Android"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "os_ver"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "cpu_abi"

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    const-string v0, "cpu_abi2"

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    :try_start_3b
    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_4c} :catch_6a

    :goto_4c
    const-string v0, "density"

    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v2

    invoke-virtual {p1, v0, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;D)Lcom/instagram/common/analytics/b;

    const-string v0, "density_dpi"

    iget v2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    const-string v0, "screen_width"

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1, v0, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    const-string v0, "screen_height"

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    return-void

    :catch_6a
    move-exception v0

    sget-object v0, Lcom/instagram/b/a/a;->a:Ljava/lang/Class;

    goto :goto_4c
.end method

.method private g(Lcom/instagram/common/analytics/b;)V
    .registers 8

    const-wide/32 v4, 0x100000

    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "internal_total_space_in_mb"

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    const-string v1, "internal_usable_space_in_mb"

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    iget-object v0, p0, Lcom/instagram/b/a/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v1, "external_total_space_in_mb"

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    const-string v1, "external_usable_space_in_mb"

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;J)Lcom/instagram/common/analytics/b;

    :cond_39
    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/analytics/b;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->c(Lcom/instagram/common/analytics/b;)V

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->e(Lcom/instagram/common/analytics/b;)V

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->f(Lcom/instagram/common/analytics/b;)V

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->d(Lcom/instagram/common/analytics/b;)V

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->b(Lcom/instagram/common/analytics/b;)V

    invoke-direct {p0, p1}, Lcom/instagram/b/a/a;->g(Lcom/instagram/common/analytics/b;)V

    return-void
.end method
