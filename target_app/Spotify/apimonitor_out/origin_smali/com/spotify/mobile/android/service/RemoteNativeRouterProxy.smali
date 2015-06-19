.class public Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;
.super Lcom/spotify/mobile/android/service/AbstractProxyService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/spotify/mobile/android/service/AbstractProxyService",
        "<",
        "Lcom/spotify/cosmos/android/RemoteNativeRouter;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->e:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/os/IBinder;
    .registers 2

    new-instance v0, Lcom/spotify/mobile/android/service/ac;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/ac;-><init>(Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;)V

    return-object v0
.end method

.method public final synthetic c()Landroid/os/Binder;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a:Lcom/spotify/mobile/android/service/an;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->m(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/cosmos/android/RemoteNativeRouter;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/CountDownLatch;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a:Lcom/spotify/mobile/android/service/an;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->l(Lcom/spotify/mobile/android/service/SpotifyService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    return-object v0
.end method

.method protected final e()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->a:Lcom/spotify/mobile/android/service/an;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/an;->a:Lcom/spotify/mobile/android/service/SpotifyService;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/SpotifyService;->m(Lcom/spotify/mobile/android/service/SpotifyService;)Lcom/spotify/cosmos/android/RemoteNativeRouter;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->c:Landroid/os/IBinder;

    check-cast v0, Lcom/spotify/mobile/android/service/ac;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/ac;->a(Lcom/spotify/cosmos/android/RemoteNativeRouter;)V

    return-void
.end method

.method protected final f()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->c:Landroid/os/IBinder;

    check-cast v0, Lcom/spotify/mobile/android/service/ac;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/ac;->a(Lcom/spotify/cosmos/android/RemoteNativeRouter;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    invoke-super {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->onCreate()V

    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->e:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/RemoteNativeRouterProxy;->e:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    invoke-super {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->onDestroy()V

    return-void
.end method
