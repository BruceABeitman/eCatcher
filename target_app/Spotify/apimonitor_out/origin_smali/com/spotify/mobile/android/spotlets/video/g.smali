.class public final Lcom/spotify/mobile/android/spotlets/video/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/video/h;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Object;

.field private d:Lcom/spotify/mobile/android/service/s;

.field private e:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->b:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->c:Ljava/lang/Object;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/video/g$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/video/g$1;-><init>(Lcom/spotify/mobile/android/spotlets/video/g;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->e:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/g;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/service/s;)Lcom/spotify/mobile/android/service/s;
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/g;->d:Lcom/spotify/mobile/android/service/s;

    return-object p1
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/g;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/video/g;->b(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/video/g;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->b:Ljava/util/List;

    return-object v0
.end method

.method private b(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_2
    const-string v0, "Report event %s, %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->d:Lcom/spotify/mobile/android/service/s;

    invoke-interface {v0, p1, p2}, Lcom/spotify/mobile/android/service/s;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v1, "Failed to send message over"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_15
.end method


# virtual methods
.method final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/g;->e:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/VideoPlayerManagerProxy;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method

.method final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 7

    const/4 v2, 0x0

    const-string v0, "reportVideoPlayerEvent : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->d:Lcom/spotify/mobile/android/service/s;

    if-eqz v0, :cond_13

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/video/g;->b(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V

    :goto_12
    return-void

    :cond_13
    const-string v0, "No binder"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/g;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1d
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->b:Ljava/util/List;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/video/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/spotify/mobile/android/spotlets/video/h;-><init>(Lcom/spotify/mobile/android/spotlets/video/g;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;B)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_2a

    goto :goto_12

    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final close()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/g;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/g;->e:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
