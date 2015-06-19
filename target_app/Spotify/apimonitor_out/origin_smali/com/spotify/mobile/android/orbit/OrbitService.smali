.class public final Lcom/spotify/mobile/android/orbit/OrbitService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/orbit/OrbitServiceInterface;


# static fields
.field private static sNativeLoaded:Z


# instance fields
.field private nOrbitServicePtr:J


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;
.end method

.method public static create(Landroid/app/Service;ILjava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;
    .registers 5

    invoke-static {p0}, Lcom/spotify/mobile/android/orbit/OrbitService;->initOrbit(Landroid/content/Context;)V

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/ao;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ao;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v1, v0}, Lcom/spotify/mobile/android/orbit/OrbitService;->create(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/orbit/OrbitService;

    move-result-object v0

    return-object v0
.end method

.method private static initOrbit(Landroid/content/Context;)V
    .registers 9

    sget-boolean v0, Lcom/spotify/mobile/android/orbit/OrbitService;->sNativeLoaded:Z

    if-eqz v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/core/internal/ConnectivityListener;->setContext(Landroid/content/Context;)V

    new-instance v0, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;

    invoke-direct {v0}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;

    invoke-direct {v1}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;-><init>()V

    invoke-virtual {v0, p0, v1}, Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader;->loadLibrary(Landroid/content/Context;Lcom/spotify/mobile/android/orbit/OrbitLibraryLoader$LibraryLoader;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/spotify/mobile/android/orbit/OrbitService;->sNativeLoaded:Z

    const-class v0, Lcom/spotify/mobile/android/util/ao;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/spotify/mobile/android/util/ao;

    invoke-static {}, Lcom/spotify/mobile/android/util/ao;->j()Lcom/spotify/mobile/android/util/ap;

    move-result-object v4

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Lcom/spotify/mobile/android/util/ao;->a()I

    move-result v1

    iget-object v2, v4, Lcom/spotify/mobile/android/util/ap;->b:Ljava/lang/String;

    iget-object v3, v4, Lcom/spotify/mobile/android/util/ap;->c:Ljava/lang/String;

    iget-object v4, v4, Lcom/spotify/mobile/android/util/ap;->d:Ljava/lang/String;

    invoke-static {p0}, Lcom/spotify/mobile/android/util/dv;->c(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {v6}, Lcom/spotify/mobile/android/util/ao;->d()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lcom/spotify/mobile/android/orbit/OrbitService;->setMobileDeviceInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V

    const-class v0, Lcom/spotify/mobile/android/orbit/OrbitService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/orbit/OrbitService;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_4
.end method

.method private static native setClassLoader(Ljava/lang/ClassLoader;)V
.end method

.method private static native setMobileDeviceInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZD)V
.end method


# virtual methods
.method public final native crash()V
.end method

.method public final native getOrbitPlayer()Lcom/spotify/mobile/android/orbit/OrbitPlayer;
.end method

.method public final bridge synthetic getOrbitPlayer()Lcom/spotify/mobile/android/orbit/OrbitPlayerInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/orbit/OrbitService;->getOrbitPlayer()Lcom/spotify/mobile/android/orbit/OrbitPlayer;

    move-result-object v0

    return-object v0
.end method

.method public final native getOrbitProvider()Lcom/spotify/mobile/android/orbit/OrbitProvider;
.end method

.method public final bridge synthetic getOrbitProvider()Lcom/spotify/mobile/android/orbit/OrbitProviderInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/orbit/OrbitService;->getOrbitProvider()Lcom/spotify/mobile/android/orbit/OrbitProvider;

    move-result-object v0

    return-object v0
.end method

.method public final native getOrbitPushNotifications()Lcom/spotify/mobile/android/orbit/OrbitPushNotifications;
.end method

.method public final bridge synthetic getOrbitPushNotifications()Lcom/spotify/mobile/android/orbit/OrbitPushNotificationsInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/orbit/OrbitService;->getOrbitPushNotifications()Lcom/spotify/mobile/android/orbit/OrbitPushNotifications;

    move-result-object v0

    return-object v0
.end method

.method public final native getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSession;
.end method

.method public final bridge synthetic getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSessionInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/orbit/OrbitService;->getOrbitSession()Lcom/spotify/mobile/android/orbit/OrbitSession;

    move-result-object v0

    return-object v0
.end method

.method public final native setObserver(Lcom/spotify/mobile/android/orbit/OrbitServiceObserver;)V
.end method

.method public final native start(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/spotify/cosmos/router/NativeRouter;)V
.end method

.method public final native stop()V
.end method
