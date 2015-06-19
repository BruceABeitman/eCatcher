.class public abstract Lcom/spotify/mobile/android/service/connections/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field protected a:Landroid/content/Context;

.field private b:Ljava/util/concurrent/Semaphore;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    iput-object p1, p0, Lcom/spotify/mobile/android/service/connections/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/service/connections/a;->a(Z)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_4} :catch_5

    :goto_4
    return-void

    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public final a(Z)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->c()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->d()V

    if-eqz p1, :cond_1c

    :try_start_10
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    const-wide/16 v1, 0x2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_19
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_19} :catch_2c

    move-result v0

    if-nez v0, :cond_26

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_1c

    :cond_26
    :try_start_26
    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_2b} :catch_2c

    goto :goto_1c

    :catch_2c
    move-exception v0

    const-string v1, "Interrupted while waiting for bind"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public final b()V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->c()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->e()V

    :cond_9
    return-void
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()V
.end method

.method public abstract g()V
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->e()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/service/connections/a;->g()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/connections/a;->b:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
