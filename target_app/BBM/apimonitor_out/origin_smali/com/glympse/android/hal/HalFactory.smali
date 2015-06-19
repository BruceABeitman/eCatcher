.class public Lcom/glympse/android/hal/HalFactory;
.super Ljava/lang/Object;
.source "HalFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAccountImporter(Landroid/content/Context;Lcom/glympse/android/core/GHandler;Ljava/lang/String;)Lcom/glympse/android/lib/GAccountProvider;
    .registers 4

    new-instance v0, Lcom/glympse/android/hal/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/glympse/android/hal/a;-><init>(Landroid/content/Context;Lcom/glympse/android/core/GHandler;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createActivityProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GActivityProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/g;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/g;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createAndroidLocationProvider(Landroid/content/Context;)Lcom/glympse/android/core/GLocationProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/at;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/at;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createBatteryProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GBatteryProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/k;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/k;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createCalendarProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GCalendarProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/l;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/l;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createClipboard(Landroid/content/Context;)Lcom/glympse/android/hal/GClipboard;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/Clipboard;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/Clipboard;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createContextHolder(Landroid/content/Context;)Lcom/glympse/android/hal/GContextHolder;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/t;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
    .registers 4

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/glympse/android/hal/w;->b(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    return-object v0
.end method

.method public static createDrawable(Landroid/graphics/drawable/BitmapDrawable;)Lcom/glympse/android/core/GDrawable;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/ac;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/ac;-><init>(Landroid/graphics/drawable/BitmapDrawable;)V

    return-object v0
.end method

.method public static createDrawable(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;
    .registers 3

    invoke-static {p0, p1}, Lcom/glympse/android/hal/ac;->a(Ljava/lang/String;I)Lcom/glympse/android/core/GDrawable;

    move-result-object v0

    return-object v0
.end method

.method public static createEventThread()Lcom/glympse/android/hal/GEventThread;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/EventThread;

    invoke-direct {v0}, Lcom/glympse/android/hal/EventThread;-><init>()V

    return-object v0
.end method

.method public static createFuseLocationProvider(Landroid/content/Context;)Lcom/glympse/android/core/GLocationProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/ay;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/ay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createHandler()Lcom/glympse/android/core/GHandler;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/ad;

    invoke-direct {v0}, Lcom/glympse/android/hal/ad;-><init>()V

    return-object v0
.end method

.method public static createHttpConnection()Lcom/glympse/android/hal/GHttpConnection;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/ae;

    invoke-direct {v0}, Lcom/glympse/android/hal/ae;-><init>()V

    return-object v0
.end method

.method public static createIntent()Lcom/glympse/android/hal/GIntent;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/GlympseIntent;

    invoke-direct {v0}, Lcom/glympse/android/hal/GlympseIntent;-><init>()V

    return-object v0
.end method

.method public static createInvocationAgent(Landroid/content/Context;)Lcom/glympse/android/hal/GInvocationAgent;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/InvocationAgent;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/InvocationAgent;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createLocalContactsProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GContactsProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/ao;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/ao;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createLocationProfile(I)Lcom/glympse/android/core/GLocationProfile;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/at;->b(I)Lcom/glympse/android/core/GLocationProfile;

    move-result-object v0

    return-object v0
.end method

.method public static createLocationProvider(Landroid/content/Context;)Lcom/glympse/android/core/GLocationProvider;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/ay;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/glympse/android/hal/ay;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/ay;-><init>(Landroid/content/Context;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/glympse/android/hal/at;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/at;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method

.method public static createMutex()Lcom/glympse/android/hal/GMutex;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/ag;

    invoke-direct {v0}, Lcom/glympse/android/hal/ag;-><init>()V

    return-object v0
.end method

.method public static createPhoneFavoriteProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GPhoneFavoriteProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/PhoneFavoriteProvider;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/PhoneFavoriteProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createPhoneHistoryProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GPhoneHistoryProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/PhoneHistoryProvider;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/PhoneHistoryProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createProximityProvider(Landroid/content/Context;)Lcom/glympse/android/core/GProximityProvider;
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/be;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Lcom/glympse/android/hal/be;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/be;-><init>(Landroid/content/Context;)V

    :goto_b
    return-object v0

    :cond_c
    new-instance v0, Lcom/glympse/android/hal/bc;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bc;-><init>(Landroid/content/Context;)V

    goto :goto_b
.end method

.method public static createSemaphore()Lcom/glympse/android/hal/GSemaphore;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/ah;

    invoke-direct {v0}, Lcom/glympse/android/hal/ah;-><init>()V

    return-object v0
.end method

.method public static createServiceWrapper()Lcom/glympse/android/hal/GServiceWrapper;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/bk;

    invoke-direct {v0}, Lcom/glympse/android/hal/bk;-><init>()V

    return-object v0
.end method

.method public static createSmsProvider(Landroid/content/Context;)Lcom/glympse/android/hal/GSmsProvider;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/bm;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bm;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createSmsReceiver(Landroid/content/Context;)Lcom/glympse/android/hal/GSmsReceiver;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/bq;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bq;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createSocket()Lcom/glympse/android/hal/GSocket;
    .registers 1

    new-instance v0, Lcom/glympse/android/hal/ai;

    invoke-direct {v0}, Lcom/glympse/android/hal/ai;-><init>()V

    return-object v0
.end method

.method public static createThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    const-string v1, "glympse.worker"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    return-object v0
.end method

.method public static createTimer(Ljava/lang/Runnable;JLcom/glympse/android/core/GHandler;)Lcom/glympse/android/hal/GTimer;
    .registers 5

    new-instance v0, Lcom/glympse/android/hal/bs;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/glympse/android/hal/bs;-><init>(Ljava/lang/Runnable;JLcom/glympse/android/core/GHandler;)V

    return-object v0
.end method

.method public static createUserProfile(Landroid/content/Context;)Lcom/glympse/android/hal/GUserProfile;
    .registers 2

    new-instance v0, Lcom/glympse/android/hal/bt;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createWifiProvider(Landroid/content/Context;Lcom/glympse/android/core/GHandler;)Lcom/glympse/android/hal/GWifiProvider;
    .registers 3

    new-instance v0, Lcom/glympse/android/hal/bv;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bv;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static isFuseProviderSupported(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/ay;->isSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isProximityReliable(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/glympse/android/hal/be;->isSupported(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static openDirectory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/glympse/android/hal/GDirectory;
    .registers 4

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/glympse/android/hal/w;->a(Landroid/content/Context;Ljava/lang/String;ZZ)Lcom/glympse/android/hal/GDirectory;

    move-result-object v0

    return-object v0
.end method

.method public static openKeychain(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GKeychain;
    .registers 3

    new-instance v0, Lcom/glympse/android/hal/an;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/an;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static openSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Lcom/glympse/android/hal/GSharedPreferences;
    .registers 3

    new-instance v0, Lcom/glympse/android/hal/bl;

    invoke-direct {v0, p0}, Lcom/glympse/android/hal/bl;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
