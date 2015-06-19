.class public Lcom/spotify/mobile/android/applink/service/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/c/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/spotify/mobile/android/applink/u;Ljava/util/concurrent/ScheduledExecutorService;Lcom/spotify/mobile/android/applink/t;)Lcom/spotify/mobile/android/applink/a;
    .registers 4

    new-instance v0, Lcom/spotify/mobile/android/applink/AppLinkImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/spotify/mobile/android/applink/AppLinkImpl;-><init>(Lcom/spotify/mobile/android/applink/u;Ljava/util/concurrent/ScheduledExecutorService;Lcom/spotify/mobile/android/applink/t;)V

    return-object v0
.end method

.method public static a(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/t;)Lcom/spotify/mobile/android/applink/r;
    .registers 3

    new-instance v0, Lcom/spotify/mobile/android/applink/r;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/applink/r;-><init>(Lcom/spotify/mobile/android/service/media/MediaService;Lcom/spotify/mobile/android/applink/t;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/spotify/mobile/android/applink/t;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/applink/t;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/applink/t;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a()Lcom/spotify/mobile/android/applink/u;
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/applink/u;

    invoke-direct {v0}, Lcom/spotify/mobile/android/applink/u;-><init>()V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/spotify/mobile/android/applink/m;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/applink/m;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/applink/m;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b()Ljava/util/concurrent/ScheduledExecutorService;
    .registers 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;

    invoke-direct {v0}, Lcom/spotify/mobile/android/applink/AppLinkBluetoothProxy;-><init>()V

    return-object v0
.end method
