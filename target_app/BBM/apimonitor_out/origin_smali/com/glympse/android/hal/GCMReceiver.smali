.class public Lcom/glympse/android/hal/GCMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMReceiver.java"


# static fields
.field public static final PUSH_TOKEN_REGISTRATION_RETRIES:I = 0x4

.field public static final RECEIVER_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field public static final RECEIVER_CLASS:Ljava/lang/String; = "com.glympse.android.hal.GCMReceiver"

.field public static final SENDER_ID:Ljava/lang/String; = "595561817592"

.field private static aV:Landroid/os/Handler;

.field private static aW:I

.field private static aX:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/glympse/android/hal/GCMReceiver;->aV:Landroid/os/Handler;

    const/4 v0, 0x0

    sput v0, Lcom/glympse/android/hal/GCMReceiver;->aW:I

    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/glympse/android/hal/GCMReceiver;->aX:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "[GCMReceiver::handleRegistration] Processing registration intent..."

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v0, "error"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    const-string v1, "[GCMReceiver::handleRegistration] Generic registration error encountered"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/hal/GCMReceiver;->performRetry()V

    goto :goto_a

    :catch_1d
    move-exception v0

    goto :goto_a

    :cond_1f
    const-string v0, "registration_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const/4 v0, 0x1

    const-string v1, "[GCMReceiver::handleRegistration] Registration ID was not found"

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/glympse/android/hal/GCMReceiver;->performRetry()V

    goto :goto_a

    :cond_35
    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->registerDeviceToken(Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_3a} :catch_1d

    goto :goto_a
.end method

.method static synthetic b(J)J
    .registers 4

    sget-wide v0, Lcom/glympse/android/hal/GCMReceiver;->aX:J

    mul-long/2addr v0, p0

    sput-wide v0, Lcom/glympse/android/hal/GCMReceiver;->aX:J

    return-wide v0
.end method

.method private static c(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "[GCMReceiver::reristerForPUSH] Registering for PUSH..."

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "app"

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "sender"

    const-string v2, "595561817592"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_28

    :goto_27
    return-void

    :catch_28
    move-exception v0

    goto :goto_27
.end method

.method static synthetic o()I
    .registers 1

    sget v0, Lcom/glympse/android/hal/GCMReceiver;->aW:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/glympse/android/hal/GCMReceiver;->aW:I

    return v0
.end method

.method private performRetry()V
    .registers 5

    sget v0, Lcom/glympse/android/hal/GCMReceiver;->aW:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_6

    :goto_5
    return-void

    :cond_6
    sget-object v0, Lcom/glympse/android/hal/GCMReceiver;->aV:Landroid/os/Handler;

    new-instance v1, Lcom/glympse/android/hal/x;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/glympse/android/hal/x;-><init>(Lcom/glympse/android/hal/GCMReceiver;Lcom/glympse/android/hal/GCMReceiver$1;)V

    sget-wide v2, Lcom/glympse/android/hal/GCMReceiver;->aX:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5
.end method

.method public static register()V
    .registers 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getContextHolder()Lcom/glympse/android/hal/GContextHolder;

    move-result-object v0

    invoke-interface {v0}, Lcom/glympse/android/hal/GContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "com.google.android.c2dm.intent.RECEIVE"

    const-string v2, "com.glympse.android.hal.GCMReceiver"

    invoke-static {v1, v0, v2}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GGlympsePrivate;->getConfig()Lcom/glympse/android/api/GConfig;

    move-result-object v0

    check-cast v0, Lcom/glympse/android/lib/GConfigPrivate;

    invoke-interface {v0}, Lcom/glympse/android/lib/GConfigPrivate;->getRegistrationToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/glympse/android/hal/GCMReceiver;->aV:Landroid/os/Handler;

    if-nez v0, :cond_38

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/glympse/android/hal/GCMReceiver;->aV:Landroid/os/Handler;

    :cond_38
    invoke-static {v1}, Lcom/glympse/android/hal/GCMReceiver;->c(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3b} :catch_3c

    goto :goto_6

    :catch_3c
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-direct {p0, p1, p2}, Lcom/glympse/android/hal/GCMReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_f
    :goto_f
    return-void

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_1c
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "595561817592"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "payload"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    if-nez v1, :cond_51

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/glympse/android/lib/LibFactory;->createNotificationCenter(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/lib/GNotificationCenter;

    move-result-object v1

    new-instance v2, Lcom/glympse/android/hal/NotificationListener;

    invoke-direct {v2, p1}, Lcom/glympse/android/hal/NotificationListener;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Lcom/glympse/android/lib/GNotificationCenter;->addListener(Lcom/glympse/android/api/GEventListener;)Z

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GNotificationCenter;->handle(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_4a} :catch_4b

    goto :goto_f

    :catch_4b
    move-exception v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/glympse/android/lib/Debug;->ex(Ljava/lang/Throwable;Z)V

    goto :goto_f

    :cond_51
    :try_start_51
    sget-object v1, Lcom/glympse/android/hal/GlympseService;->_glympse:Lcom/glympse/android/lib/GGlympsePrivate;

    invoke-interface {v1, v0}, Lcom/glympse/android/lib/GGlympsePrivate;->handleRemoteNotification(Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_56} :catch_4b

    goto :goto_f
.end method
