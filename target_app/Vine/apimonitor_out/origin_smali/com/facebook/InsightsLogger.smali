.class public Lcom/facebook/InsightsLogger;
.super Ljava/lang/Object;
.source "InsightsLogger.java"


# static fields
.field private static final EVENT_NAME_LOG_CONVERSION_PIXEL:Ljava/lang/String; = "fb_log_offsite_pixel"

.field private static final EVENT_NAME_LOG_MOBILE_PURCHASE:Ljava/lang/String; = "fb_mobile_purchase"

.field private static final EVENT_PARAMETER_CURRENCY:Ljava/lang/String; = "fb_currency"

.field private static final EVENT_PARAMETER_PIXEL_ID:Ljava/lang/String; = "fb_offsite_pixel_id"

.field private static final EVENT_PARAMETER_PIXEL_VALUE:Ljava/lang/String; = "fb_offsite_pixel_value"

.field private static appAuthSession:Lcom/facebook/Session;


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final clientToken:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final specifiedSession:Lcom/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientToken"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_13

    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p3

    :cond_13
    iput-object p1, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;->buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/InsightsLogger;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/InsightsLogger;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/InsightsLogger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/InsightsLogger;)Lcom/facebook/Session;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/InsightsLogger;->sessionToLogTo()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    return-void
.end method

.method private static buildJSONForEvent(Ljava/lang/String;DLandroid/os/Bundle;)Ljava/lang/String;
    .registers 15

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "_eventName"

    invoke-virtual {v1, v8, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-wide/high16 v8, 0x3ff0

    cmpl-double v8, p1, v8

    if-eqz v8, :cond_15

    const-string v8, "_valueToSum"

    invoke-virtual {v1, v8, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_15
    if-eqz p3, :cond_54

    invoke-virtual {p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v8, v7, Ljava/lang/String;

    if-nez v8, :cond_46

    instance-of v8, v7, Ljava/lang/Number;

    if-nez v8, :cond_46

    const-string v8, "Parameter \'%s\' must be a string or a numeric type."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :cond_46
    invoke-virtual {v1, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_49} :catch_4a

    goto :goto_1f

    :catch_4a
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_53
    return-object v6

    :cond_54
    :try_start_54
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Lorg/json/JSONException; {:try_start_54 .. :try_end_5f} :catch_4a

    move-result-object v6

    goto :goto_53
.end method

.method private logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V
    .registers 12

    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    new-instance v0, Lcom/facebook/InsightsLogger$1;

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/InsightsLogger$1;-><init>(Lcom/facebook/InsightsLogger;Ljava/lang/String;DLandroid/os/Bundle;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/InsightsLogger;
    .registers 5

    new-instance v0, Lcom/facebook/InsightsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/InsightsLogger;
    .registers 5

    new-instance v0, Lcom/facebook/InsightsLogger;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/InsightsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "Insights"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sessionToLogTo()Lcom/facebook/Session;
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/InsightsLogger;->specifiedSession:Lcom/facebook/Session;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_f

    :cond_b
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    :cond_f
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_53

    :cond_1d
    sget-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    if-nez v3, :cond_51

    const-string v3, "%s|%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/InsightsLogger;->clientToken:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    invoke-static {v2, v3, v4}, Lcom/facebook/AccessToken;->createFromString(Ljava/lang/String;Ljava/util/List;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object v1

    new-instance v3, Lcom/facebook/Session;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/InsightsLogger;->applicationId:Ljava/lang/String;

    new-instance v6, Lcom/facebook/NonCachingTokenCachingStrategy;

    invoke-direct {v6}, Lcom/facebook/NonCachingTokenCachingStrategy;-><init>()V

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/TokenCachingStrategy;Z)V

    sput-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    sget-object v3, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    :cond_51
    sget-object v0, Lcom/facebook/InsightsLogger;->appAuthSession:Lcom/facebook/Session;

    :cond_53
    monitor-exit p0

    return-object v0

    :catchall_55
    move-exception v3

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_1 .. :try_end_57} :catchall_55

    throw v3
.end method


# virtual methods
.method public logConversionPixel(Ljava/lang/String;D)V
    .registers 6

    if-nez p1, :cond_8

    const-string v1, "pixelID cannot be null"

    invoke-static {v1}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "fb_offsite_pixel_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fb_offsite_pixel_value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v1, "fb_log_offsite_pixel"

    invoke-direct {p0, v1, p2, p3, v0}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_7
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/InsightsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .registers 7

    if-nez p1, :cond_8

    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    :goto_7
    return-void

    :cond_8
    if-nez p2, :cond_10

    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/InsightsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_7

    :cond_10
    if-nez p3, :cond_17

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_17
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2, p3}, Lcom/facebook/InsightsLogger;->logEventNow(Ljava/lang/String;DLandroid/os/Bundle;)V

    goto :goto_7
.end method
