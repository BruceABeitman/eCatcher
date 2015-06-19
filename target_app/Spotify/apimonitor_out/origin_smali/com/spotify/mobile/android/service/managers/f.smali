.class public final Lcom/spotify/mobile/android/service/managers/f;
.super Lcom/spotify/mobile/android/service/t;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/spotify/mobile/android/service/managers/g;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;

.field private final c:Landroid/content/Context;

.field private d:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

.field private e:Lcom/spotify/mobile/android/service/managers/h;


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "Display Video"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->c:Landroid/content/Context;

    const-string v1, "com.spotify.music.service.video.action.player.DISPLAY_VIDEO"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/managers/g;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    .registers 6

    const-string v0, "event reported : %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/service/managers/f;->d:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->a:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    if-ne p1, v0, :cond_2f

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->e:Lcom/spotify/mobile/android/service/managers/h;

    :cond_13
    :goto_13
    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_16
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/managers/g;

    invoke-interface {v0, p2}, Lcom/spotify/mobile/android/service/managers/g;->a(Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;)V
    :try_end_2b
    .catchall {:try_start_16 .. :try_end_2b} :catchall_2c

    goto :goto_1c

    :catchall_2c
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2f
    sget-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;->c:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerEvent;

    if-ne p1, v0, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->e:Lcom/spotify/mobile/android/service/managers/h;

    goto :goto_13

    :cond_36
    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_2c

    return-void
.end method

.method public final a(Z)V
    .registers 4

    if-eqz p1, :cond_10

    const-string v0, "com.spotify.music.service.video.action.player.PAUSE"

    :goto_4
    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->c:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/spotlets/video/BackgroundableVideoService;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_10
    const-string v0, "com.spotify.music.service.video.action.player.PLAY"

    goto :goto_4
.end method

.method public final b()Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->d:Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;

    return-object v0
.end method

.method public final b(Lcom/spotify/mobile/android/service/managers/g;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/service/managers/f;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/spotify/mobile/android/service/managers/f;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_a

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
