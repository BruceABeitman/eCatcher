.class public abstract Lcom/spotify/mobile/android/service/AbstractProxyService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/os/Binder;",
        ">",
        "Landroid/app/Service;"
    }
.end annotation


# instance fields
.field protected a:Lcom/spotify/mobile/android/service/an;

.field protected b:Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected c:Landroid/os/IBinder;

.field protected d:Ljava/util/concurrent/CountDownLatch;

.field private final e:Ljava/lang/Object;

.field private f:Lcom/spotify/mobile/android/service/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/service/AbstractProxyService",
            "<TT;>.com/spotify/mobile/android/service/a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->e:Ljava/lang/Object;

    new-instance v0, Lcom/spotify/mobile/android/service/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/spotify/mobile/android/service/a;-><init>(Lcom/spotify/mobile/android/service/AbstractProxyService;B)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->f:Lcom/spotify/mobile/android/service/a;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/AbstractProxyService;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->e:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .registers 10

    const-wide/32 v7, 0x493e0

    const/4 v0, 0x0

    const-string v1, "Called from main loop"

    invoke-static {v1}, Lcom/spotify/mobile/android/util/bt;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->e:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    :cond_10
    iget-object v4, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_40

    if-nez v4, :cond_43

    :try_start_14
    iget-object v4, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->e:Ljava/lang/Object;

    const-wide/32 v5, 0x493e0

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v7

    if-lez v4, :cond_10

    iget-object v4, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;

    if-nez v4, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Timed out waiting for service!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_40
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_31} :catch_31

    :catch_31
    move-exception v0

    :try_start_32
    const-string v2, "Failed to connect after an unexpected InterruptedException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_40

    :catchall_40
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->b:Landroid/os/Binder;
    :try_end_45
    .catchall {:try_start_43 .. :try_end_45} :catchall_40

    if-nez v2, :cond_8b

    :try_start_47
    iget-object v2, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->d:Ljava/util/concurrent/CountDownLatch;

    const-wide/32 v3, 0x493e0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_55

    const/4 v0, 0x1

    :cond_55
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->c()Landroid/os/Binder;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->b:Landroid/os/Binder;

    if-eqz v0, :cond_74

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Timed out waiting for service!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catchall {:try_start_47 .. :try_end_65} :catchall_40
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_65} :catch_65

    :catch_65
    move-exception v0

    :try_start_66
    const-string v2, "Failed to connect after an unexpected InterruptedException"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_74
    .catchall {:try_start_66 .. :try_end_74} :catchall_40

    :cond_74
    :try_start_74
    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->b:Landroid/os/Binder;

    if-nez v0, :cond_80

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Proxied binder from spotify service is null"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_80
    const-string v0, "Successfully connected to proxied binder."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->e()V
    :try_end_8b
    .catchall {:try_start_74 .. :try_end_8b} :catchall_40
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_8b} :catch_65

    :cond_8b
    :try_start_8b
    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_40

    return-void
.end method

.method public abstract b()Landroid/os/IBinder;
.end method

.method public abstract c()Landroid/os/Binder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract d()Ljava/util/concurrent/CountDownLatch;
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 1

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->f:Lcom/spotify/mobile/android/service/a;

    invoke-static {p0, v0}, Lcom/spotify/mobile/android/service/SpotifyService;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    :cond_9
    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->c:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .registers 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->b()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->c:Landroid/os/IBinder;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->b:Landroid/os/Binder;

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->a:Lcom/spotify/mobile/android/service/an;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/spotify/mobile/android/service/AbstractProxyService;->f:Lcom/spotify/mobile/android/service/a;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/AbstractProxyService;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_9
    const/4 v0, 0x0

    return v0
.end method
