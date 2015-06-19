.class public Lcom/rim/bbm/BbmCoreService;
.super Ljava/lang/Object;
.source "BbmCoreService.java"


# instance fields
.field private m_appVersion:Ljava/lang/String;

.field private final m_callbacks:Lcom/rim/bbm/BbmCoreService$Callbacks;

.field private final m_context:Landroid/content/Context;

.field private final m_databaseKey:Ljava/lang/String;

.field private final m_homeDir:Ljava/lang/String;

.field private m_messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/rim/bbm/BbmCoreService$Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/rim/bbm/BbmCoreService$Callbacks;Ljava/lang/String;Lcom/rim/bbm/BbmPlatformService;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "0.0.0.0"

    iput-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_appVersion:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p1, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    iput-object p3, p0, Lcom/rim/bbm/BbmCoreService;->m_homeDir:Ljava/lang/String;

    iput-object p2, p0, Lcom/rim/bbm/BbmCoreService;->m_callbacks:Lcom/rim/bbm/BbmCoreService$Callbacks;

    const-string v0, ""

    iput-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_databaseKey:Ljava/lang/String;

    if-nez p4, :cond_22

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BbmPlatformService must not be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method public static encryptFileForRtas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/rim/bbm/BbmCoreService;->prv_encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static native prv_encryptFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private prv_getAppVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_appVersion:Ljava/lang/String;

    return-object v0
.end method

.method private prv_getDatabaseKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_databaseKey:Ljava/lang/String;

    return-object v0
.end method

.method private prv_getDisplayDensity()I
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    return v0
.end method

.method private prv_getDisplayHeight()I
    .registers 3

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method private prv_getDisplayWidth()I
    .registers 3

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v0, v1, :cond_1b

    :goto_1a
    return v0

    :cond_1b
    move v0, v1

    goto :goto_1a
.end method

.method private prv_getHomeDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_homeDir:Ljava/lang/String;

    return-object v0
.end method

.method private prv_getLocaleCountry()Ljava/lang/String;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const-string v0, ""

    goto :goto_e
.end method

.method private prv_getNextMessage()Lcom/rim/bbm/BbmCoreService$Message;
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/rim/bbm/BbmCoreService$Message;

    return-object v0
.end method

.method private prv_getUiccHomeCarrier()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const-string v0, ""

    goto :goto_10
.end method

.method private prv_getUiccHomeCountry()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v0

    :cond_12
    const-string v0, ""

    goto :goto_10
.end method

.method private prv_msgFromService(I[B)V
    .registers 5

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_callbacks:Lcom/rim/bbm/BbmCoreService$Callbacks;

    invoke-static {p1}, Lcom/rim/bbm/BbmCoreService$MessageType;->fromOrdinal(I)Lcom/rim/bbm/BbmCoreService$MessageType;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/rim/bbm/BbmCoreService$Callbacks;->msgFromService(Lcom/rim/bbm/BbmCoreService$MessageType;[B)V

    return-void
.end method

.method private native prv_msgToService()Z
.end method

.method private prv_secondsSinceSunday(Ljava/lang/String;J)I
    .registers 11

    const/16 v6, 0xd

    const/16 v5, 0xc

    const/16 v4, 0xb

    const/4 v3, 0x7

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_18

    const-wide v0, 0x20c49ba5e353f7L

    cmp-long v0, p2, v0

    if-lez v0, :cond_18

    const/4 v0, -0x1

    :goto_17
    return v0

    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    :goto_22
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    mul-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->isSet(I)Z

    move-result v1

    if-nez v1, :cond_4d

    :cond_46
    const/4 v0, -0x2

    goto :goto_17

    :cond_48
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_22

    :cond_4d
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const v2, 0x15180

    mul-int/2addr v1, v2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0xe10

    add-int/2addr v1, v2

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x3c

    add-int/2addr v1, v2

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_17
.end method

.method private prv_serviceReady()V
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_callbacks:Lcom/rim/bbm/BbmCoreService$Callbacks;

    invoke-interface {v0}, Lcom/rim/bbm/BbmCoreService$Callbacks;->serviceReady()V

    return-void
.end method

.method private prv_serviceStopped()V
    .registers 2

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_callbacks:Lcom/rim/bbm/BbmCoreService$Callbacks;

    invoke-interface {v0}, Lcom/rim/bbm/BbmCoreService$Callbacks;->serviceStopped()V

    return-void
.end method

.method private native prv_startService()Z
.end method

.method private native prv_stopService()Z
.end method


# virtual methods
.method public msgToService(Lcom/rim/bbm/BbmCoreService$MessageType;[B)Z
    .registers 5

    iget-object v0, p0, Lcom/rim/bbm/BbmCoreService;->m_messageQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/rim/bbm/BbmCoreService$Message;

    invoke-direct {v1, p0, p1, p2}, Lcom/rim/bbm/BbmCoreService$Message;-><init>(Lcom/rim/bbm/BbmCoreService;Lcom/rim/bbm/BbmCoreService$MessageType;[B)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/rim/bbm/BbmCoreService;->prv_msgToService()Z

    move-result v0

    return v0
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/rim/bbm/BbmCoreService;->m_appVersion:Ljava/lang/String;

    return-void
.end method

.method public startService()Z
    .registers 2

    invoke-direct {p0}, Lcom/rim/bbm/BbmCoreService;->prv_startService()Z

    move-result v0

    return v0
.end method

.method public stopService()Z
    .registers 2

    invoke-direct {p0}, Lcom/rim/bbm/BbmCoreService;->prv_stopService()Z

    move-result v0

    return v0
.end method
