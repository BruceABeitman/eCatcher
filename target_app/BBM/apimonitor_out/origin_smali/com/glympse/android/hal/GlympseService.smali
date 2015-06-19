.class public Lcom/glympse/android/hal/GlympseService;
.super Landroid/app/Service;
.source "GlympseService.java"


# static fields
.field public static final INTENT_NOTIFICATION:Ljava/lang/String; = "com.glympse.android.hal.service.NOTIFICATION"

.field public static final INTENT_STARTED:Ljava/lang/String; = "com.glympse.android.hal.service.STARTED"

.field public static final REQUEST_ACTION:Ljava/lang/String; = "com.glympse.android.glympse.REQUEST_RESPONSE"

.field public static _glympse:Lcom/glympse/android/lib/GGlympsePrivate;

.field public static _service:Lcom/glympse/android/hal/GlympseService;

.field private static bu:Lcom/glympse/android/ui/GNotificationProvider;

.field private static bv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/glympse/android/lib/GTicketPrivate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private static a(Lcom/glympse/android/lib/GTicketPrivate;)V
    .registers 3

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->bv:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->bv:Ljava/util/Map;

    :cond_b
    sget-object v0, Lcom/glympse/android/hal/GlympseService;->bv:Ljava/util/Map;

    invoke-interface {p0}, Lcom/glympse/android/lib/GTicketPrivate;->getRequestCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static anyActiveGlympses(Landroid/content/Context;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/glympse/android/hal/HalFactory;->openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GSharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/glympse/android/hal/Concurrent;->getTime()J

    move-result-wide v1

    const-string v3, "latest_expire_time_v2"

    invoke-interface {v0, v3, v1, v2}, Lcom/glympse/android/hal/GSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method private c(Landroid/content/Intent;)V
    .registers 11

    const/4 v8, 0x0

    const v7, 0x20002

    const/16 v6, 0x20

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "{\"GLYMPSE_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    :goto_18
    return-void

    :cond_19
    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "GLYMPSE_ACTION"

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tid"

    invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "nid"

    invoke-interface {v0, v3}, Lcom/glympse/android/core/GPrimitive;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    long-to-int v0, v3

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[GLYMPSE_ACTION] type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ticket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", notification: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    const-string v3, "expire"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8e

    invoke-static {v2}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1}, Lcom/glympse/android/lib/GGlympsePrivate;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;

    move-result-object v1

    if-eqz v1, :cond_81

    invoke-interface {v1, v2}, Lcom/glympse/android/api/GHistoryManager;->findTicketByTicketId(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v8, v8}, Lcom/glympse/android/api/GTicket;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z

    :cond_81
    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    sget-object v2, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v7, v6, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto :goto_18

    :cond_8e
    const-string v2, "clear"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a8

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    sget-object v2, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    int-to-long v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v2, v7, v6, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V

    goto/16 :goto_18

    :cond_a8
    const-string v0, "notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d2

    const-string v0, "com.glympse.android.hal.service.NOTIFICATION"

    invoke-static {p0, v0}, Lcom/glympse/android/hal/t;->d(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c1

    invoke-static {p0}, Lcom/glympse/android/hal/GlympseService;->getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/GlympseService;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_18

    :cond_c1
    invoke-virtual {p0}, Lcom/glympse/android/hal/GlympseService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/glympse/android/hal/GlympseService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/GlympseService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_18

    :cond_d2
    const-string v0, "request_response"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_18

    const-string v1, "PENDING_REQUEST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->bv:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GTicketPrivate;

    if-eqz v0, :cond_18

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v1, :cond_18

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->sendTicket(Lcom/glympse/android/api/GTicket;)Z

    goto/16 :goto_18
.end method

.method public static getNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.glympse.android.hal.service.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getServiceNotificationIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    const-class v2, Lcom/glympse/android/hal/GlympseService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "{\"GLYMPSE_ACTION\":\"notification\"}"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getServiceRequestIntent(Landroid/content/Context;Lcom/glympse/android/lib/GTicketPrivate;)Landroid/content/Intent;
    .registers 5

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    const-class v2, Lcom/glympse/android/hal/GlympseService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "{\"GLYMPSE_ACTION\":\"request_response\"}"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/glympse/android/hal/GlympseService;->a(Lcom/glympse/android/lib/GTicketPrivate;)V

    const-string v1, "PENDING_REQUEST"

    invoke-interface {p1}, Lcom/glympse/android/lib/GTicketPrivate;->getRequestCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getStartedIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.glympse.android.hal.service.STARTED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static initializeNotifications()V
    .registers 3

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    if-nez v0, :cond_1a

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/glympse/android/ui/NotificationProvider;

    invoke-direct {v0}, Lcom/glympse/android/ui/NotificationProvider;-><init>()V

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    sget-object v2, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0, v1, v2}, Lcom/glympse/android/ui/GNotificationProvider;->serviceStarted(Landroid/app/Service;Lcom/glympse/android/api/GGlympse;)V

    :cond_1a
    return-void
.end method

.method private static t()V
    .registers 1

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    invoke-interface {v0}, Lcom/glympse/android/ui/GNotificationProvider;->serviceStopped()V

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->bu:Lcom/glympse/android/ui/GNotificationProvider;

    :cond_c
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GlympseService.onBind("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GlympseService.onTaskRemoved("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    const/4 v0, 0x1

    const-string v1, "GlympseService.onCreate()"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sput-object p0, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_1f

    invoke-static {p0}, Lcom/glympse/android/hal/GlympseService;->anyActiveGlympses(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    const/4 v0, 0x3

    const-string v1, "[GlympseService.onCreate] Service stopped itself"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/glympse/android/hal/GlympseService;->stopSelf()V

    :goto_1e
    return-void

    :cond_1f
    invoke-static {p0}, Lcom/glympse/android/hal/GlympseService;->getStartedIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/glympse/android/hal/GlympseService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1e
.end method

.method public onDestroy()V
    .registers 3

    const/4 v0, 0x1

    const-string v1, "GlympseService.onDestroy()"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :try_start_6
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_10

    :goto_9
    invoke-static {}, Lcom/glympse/android/hal/GlympseService;->t()V

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/GlympseService;->_service:Lcom/glympse/android/hal/GlympseService;

    return-void

    :catch_10
    move-exception v0

    goto :goto_9
.end method

.method public onLowMemory()V
    .registers 3

    const/4 v0, 0x5

    const-string v1, "GlympseService.onLowMemory()"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getBatteryManager()Lcom/glympse/android/api/GBatteryManager;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GBatteryManagerPrivate;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/glympse/android/lib/GBatteryManagerPrivate;->getListener()Lcom/glympse/android/hal/GBatteryListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/glympse/android/hal/GBatteryListener;->memoryWarningReceived()V

    :cond_1e
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    goto :goto_a
.end method

.method public onRebind(Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GlympseService.onRebind("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .registers 6

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GlympseService.onStartCommand("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    :try_start_23
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-static {}, Lcom/glympse/android/hal/GlympseService;->initializeNotifications()V

    if-eqz p1, :cond_2e

    invoke-direct {p0, p1}, Lcom/glympse/android/hal/GlympseService;->c(Landroid/content/Intent;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_2e} :catch_2f

    :cond_2e
    :goto_2e
    return-void

    :catch_2f
    move-exception v0

    goto :goto_2e
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GlympseService.onStartCommand("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/glympse/android/hal/GlympseService;->onStart(Landroid/content/Intent;I)V

    return v2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GlympseService.onUnbind("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
