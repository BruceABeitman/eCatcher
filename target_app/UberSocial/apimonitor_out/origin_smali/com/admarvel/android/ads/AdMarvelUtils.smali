.class public Lcom/admarvel/android/ads/AdMarvelUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ADMARVEL_ADAPTER_GUID:Ljava/lang/String; = "ADMARVELGUID"

.field static final AD_HISTORY_AD_DUMP_DELAY:I = 0x3e8

.field static final AD_HISTORY_REDIRECTED_PAGE_DUMP_DELAY:I = 0xbb8

.field private static AdmarvelActivityOrientationInfo:Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo; = null

.field public static final PATH:Ljava/lang/String; = "/data/com.admarvel.android.admarvelcachedads"

.field private static adMarvelOptionalFlags:Ljava/util/Map;

.field private static enableLogging:Z

.field private static isLogDumpEnabled:Z

.field private static notificationBarInFullScreenLaunchEnabled:Z


# instance fields
.field private contextReference:Ljava/lang/ref/WeakReference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->enableLogging:Z

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->notificationBarInFullScreenLaunchEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/admarvel/android/ads/AdMarvelUtils;->AdmarvelActivityOrientationInfo:Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelUtils;->contextReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static appendParams(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static captureTargetingParams(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1}, Lcom/admarvel/android/ads/ab;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableLogDump()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    return-void
.end method

.method public static enableLogDump()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    return-void
.end method

.method public static enableLogging(Z)V
    .registers 1

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelUtils;->enableLogging:Z

    return-void
.end method

.method public static enableNotificationBarInFullScreenLaunch(Z)V
    .registers 1

    sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelUtils;->notificationBarInFullScreenLaunchEnabled:Z

    return-void
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAdMarvelOptionalFlags()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils;->adMarvelOptionalFlags:Ljava/util/Map;

    return-object v0
.end method

.method public static getAdmarvelActivityOrientationInfo(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils;->AdmarvelActivityOrientationInfo:Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/admarvel/android/ads/AdMarvelUtils$1;->a:[I

    sget-object v1, Lcom/admarvel/android/ads/AdMarvelUtils;->AdmarvelActivityOrientationInfo:Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;

    invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_32

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return-object v0

    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :pswitch_19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :pswitch_1f
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :pswitch_26
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :pswitch_2d
    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->e(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_12

    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_13
        :pswitch_19
        :pswitch_1f
        :pswitch_26
        :pswitch_2d
    .end packed-switch
.end method

.method public static getAndroidSDKVersion()I
    .registers 1

    invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I

    move-result v0

    return v0
.end method

.method public static getDeviceConnectivitiy(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceHeight(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->h(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getDeviceWidth(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->g(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getErrorCode(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I

    move-result v0

    return v0
.end method

.method public static getErrorReason(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getPreferenceValueBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceValueInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const/high16 v2, -0x8000

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_10

    move-result v0

    monitor-exit v1

    return v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .registers 7

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/32 v2, -0x80000000

    invoke-interface {v0, p2, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_11

    move-result-wide v2

    monitor-exit v1

    return-wide v2

    :catchall_11
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getPreferenceValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "VALUE_NOT_DEFINED"

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_10

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.4.5.1"

    return-object v0
.end method

.method public static getSDKVersionDate()Ljava/lang/String;
    .registers 1

    const-string v0, "2014-07-28"

    return-object v0
.end method

.method public static getSupportedInterfaceOrientations(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->a(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserAgent(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/admarvel/android/ads/ab;

    invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isLogDumpEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    return v0
.end method

.method public static isLoggingEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->enableLogging:Z

    return v0
.end method

.method public static final isNetworkAvailable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationBarInFullScreenLaunchEnabled()Z
    .registers 1

    sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelUtils;->notificationBarInFullScreenLaunchEnabled:Z

    return v0
.end method

.method public static isTabletDevice(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x258

    if-ge v2, v3, :cond_10

    :cond_f
    :goto_f
    return v0

    :cond_10
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v3, v1

    mul-float/2addr v2, v2

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Screen Size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/high16 v3, 0x401a

    cmpl-double v1, v1, v3

    if-lez v1, :cond_f

    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static lockAdMarvelActivityOrientation(Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;)V
    .registers 1

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelUtils;->AdmarvelActivityOrientationInfo:Lcom/admarvel/android/ads/AdMarvelUtils$AdmarvelOrientationInfo;

    return-void
.end method

.method public static reportAdMarvelAdHistory(ILandroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-static {p1}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    if-eqz v1, :cond_14

    invoke-static {p1}, Lcom/admarvel/android/util/a;->b(Landroid/content/Context;)Lcom/admarvel/android/util/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/admarvel/android/util/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_14
    return-object v0
.end method

.method public static reportAdMarvelAdHistory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-boolean v1, Lcom/admarvel/android/ads/AdMarvelUtils;->isLogDumpEnabled:Z

    if-eqz v1, :cond_16

    invoke-static {p0}, Lcom/admarvel/android/util/a;->b(Landroid/content/Context;)Lcom/admarvel/android/util/a;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/admarvel/android/util/a;->a(I)Ljava/lang/String;

    move-result-object v0

    :cond_16
    return-object v0
.end method

.method public static setAdMarvelOptionalFlags(Ljava/util/Map;)V
    .registers 1

    sput-object p0, Lcom/admarvel/android/ads/AdMarvelUtils;->adMarvelOptionalFlags:Ljava/util/Map;

    return-void
.end method

.method public static declared-synchronized setAdStatus(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAd;
    .registers 4

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->ERROR:Lcom/admarvel/android/ads/AdMarvelAd$AdType;

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setAdType(Lcom/admarvel/android/ads/AdMarvelAd$AdType;)V

    const/16 v0, 0x132

    invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorCode(I)V

    invoke-virtual {p0, p1}, Lcom/admarvel/android/ads/AdMarvelAd;->setErrorReason(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object p0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setFullScreenloadingTimeout(I)V
    .registers 3

    if-lez p0, :cond_8

    mul-int/lit16 v0, p0, 0x3e8

    int-to-long v0, v0

    sput-wide v0, Lcom/admarvel/android/ads/u;->a:J

    :goto_7
    return-void

    :cond_8
    const-string v0, "setFullScreenloadingTimeout :- time cannot be less than zero"

    invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static declared-synchronized setPreferenceValueBoolean(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceValueInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceValueLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setPreferenceValueString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-class v1, Lcom/admarvel/android/ads/AdMarvelUtils;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_14

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public firePixel(Lcom/admarvel/android/ads/AdMarvelAd;)V
    .registers 4

    new-instance v1, Lcom/admarvel/android/ads/ab;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelUtils;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V

    return-void
.end method

.method public firePixel(Ljava/lang/String;)V
    .registers 4

    new-instance v1, Lcom/admarvel/android/ads/ab;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelUtils;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public firePixelUsingHTTP(Ljava/lang/String;Landroid/os/Handler;)V
    .registers 5

    new-instance v1, Lcom/admarvel/android/ads/ab;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelUtils;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1, p2}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Landroid/os/Handler;)V

    return-void
.end method

.method public getUserAgent()Ljava/lang/String;
    .registers 3

    new-instance v1, Lcom/admarvel/android/ads/ab;

    iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelUtils;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/admarvel/android/ads/ab;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
