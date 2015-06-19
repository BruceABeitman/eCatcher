.class public abstract Lcom/google/android/youtube/player/internal/r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/youtube/player/internal/t;


# instance fields
.field final a:Landroid/os/Handler;

.field private final b:Landroid/content/Context;

.field private c:Landroid/os/IInterface;

.field private d:Ljava/util/ArrayList;

.field private final e:Ljava/util/ArrayList;

.field private f:Z

.field private g:Ljava/util/ArrayList;

.field private h:Z

.field private final i:Ljava/util/ArrayList;

.field private j:Landroid/content/ServiceConnection;

.field private k:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/youtube/player/internal/t$a;Lcom/google/android/youtube/player/internal/t$b;)V
    .registers 6

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->e:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->h:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Clients must be created on the UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    invoke-static {p1}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-static {p2}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->g:Ljava/util/ArrayList;

    invoke-static {p3}, Lcom/google/android/youtube/player/internal/ac;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/android/youtube/player/internal/r$a;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/player/internal/r$a;-><init>(Lcom/google/android/youtube/player/internal/r;)V

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/google/android/youtube/player/internal/r;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 2

    iput-object p1, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .registers 2

    invoke-static {p0}, Lcom/google/android/youtube/player/internal/r;->b(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/youtube/player/internal/r;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/google/android/youtube/player/YouTubeInitializationResult;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/player/YouTubeInitializationResult;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_9

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->UNKNOWN_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    goto :goto_4

    :catch_9
    move-exception v0

    sget-object v0, Lcom/google/android/youtube/player/YouTubeInitializationResult;->UNKNOWN_ERROR:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    goto :goto_4
.end method

.method static synthetic b(Lcom/google/android/youtube/player/internal/r;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/youtube/player/internal/r;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/google/android/youtube/player/internal/r;)Landroid/os/IInterface;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    return-object v0
.end method

.method static synthetic e(Lcom/google/android/youtube/player/internal/r;)Landroid/content/ServiceConnection;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic f(Lcom/google/android/youtube/player/internal/r;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/google/android/youtube/player/internal/r;)Landroid/content/ServiceConnection;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
.end method

.method protected final a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V
    .registers 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->g:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->h:Z

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_14
    if-ge v1, v4, :cond_35

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    if-nez v0, :cond_1c

    monitor-exit v2

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/t$b;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/player/internal/t$b;->a(Lcom/google/android/youtube/player/YouTubeInitializationResult;)V

    :cond_31
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->h:Z

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_b .. :try_end_39} :catchall_3a

    goto :goto_1b

    :catchall_3a
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected abstract a(Lcom/google/android/youtube/player/internal/i;Lcom/google/android/youtube/player/internal/r$d;)V
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected final b(Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/google/android/youtube/player/internal/i$a;->a(Landroid/os/IBinder;)Lcom/google/android/youtube/player/internal/i;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/player/internal/r$d;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/player/internal/r$d;-><init>(Lcom/google/android/youtube/player/internal/r;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/player/internal/r;->a(Lcom/google/android/youtube/player/internal/i;Lcom/google/android/youtube/player/internal/r$d;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-void

    :catch_d
    move-exception v0

    const-string v0, "YouTubeClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method public d()V
    .registers 6

    const/4 v4, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->h()V

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_a
    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_11
    if-ge v1, v3, :cond_22

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/r$b;

    invoke-virtual {v0}, Lcom/google/android/youtube/player/internal/r$b;->b()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_22
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_38

    iput-object v4, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v4, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    :cond_37
    return-void

    :catchall_38
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final e()V
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/youtube/player/YouTubeApiServiceUtil;->isYouTubeApiServiceAvailable(Landroid/content/Context;)Lcom/google/android/youtube/player/YouTubeInitializationResult;

    move-result-object v0

    sget-object v1, Lcom/google/android/youtube/player/YouTubeInitializationResult;->SUCCESS:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    if-eq v0, v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_19
    :goto_19
    return-void

    :cond_1a
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_38

    const-string v1, "YouTubeClient"

    const-string v2, "Calling connect() while still connected, missing disconnect()."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_38
    new-instance v1, Lcom/google/android/youtube/player/internal/r$e;

    invoke-direct {v1, p0}, Lcom/google/android/youtube/player/internal/r$e;-><init>(Lcom/google/android/youtube/player/internal/r;)V

    iput-object v1, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->j:Landroid/content/ServiceConnection;

    const/16 v3, 0x81

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    sget-object v2, Lcom/google/android/youtube/player/YouTubeInitializationResult;->ERROR_CONNECTING_TO_SERVICE:Lcom/google/android/youtube/player/YouTubeInitializationResult;

    invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_19
.end method

.method public final f()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected final g()V
    .registers 7

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_5
    iget-boolean v2, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    if-nez v2, :cond_52

    move v2, v1

    :goto_a
    invoke-static {v2}, Lcom/google/android/youtube/player/internal/ac;->a(Z)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_54

    :goto_1e
    invoke-static {v1}, Lcom/google/android/youtube/player/internal/ac;->a(Z)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_28
    if-ge v1, v4, :cond_56

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    if-eqz v0, :cond_56

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->f()Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/t$a;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/t$a;->a()V

    :cond_4e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_28

    :cond_52
    move v2, v0

    goto :goto_a

    :cond_54
    move v1, v0

    goto :goto_1e

    :cond_56
    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    monitor-exit v3
    :try_end_5f
    .catchall {:try_start_5 .. :try_end_5f} :catchall_60

    return-void

    :catchall_60
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method protected final h()V
    .registers 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/youtube/player/internal/r;->a:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    monitor-enter v2

    const/4 v1, 0x1

    :try_start_b
    iput-boolean v1, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    iget-object v3, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    :goto_14
    if-ge v1, v4, :cond_33

    iget-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->k:Z

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->d:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/player/internal/t$a;

    invoke-interface {v0}, Lcom/google/android/youtube/player/internal/t$a;->b()V

    :cond_2f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    :cond_33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/youtube/player/internal/r;->f:Z

    monitor-exit v2
    :try_end_37
    .catchall {:try_start_b .. :try_end_37} :catchall_38

    return-void

    :catchall_38
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected final i()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->f()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method

.method protected final j()Landroid/os/IInterface;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/youtube/player/internal/r;->i()V

    iget-object v0, p0, Lcom/google/android/youtube/player/internal/r;->c:Landroid/os/IInterface;

    return-object v0
.end method
