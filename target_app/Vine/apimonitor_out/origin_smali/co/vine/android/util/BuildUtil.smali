.class public Lco/vine/android/util/BuildUtil;
.super Ljava/lang/Object;
.source "BuildUtil.java"


# static fields
.field public static final APP_TYPE_EXPLORE:I = 0x2

.field public static final APP_TYPE_REGULAR:I = 0x1

.field public static final ENVIRONMENT_DEV:I = 0x2

.field public static final ENVIRONMENT_PRODUCTION:I = 0x1

.field public static final EPHEMERAL_ENABLED:Z = false

.field public static final MARKET_AMAZON:I = 0x2

.field public static final MARKET_ASTAR:I = 0x3

.field public static final MARKET_GOOGLE:I = 0x1

.field private static isOldDeviceOrLowEndDevice:Ljava/lang/Boolean;

.field private static sAppType:I

.field private static sAuthority:Ljava/lang/String;

.field private static sEnvironment:I

.field private static final sIsHwEncodingEnabled:Z

.field private static final sIsSwEncodingEnabled:Z

.field private static sLogsOn:Z

.field private static sMarket:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v4, 0x0

    const-string v0, "co.vine.android"

    sput-object v0, Lco/vine/android/util/BuildUtil;->sAuthority:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice:Ljava/lang/Boolean;

    sget-boolean v0, Lco/vine/android/recorder/RecordConfigUtils;->HW_ENABLED:Z

    sput-boolean v0, Lco/vine/android/util/BuildUtil;->sIsHwEncodingEnabled:Z

    sget-boolean v0, Lco/vine/android/recorder/RecordConfigUtils;->SW_ENABLED:Z

    sput-boolean v0, Lco/vine/android/util/BuildUtil;->sIsSwEncodingEnabled:Z

    const-string v0, "google"

    const-string v1, "regular"

    const-string v2, "co.vine.android"

    const-string v3, "production"

    const-string v5, "sw"

    invoke-static/range {v0 .. v5}, Lco/vine/android/util/BuildUtil;->setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    invoke-static {v4}, Lco/vine/android/util/CrashUtil;->setup(Z)V

    const-string v0, "co.vine.android"

    invoke-static {v0}, Lco/vine/android/util/PlayerUtil;->setup(Ljava/lang/String;)V

    const-string v0, "amazon"

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "co.vine.android"

    invoke-static {v4, v0, v1}, Lcom/edisonwang/android/slog/SLog;->setup(ZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAmazonBucket(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e004a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthority()Ljava/lang/String;
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lco/vine/android/util/BuildUtil;->getAuthority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAuthority(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/util/BuildUtil;->sAuthority:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBaseUrl(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e0272

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getConfigUrl(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e0274

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExplorePath(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e00d4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExploreUrl(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e00d3

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMarket()I
    .registers 1

    sget v0, Lco/vine/android/util/BuildUtil;->sMarket:I

    return v0
.end method

.method public static getMediaUrl(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e0275

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRtcUrl(Landroid/content/res/Resources;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e01b4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSenderId(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e01c1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStatusUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e022f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWebsiteUrl(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x7f0e0276

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isAStar()Z
    .registers 2

    sget v0, Lco/vine/android/util/BuildUtil;->sMarket:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isAmazon()Z
    .registers 2

    sget v0, Lco/vine/android/util/BuildUtil;->sMarket:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isExplore()Z
    .registers 2

    sget v0, Lco/vine/android/util/BuildUtil;->sAppType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static isGoogle()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lco/vine/android/util/BuildUtil;->sMarket:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isI18nOn()Z
    .registers 1

    sget-boolean v0, Lco/vine/android/util/BuildUtil;->sLogsOn:Z

    return v0
.end method

.method public static isIsHwEncodingEnabled()Z
    .registers 1

    sget-boolean v0, Lco/vine/android/util/BuildUtil;->sIsHwEncodingEnabled:Z

    return v0
.end method

.method public static isLogsOn()Z
    .registers 1

    sget-boolean v0, Lco/vine/android/util/BuildUtil;->sLogsOn:Z

    return v0
.end method

.method public static isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice:Ljava/lang/Boolean;

    if-nez v0, :cond_24

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isExplore()Z

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_13
    invoke-static {p0, v0}, Lco/vine/android/util/SystemUtil;->getMemoryRatio(Landroid/content/Context;Z)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1e

    :cond_1d
    move v2, v1

    :cond_1e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice:Ljava/lang/Boolean;

    :cond_24
    sget-object v0, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_2b
    move v0, v2

    goto :goto_13
.end method

.method public static isProduction()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lco/vine/android/util/BuildUtil;->sEnvironment:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isRegular()Z
    .registers 2

    const/4 v0, 0x1

    sget v1, Lco/vine/android/util/BuildUtil;->sAppType:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static setup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 10

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_50

    :cond_a
    :goto_a
    packed-switch v0, :pswitch_data_5a

    sput v1, Lco/vine/android/util/BuildUtil;->sMarket:I

    :goto_f
    const-string v0, "production"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    sput v1, Lco/vine/android/util/BuildUtil;->sEnvironment:I

    :goto_19
    const-string v0, "explore"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sput v3, Lco/vine/android/util/BuildUtil;->sAppType:I

    :goto_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    sput-object p2, Lco/vine/android/util/BuildUtil;->sAuthority:Ljava/lang/String;

    :cond_2b
    sput-boolean p4, Lco/vine/android/util/BuildUtil;->sLogsOn:Z

    return-void

    :sswitch_2e
    const-string v2, "amazon"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v0, 0x0

    goto :goto_a

    :sswitch_38
    const-string v2, "astar"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move v0, v1

    goto :goto_a

    :pswitch_42
    sput v3, Lco/vine/android/util/BuildUtil;->sMarket:I

    goto :goto_f

    :pswitch_45
    const/4 v0, 0x3

    sput v0, Lco/vine/android/util/BuildUtil;->sMarket:I

    goto :goto_f

    :cond_49
    sput v3, Lco/vine/android/util/BuildUtil;->sEnvironment:I

    goto :goto_19

    :cond_4c
    sput v1, Lco/vine/android/util/BuildUtil;->sAppType:I

    goto :goto_23

    nop

    :sswitch_data_50
    .sparse-switch
        -0x544bf9fc -> :sswitch_2e
        0x58cee33 -> :sswitch_38
    .end sparse-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42
        :pswitch_45
    .end packed-switch
.end method
